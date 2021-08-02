package com.hwadee.utils;

import java.io.UnsupportedEncodingException;
import java.sql.*;

public class DBUtil {

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/cqyddx?useSSL=false&useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC", "root", "root");
        return connection;
    }

    public static void closeAll(ResultSet rs, Statement statement, Connection connection) throws SQLException {
        if (rs != null) {
            rs.close();
        }
        if (statement != null) {
            statement.close();
        }
        if (connection != null) {
            connection.close();
        }
    }

    public static Statement statementTest(Connection conn) throws SQLException, ClassNotFoundException, UnsupportedEncodingException {
        Connection connection=null;
        Statement statement=null;

        connection=conn;
        statement=connection.createStatement();
        //需要在自己的数据库当中建立一张user表
        String sql="insert into user_info(user_id, user_name, user_sex, user_age, user_address, user_postcode, user_phone) " +
                " values ('1010101014', 'Jame' , 'man',19,'chengdu','611740','18989987876');";
        statement.executeUpdate(sql);
        return statement;
    }

    public static PreparedStatement preparedStatementTest(Connection conn) throws SQLException, ClassNotFoundException {
        Connection connection=null;
        PreparedStatement pStatement=null;

        connection=conn;
        String sql="insert into user_info(user_id, user_name, user_sex, user_age, user_address, user_postcode, user_phone) " +
                "values (?, ?, ?, ?, ?, ?, ?);";
        //预编译
        pStatement=connection.prepareStatement(sql);
        //前面的索引对应上面的问号,传递参数。
        pStatement.setString(1,"1010101015");
        pStatement.setString(2,"Lily");
        pStatement.setString(3,"F");
        pStatement.setInt(4,23);
        pStatement.setString(5,"chongqing");
        pStatement.setString(6,"101010");
        pStatement.setString(7,"18882654698");
        pStatement.executeUpdate();
        return pStatement;
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException, UnsupportedEncodingException {
        Connection conn = DBUtil.getConnection();
        Statement stm = conn.createStatement();
//        ResultSet rs = stm.executeQuery("select * from user_info");
//        while(rs.next()){
//            int id = rs.getInt(1);
//            System.out.println(id);
//        }
        //        Statement stm = DBUtil.statementTest(conn);
//       Statement stm = DBUtil.preparedStatementTest(conn);
//        DBUtil.closeAll(null, stm, conn);
        stm.executeUpdate("insert into user values ('张','2','2');");
        stm.close();
        conn.close();


    }
}

