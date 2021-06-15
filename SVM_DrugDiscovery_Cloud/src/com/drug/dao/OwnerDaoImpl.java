package com.drug.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.instrument.classloading.jboss.JBossLoadTimeWeaver;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.lob.DefaultLobHandler;
import org.springframework.jdbc.support.lob.LobHandler;

import com.drug.model.Existing_ds;
import com.drug.model.FormulaFile;
import com.drug.model.OwnerModel;
import com.drug.model.Traineddata;
import com.drug.model.testerModel;

public class OwnerDaoImpl implements OwnerDao {
	private JdbcTemplate jdbcTemplate;

	public OwnerDaoImpl(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);

	}

	@Override
	public int ownerRegister(OwnerModel model) {
		String sql = "insert into drugowner(name,email,username,password,phone,labname,labcode,status,testername)values(?,?,?,?,?,?,?,?,?)";
		try {

			int count = jdbcTemplate.update(sql,
					new Object[] { model.getName(), model.getEmail(), model.getUsername(), model.getPassword(),
							model.getPhone(), model.getLabname(), model.getLabcode(), model.getStatus(),
							model.getTestername() });
			return count;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public String ownerLogin(OwnerModel model) {
		String sql = "select labcode from drugowner where username=? and password=?";
		List<String> list = jdbcTemplate.queryForList(sql, new Object[] { model.getUsername(), model.getPassword() },
				String.class);
		if (list.isEmpty()) {
			return null;
		} else {
			return list.get(0);
		}
	}

	@Override
	public int saveFile(FormulaFile file) {
		String query = "insert into formula(username,labcode,drugname,drugid,date,filename,file,filetype,train_svm,train_nb,status)values(?,?,?,?,?,?,?,?,?,?,?)";
		OwnerDao dao = null;

		int count = jdbcTemplate.update(query,
				new Object[] { file.getUsername(), file.getLabcode(), file.getDrugname(), file.getDrugid(),
						file.getDate(), file.getFilename(), file.getFile(), file.getFiletype(), file.getTrain_svm(),
						file.getTrain_nb(), file.getStatus() });
		return count;
	}

	@Override
	public List<OwnerModel> findbyid(String username) {
		String sql = "select * from drugowner where username=?";
		List<OwnerModel> list = jdbcTemplate.query(sql, new Object[] { username }, new RowMapper<OwnerModel>() {

			@Override
			public OwnerModel mapRow(ResultSet rs, int row) throws SQLException {
				OwnerModel model = new OwnerModel();

				model.setName(rs.getString("name"));
				model.setEmail(rs.getString("email"));
				model.setUsername(rs.getString("username"));
				model.setPassword(rs.getString("password"));
				model.setPhone(rs.getString("phone"));
				model.setLabname(rs.getString("labname"));
				model.setLabcode(rs.getString("labcode"));
				model.setStatus(rs.getString("status"));
				model.setTestername(rs.getString("testername"));
				// TODO Auto-generated method stub
				return model;
			}

		}

		);

		return list;
	}

	@Override
	public List<FormulaFile> findbyname(String username) {
		List<FormulaFile> fileList = jdbcTemplate.query("select * from formula where username=?",
				new Object[] { username }, new RowMapper<FormulaFile>() {
					LobHandler lobHandler = new DefaultLobHandler();

					@Override
					public FormulaFile mapRow(ResultSet rs, int row) throws SQLException {
						// TODO Auto-generated method stub
						FormulaFile formula = new FormulaFile();

						formula.setUsername(rs.getString("username"));
						formula.setLabcode(rs.getString("labcode"));
						formula.setDrugname(rs.getString("drugname"));
						formula.setDrugid(rs.getString("drugid"));
						formula.setDate(rs.getString("date"));
						formula.setFilename(rs.getString("filename"));
						// formula.setFile(rs.getString("file"));
						byte[] requestData = lobHandler.getBlobAsBytes(rs, "file");
						formula.setFile(new String(requestData));

						formula.setFiletype(rs.getString("filetype"));
						row++;

						return formula;
					}

				});
		// TODO Auto-generated method stub
		return fileList;
	}

	@Override
	public int updatePassword(OwnerModel owner) {
		// TODO Auto-generated method stub
		String sql = "update drugowner set password=? where username=?";

		return jdbcTemplate.update(sql, new Object[] { owner.getPassword(), owner.getUsername() });
	}

	@Override
	public int updateUser(OwnerModel model) {
		String sql = "update drugowner set name=?,email=?,password=?,phone=?,password=? labname=?,labcode=? where username=?";
		return jdbcTemplate.update(sql, new Object[] { model.getName(), model.getEmail(), model.getPassword(),
				model.getPhone(), model.getLabname(), model.getLabcode(), model.getUsername() });
	}

	@Override
	public List<testerModel> getTester() {
		List<testerModel> list = jdbcTemplate.query("select * from drugtester", new RowMapper<testerModel>() {

			@Override
			public testerModel mapRow(ResultSet rs, int row) throws SQLException {
				// TODO Auto-generated method stub
				testerModel model = new testerModel();
				model.setId(rs.getInt("id"));
				model.setName(rs.getString("name"));
				model.setEmail(rs.getString("email"));
				model.setUsername(rs.getString("username"));
				model.setPassword(rs.getString("password"));
				model.setPhone(rs.getString("phone"));

				return model;
			}

		});

		return list;
	}

	@Override
	public int delete(String drugid) {
		String sql = "delete from trained_data where drugname=?";
		int count = jdbcTemplate.update(sql, new Object[] { drugid });
		return count;
	}

	@Override
	public List<testerModel> getTester(String username) {
		String sql = "select * from drugtester where username=?";
		List<testerModel> list = jdbcTemplate.query(sql, new Object[] { username }, new RowMapper<testerModel>() {

			@Override
			public testerModel mapRow(ResultSet rs, int row) throws SQLException {
				testerModel model = new testerModel();
				model.setId(rs.getInt("id"));
				model.setName(rs.getString("name"));
				model.setEmail(rs.getString("email"));
				model.setUsername(rs.getString("username"));
				model.setPassword(rs.getString("password"));
				model.setPhone(rs.getString("phone"));

				return model;
			}

		});
		return list;
	}

	@Override
	public int updateOwner(String username, String status) {
		String sql = "update drugowner set status=? where username='" + username + "'";
		int counter = jdbcTemplate.update(sql, new Object[] { status });

		return counter;
	}

	@Override
	public int updateTester(String username, String status) {
		String sql = "update drugtester set status=? where username='" + username + "'";
		int counter = jdbcTemplate.update(sql, new Object[] { status });

		return counter;
	}

	@Override
	public int saveTrainedDate(Traineddata data) {
		String sql = "insert into trained_data(username,drugname,filename,accuracy_nb,accuracy_svm,train_nb,train_svm,status)values(?,?,?,?,?,?,?,?)";
		int count = jdbcTemplate.update(sql,
				new Object[] { data.getUsername(), data.getDrugname(), data.getFilename(), data.getAccuracy_nb(),
						data.getAccuracy_svm(), data.getTrain_NB(), data.getTrain_SVM(), data.getStatus() });
		return count;
	}

	@Override
	public List<Traineddata> finddata(String username) {
		List<Traineddata> fileList = jdbcTemplate.query("select * from trained_data where username=?",
				new Object[] { username }, new RowMapper<Traineddata>() {

					@Override
					public Traineddata mapRow(ResultSet rs, int row) throws SQLException {
						// TODO Auto-generated method stub
						Traineddata formula = new Traineddata();

						formula.setUsername(rs.getString("username"));

						formula.setDrugname(rs.getString("drugname"));

						formula.setFilename(rs.getString("filename"));
						formula.setAccuracy_nb(rs.getString("accuracy_nb"));
						formula.setAccuracy_svm(rs.getString("accuracy_svm"));
						formula.setStatus(rs.getString("status"));

						return formula;
					}

				});
		// TODO Auto-generated method stub
		return fileList;
	}

	@Override
	public List<FormulaFile> getFile() {
		List<FormulaFile> fileList = jdbcTemplate.query("select * from formula ", new RowMapper<FormulaFile>() {

			@Override
			public FormulaFile mapRow(ResultSet rs, int row) throws SQLException {
				// TODO Auto-generated method stub
				FormulaFile formula = new FormulaFile();

				formula.setUsername(rs.getString("username"));
				formula.setLabcode(rs.getString("labcode"));
				formula.setDrugname(rs.getString("drugname"));
				formula.setDrugid(rs.getString("drugid"));
				formula.setDate(rs.getString("date"));
				formula.setFilename(rs.getString("filename"));
				formula.setFile(rs.getString("file"));
				formula.setFiletype(rs.getString("filetype"));
				row++;

				return formula;
			}

		});
		// TODO Auto-generated method stub
		return fileList;
	}

	@Override
	public int saveDs(Existing_ds ds) {
		String sql = "insert into existing_ds (drugname,ingredients,strength,dosageform) values (?,?,?,?)";
		int count = jdbcTemplate.update(sql,
				new Object[] { ds.getDrugname(), ds.getIngredients(), ds.getStrength(), ds.getDosageform() });
		return count;
	}

	@Override
	public List<Existing_ds> getDs() {
		String sql = "select * from existing_ds";
		List<Existing_ds> dslist = jdbcTemplate.query(sql, new RowMapper<Existing_ds>() {

			@Override
			public Existing_ds mapRow(ResultSet rs, int rowNum) throws SQLException {
				Existing_ds eds = new Existing_ds();
				LobHandler lobHandler = new DefaultLobHandler();
				//byte[] drugname = lobHandler.getBlobAsBytes(rs, "drugname");
				byte[] ingredients = lobHandler.getBlobAsBytes(rs, "ingredients");
				byte[] strength = lobHandler.getBlobAsBytes(rs, "strength");
				//byte[] dosageform = lobHandler.getBlobAsBytes(rs, "dosageform");

				eds.setDrugname(rs.getString("drugname"));
				eds.setIngredients(new String(ingredients));
				eds.setStrength(new String(strength));
				eds.setDosageform(rs.getString("dosageform"));

				return eds;
			}

		});
		return dslist;
	}

}
