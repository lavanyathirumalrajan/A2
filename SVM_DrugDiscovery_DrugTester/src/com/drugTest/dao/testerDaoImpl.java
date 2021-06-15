package com.drugTest.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.drugTest.model.FormulaFile;
import com.drugTest.model.OwnerModel;
import com.drugTest.model.Requestmodel;
import com.drugTest.model.Traineddata;
import com.drugTest.model.testerModel;

public class testerDaoImpl implements testerDao {
	private JdbcTemplate jdbcTemplate;

	public testerDaoImpl(DriverManagerDataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public int testerRegistration(testerModel model) {
		String sql = "insert into drugtester(name,email,username,password,phone,status,ownername)values(?,?,?,?,?,?,?)";

		try {
			int count = jdbcTemplate.update(sql, new Object[] { model.getName(), model.getEmail(), model.getUsername(),
					model.getPassword(), model.getPhone(),model.getStatus(),model.getOwnername() });
			return count;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}

	}

	@Override
	public String testerLogin(testerModel model) {
		String sql = "select email from drugtester where username=? and password=?";
		List<String> list = jdbcTemplate.queryForList(sql, new Object[] { model.getUsername(), model.getPassword() },
				String.class);
		if (list.isEmpty()) {
			return null;
		} else {
			return list.get(0);
		}
	}

	@Override
	public List<OwnerModel> getOwnerList() {
		String sql = "select * from drugowner";
		List<OwnerModel> ownerlist = jdbcTemplate.query(sql, new RowMapper<OwnerModel>() {

			@Override
			public OwnerModel mapRow(ResultSet rs, int row) throws SQLException {
				// TODO Auto-generated method stub
				OwnerModel model = new OwnerModel();

				model.setName(rs.getString("name"));
				model.setEmail(rs.getString("email"));
				model.setUsername(rs.getString("username"));
				model.setLabname(rs.getString("labname"));
				model.setLabcode(rs.getString("labcode"));
				model.setStatus(rs.getString("status"));
				return model;
			}

		});

		return ownerlist;
	}

	@Override
	public List<OwnerModel> getOwnerList(String username) {
		String sql = "select * from drugowner where username=?";
		List<OwnerModel> list = jdbcTemplate.query(sql, new Object[] { username }, new RowMapper<OwnerModel>() {

			@Override
			public OwnerModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				OwnerModel model = new OwnerModel();
				model.setName(rs.getString("name"));
				model.setEmail(rs.getString("email"));
				model.setUsername(rs.getString("username"));
				model.setLabname(rs.getString("labname"));
				model.setLabcode(rs.getString("labcode"));
				model.setStatus(rs.getString("status"));
				return model;
			}

		});
		return list;
	}

	@Override
	public List<FormulaFile> getFileList(String username) {
		String sql = "select * from formula where username=?";
		List<FormulaFile> formulaFiles = jdbcTemplate.query(sql, new Object[] { username },
				new RowMapper<FormulaFile>() {

					@Override
					public FormulaFile mapRow(ResultSet rs, int rowNum) throws SQLException {
						FormulaFile file = new FormulaFile();
						file.setUsername(rs.getString("username"));
						file.setDrugid(rs.getString("drugid"));
						file.setDrugname(rs.getString("drugname"));
						file.setFilename(rs.getString("filename"));
						file.setTrain_svm(rs.getString("train_svm"));
						file.setTrain_nb(rs.getString("train_nb"));
						file.setStatus(rs.getString("status"));

						return file;
					}

				});
		return formulaFiles;
	}

	@Override
	public List<testerModel> getTesterList(String username) {
		String sql = "select * from drugtester where username=?";
		List<testerModel> list = jdbcTemplate.query(sql, new Object[] { username }, new RowMapper<testerModel>() {

			@Override
			public testerModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				testerModel model = new testerModel();
				model.setName(rs.getString("name"));
				model.setEmail(rs.getString("email"));
				model.setUsername(rs.getString("username"));
				model.setStatus(rs.getString("status"));

				return model;
			}

		});
		return list;
	}

	@Override
	public int saveRequest(Requestmodel model) {
		String sql = "insert into request(username,testername,status)values(?,?,?)";
		int counter = jdbcTemplate.update(sql,
				new Object[] { model.getUsername(), model.getTestername(), model.getStatus() });

		return counter;
	}

	@Override
	public int uodateStatus(String username, String status, String testername) {
		String sql = "update drugowner set status=?,testername=? where username='" + username + "'";

		int result = jdbcTemplate.update(sql, new Object[] { status, testername });
		return result;
	}

	@Override
	public List<testerModel> getTester(String username) {
		String sql = "select * from drugtester where username=?";
		List<testerModel> list = jdbcTemplate.query(sql, new Object[] { username }, new RowMapper<testerModel>() {

			@Override
			public testerModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				testerModel model = new testerModel();
				model.setName(rs.getString("name"));
				model.setEmail(rs.getString("email"));
				model.setStatus(rs.getString("status"));
				return model;
			}

		});

		return list;
	}

	@Override
	public int updateStatus(String testername, String status) {
		String sql = "update drugtester set status=? where username='" + testername + "'";
		int result = jdbcTemplate.update(sql, new Object[] { status });
		return result;
	}

	@Override
	public String testerstatus(OwnerModel model) {
		String sql = "select status from drugowner where username=? and testername=?";
		String empty = "empty";
		List<String> list = jdbcTemplate.queryForList(sql, new Object[] { model.getUsername(), model.getTestername() },
				String.class);
		if (list.isEmpty()) {
			return empty;
		} else {
			return list.get(0);
		}
	}

	@Override
	public List<Traineddata> getDataList(String drugname) {
		String sql = "select * from trained_data where drugname=?";
		List<Traineddata> list = jdbcTemplate.query(sql, new Object[] { drugname }, new RowMapper<Traineddata>() {

			@Override
			public Traineddata mapRow(ResultSet rs, int rowNum) throws SQLException {
				Traineddata data = new Traineddata();
				data.setUsername(rs.getString("username"));
				data.setDrugname(rs.getString("drugname"));
				data.setTrain_NB(rs.getString("train_nb"));
				data.setTrain_SVM(rs.getString("train_svm"));
				return data;
			}

		});
		return list;
	}

	@Override
	public int formulaStatus(String drugname, String status) {
		
		String sql = "update formula set status=? where username='" + drugname + "'";

		int result = jdbcTemplate.update(sql, new Object[] { status });
		return result;

	}

	@Override
	public int dataStatus(String drugname, String statuss) {
		String sql = "update trained_data set status=? where username='" + drugname + "'";

		int result = jdbcTemplate.update(sql, new Object[] { statuss });
		return result;
	}

}
