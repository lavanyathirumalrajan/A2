package com.drug.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.Scanner;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.drug.dao.OwnerDao;
import com.drug.model.Existing_ds;
import com.drug.model.FormulaFile;
import com.drug.model.Traineddata;

@Controller
@PropertySource("classpath:application.properties")
public class DrugController {
	@Autowired
	private OwnerDao dao;
	@Value("${db.path}")
	private String pathname;
	@Value("${sdb.path}")
	private String spathname;

	@SuppressWarnings({ "unlikely-arg-type", "unused" })
	@RequestMapping(value = "/drugUpload", method = RequestMethod.POST)
	public ModelAndView drugFile(ModelAndView model, @RequestParam CommonsMultipartFile file, HttpSession session,
			@RequestParam("username") String username, @RequestParam("labcode") String labcode,
			@RequestParam("date") String date, @RequestParam("drugname") String drugname,
			@RequestParam("drugid") String drugid) throws Exception {

		String filename = file.getOriginalFilename();
		byte bytes[] = file.getBytes();
		String fileData = new String(bytes);
		String filetype = file.getContentType();
		FormulaFile formula = new FormulaFile();
		String statuss = "Nope";
		formula.setUsername(username);
		formula.setLabcode(labcode);
		formula.setDrugname(drugname);
		formula.setDrugid(drugid);
		formula.setDate(date);
		formula.setFilename(filename);
		formula.setFile(fileData);
		formula.setFiletype(filetype);
		formula.setStatus(statuss);

		List<Existing_ds> dslist = dao.getDs();
		for (Existing_ds existing_ds : dslist) {

			// if(existing_ds.getIngredients().equalsIgnoreCase())

		}

		File file1 = new File(pathname + filename);
		OutputStream out = new FileOutputStream(file1);
		// Write your data
		out.write(bytes);
		out.close();

		// ----------------SVM-------------------------//
		Traineddata data = new Traineddata();
		String path = pathname + filename;
		PythonCall pc = new PythonCall();
		List<String> respo = pc.executeMultiPartRequest("http://localhost:5001/register", path);
		String res = respo.toString();
		JSONArray jarray = (JSONArray) new JSONParser().parse(res);
		JSONObject obj = (JSONObject) jarray.get(0);
		String status = String.valueOf(obj.get("status"));
		String accuracy_nb = String.valueOf(obj.get("Accuracy_NB"));
		String Accuracy_SVM = String.valueOf(obj.get("Accuracy_SVM"));
		String Train_SVM = String.valueOf(obj.get("Train_SVM"));
		String Train_NB = String.valueOf(obj.get("Train_NB"));
		data.setUsername(username);
		data.setDrugname(drugname);
		data.setFilename(filename);
		data.setAccuracy_svm(Accuracy_SVM);
		data.setAccuracy_nb(accuracy_nb);
		data.setStatus(status);

		// --------------------------Read SVM ,NB Text files-----------------------//

		try {
			File myObj = new File(Train_NB);
			Scanner myReader = new Scanner(myObj);
			while (myReader.hasNextLine()) {
				String data1 = myReader.nextLine();
				data.setTrain_NB(data1);
				formula.setTrain_nb(data1);

			}
			myReader.close();
		} catch (FileNotFoundException e) {
			System.out.println("An error occurred.");
			e.printStackTrace();
		}

		try {
			File myObj = new File(Train_SVM);
			Scanner myReader = new Scanner(myObj);
			while (myReader.hasNextLine()) {
				String data1 = myReader.nextLine();

				data.setTrain_SVM(data1);
				formula.setTrain_svm(data1);

			}
			myReader.close();
		} catch (FileNotFoundException e) {
			System.out.println("An error occurred.");
			e.printStackTrace();
		}

		// -----------------------------------------//

		List<FormulaFile> flist = dao.getFile();
		if (flist.isEmpty()) {
			int counter = dao.saveFile(formula);
			int count = dao.saveTrainedDate(data);

			if (counter > 0) {
				// ---------------Update Data in formula table-------------------//

				model.addObject("msg", username);
				model.addObject("msg1", labcode);

				model.setViewName("formula");

			} else {
				model.addObject("msg", "failure");
				model.setViewName("formula");
			}

		} else {
			for (FormulaFile formulaFile : flist) {

				String ffilename = formulaFile.getFilename();
				String fdrugname = formulaFile.getDrugname();
				String fdrugid = formulaFile.getDrugid();
				String ffilecontent = formulaFile.getFile();

				if (ffilename.equals(filename) || fdrugid.equals(drugid) || ffilecontent.equals(fileData)) {
					model.setViewName("formula");
					model.addObject("alert", "File Already Exist");

				} else {
					int counter = dao.saveFile(formula);
					int count = dao.saveTrainedDate(data);

					if (counter > 0) {
						// ---------------Update Data in formula table-------------------//

						model.addObject("msg", username);
						model.addObject("msg1", labcode);

						model.setViewName("formula");

					} else {
						model.addObject("msg", "failure");
						model.setViewName("formula");
					}
				}
			}
		}

		return model;
	}

	@RequestMapping(value = "/findFile/downloadFile/{filename}", method = RequestMethod.GET)
	public ModelAndView fileDownload(@PathVariable("filename") String name, HttpServletResponse response)
			throws IOException {
		ModelAndView model = new ModelAndView();
		String filename = name + ".csv";

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		response.setContentType("APPLICATION/OCTET-STREAM");
		response.setHeader("Content-Disposition", "attachment;fileName=\"" + filename + "\"");
		int i;
		FileInputStream file = new FileInputStream(pathname + filename);
		while ((i = file.read()) != -1) {
			out.write(i);
		}
		file.close();
		out.close();
		model.setViewName("druglist");

		return model;
	}

	@RequestMapping(value = "/findFile/delete/{drugname}/{username}", method = RequestMethod.GET)
	public ModelAndView fileDelete(@PathVariable("drugname") String id, @PathVariable("username") String username) {
		ModelAndView model = new ModelAndView();
		model.setViewName("druglist");
		int counter = dao.delete(id);
		if (counter != 0) {
			List<FormulaFile> fileList = dao.findbyname(username);
			for (FormulaFile formulaFile : fileList) {
				System.out.println(formulaFile.getDrugname());

			}
			if (fileList != null) {
				model.addObject("msg", fileList);
				model.setViewName("druglist");

			} else {
				model.addObject("msg", "failed");
				model.setViewName("formula");

			}

		}

		return model;

	}

	@RequestMapping(value = "findFile/fullDetails/FullDrugDetails", method = RequestMethod.POST)
	public ModelAndView full(ModelAndView model, @RequestParam("drugname") String drugname,
			@RequestParam("ingredients") String ingredients, @RequestParam("strength") String strength,
			@RequestParam("dosageform") String dosageform) {
		Existing_ds ds = new Existing_ds();
		ds.setDrugname(drugname);
		ds.setIngredients(ingredients);
		ds.setStrength(strength);
		ds.setDosageform(dosageform);

		int counter = dao.saveDs(ds);

		if (counter > 0) {
			System.out.println("----------");
			model.addObject("drugname", drugname);
			model.addObject("alert", "Details added successfully");
			model.setViewName("fullDetails");
		}

		return model;
	}

	@RequestMapping(value = "findFile/fullDetails/{drugname}", method = RequestMethod.GET)
	public ModelAndView fullDrug(ModelAndView model, @PathVariable String drugname) {
		
		model.addObject("drugname", drugname);
		model.setViewName("fullDetails");
		
		return model;
	}

}
