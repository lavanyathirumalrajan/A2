package com.gts.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.gts.model.Traineddata;

public class AdminDao_Impl implements AdminDao {
	private JdbcTemplate template;

	public AdminDao_Impl(DriverManagerDataSource dataSource) {
		this.template=new JdbcTemplate(dataSource);
	}

	@Override
	public List<Traineddata> getAlldata() {
		String sql="select * from trained_data";
		List<Traineddata> list=template.query(sql, new RowMapper<Traineddata>() {

			@Override
			public Traineddata mapRow(ResultSet rs, int rowNum) throws SQLException {
				Traineddata data=new Traineddata();
				data.setUsername(rs.getString("username"));
				data.setDrugname(rs.getString("drugname"));
				data.setFilename(rs.getString("filename"));
				data.setAccuracy_nb(rs.getString("accuracy_nb"));
				
				data.setAccuracy_svm(rs.getString("accuracy_svm"));
				data.setStatus(rs.getString("status"));
				return data;
			}
			
		});
		return list;
	}

	@Override
	public int accept(String drugname, String status) {
		String sql="update trained_data set status=? where drugname='"+drugname+"'";
		int result=template.update(sql, status);
		return result;
	}

	@Override
	public int decline(String drugname, String status) {
		String sql="update trained_data set status=? where drugname='"+drugname+"'";
		int result=template.update(sql, status);
		return result;
	}

	@Override
	public int ok(String drugname, String status) {
		String sql="update formula set status=? where drugname='"+drugname+"'";
		int result=template.update(sql, status);
		return result;
	}

	@Override
	public int notok(String drugname, String status) {
		String sql="update formula set status=? where drugname='"+drugname+"'";
		int result=template.update(sql, status);
		return result;
	}

}
