package com.stackroute.dao;

import com.stackroute.model.Emp;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class EmpDAO {
    JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    public int save(Emp p) {
        String sql = "insert into employee(id,name,age,gender) values('" + p.getName() + "'," + p.getName() + "'," + p.getAge() + ",'" + p.getGender() + "')";
        return template.update(sql);
    }

    public int update(Emp p) {
        String sql = "update employee set id='" + p.getId() + "', name='" + p.getName() + "', age='" + p.getAge() + "',gender='" + p.getGender() + "' where id=" + p.getId() + "";
        return template.update(sql);
    }

    public int delete(int id) {
        String sql = "delete from employee where id=" + id + "";
        return template.update(sql);
    }

    public Emp getEmpById(int id) {
        String sql = "select * from employee where id=?";
        return template.queryForObject(sql,new Object[]{id},new BeanPropertyRowMapper<Emp>(Emp.class));
    }

    public List<Emp> getEmployees() {
        return template.query("select * from employee",new RowMapper<Emp>() {
            public Emp mapRow(ResultSet rs,int row) throws SQLException {
                Emp e = new Emp();
                e.setId(rs.getInt(1));
                e.setName(rs.getString(2));
                e.setAge(rs.getInt(3));
                e.setGender(rs.getString(4));
                return e;
            }
        });

    }
}
