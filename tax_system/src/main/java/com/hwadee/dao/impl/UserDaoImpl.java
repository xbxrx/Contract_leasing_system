package com.hwadee.dao.impl;


//import com.hwadee.dao.IUserDao;
//import com.hwadee.domain.LoginUser;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.jdbc.core.BeanPropertyRowMapper;
//import org.springframework.jdbc.core.JdbcTemplate;
//import org.springframework.jdbc.core.RowMapper;
//import org.springframework.stereotype.Repository;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//
//@Repository("userDao")
//public class UserDaoImpl implements IUserDao {
//
//    @Autowired
//    private JdbcTemplate jdbcTemplate;
//
//
//    // 通过id查询账户数据信息
//    @Override
//    public LoginUser selectByNameAndPwd(String username, String pwd) {
//        //定义SQL语句
//        String sql ="select * from login_user where username = ? and password= ?";
//
//        // 创建一个新的BeanPropertyRowMapper对象
//        RowMapper<LoginUser> rowMapper =
//                new BeanPropertyRowMapper<LoginUser>(LoginUser.class);
//
//        // 将id绑定到SQL语句中，并通过RowMapper返回一个Object类型的单行记录
//        return this.jdbcTemplate.queryForObject(sql, rowMapper,username,pwd);
//    }


//    public LoginUser selectByNameAndPwd(String name, String pwd) {
//        ResultSet resultSet = null;
//        Connection connection = null;
//        PreparedStatement preparedStatement = null;
//
//        LoginUser loginUser = new LoginUser();
//        try {
//            connection = DBUtil.getConnection();
//            preparedStatement = connection.prepareStatement("select * from login_user where username = ? and password= ?");
//            preparedStatement.setString(1, name);
//            preparedStatement.setString(2, pwd);
//            resultSet = preparedStatement.executeQuery();
//
//            while (resultSet.next()) {
//                loginUser.setName(resultSet.getString("username"));
//                loginUser.setPassword(resultSet.getString("password"));
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            try {
//                DBUtil.closeAll(resultSet, preparedStatement, connection);
//            } catch (SQLException e) {
//                e.printStackTrace();
//            }
////        }
//        return loginUser;
//    }
//}
