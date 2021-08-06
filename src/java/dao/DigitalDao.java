/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Digital;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Vuong Van Truong
 */
public class DigitalDao {
    Connection cnn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public Digital getTop1() {
        String query = "select top 1*\n"
                + "from Digital\n"
                + "where timePost = ( select max(timePost) from Digital)";
        try {
            cnn = new DBContext().getConnection();
            ps = cnn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Digital(rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getString("image"),
                        rs.getString("author"),
                        rs.getDate("timePost"),
                        rs.getString("shortDes"));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public  List<Digital> getTop5(){
        List<Digital> ld = new ArrayList<>();
        try {
            String query = "select top 5.* from Digital\n"
                    + "where timePost not in ( select Max(timePost) from Digital)\n"
                    + "order by timePost desc";
            cnn = new DBContext().getConnection();
            ps = cnn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {                
                ld.add(new Digital(rs.getInt("id"), rs.getString("title"),
                        rs.getString("description"), rs.getString("image"), rs.getString("author"), rs.getDate("timePost"), rs.getString("shortDes")));
            }
        } catch (Exception e) {
            
        }
        return ld;
    }
    public int count(String txt) {
        try {
              String query = "select count(*) from digital \n"
                    + "where title like ?";
            cnn = new DBContext().getConnection();
            ps = cnn.prepareStatement(query);
            ps.setString(1, "%"+ txt + "%");
            rs = ps.executeQuery();
            while (rs.next()) {                
                return  rs.getInt(1);
            }
        } catch (Exception e) {
            
        }
        return 0;
    }
    public List<Digital> search(String txt , int index){
        List<Digital> ld = new ArrayList<>();
        try {
            String query = "Select * from (select Row_Number() over (order by id) as rownum,\n"
                    + "* from Digital where title like ?)[table]\n"
                    + "where rownum between  ? and ? ";
            cnn = new DBContext().getConnection();
            ps = cnn.prepareStatement(query);
            ps.setString(1, "%" +txt + "%");
            ps.setInt(2, index*3 - 2);
            ps.setInt(3, index*3);
            rs = ps.executeQuery();
            while (rs.next()) {                
                ld.add(new Digital(rs.getInt("id"), rs.getString("title"), rs.getString("description"), 
                        rs.getString("image"), rs.getString("author"), rs.getDate("timePost"), rs.getString("shortDes")));
            }
        } catch (Exception e) {
        }
        return ld;
    }
    public Digital getOne(int id){
        String query ="select * from digital where id = ?";
        try {
            cnn = new DBContext().getConnection();
            ps =cnn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {                
                    return new Digital(rs.getInt("id"),rs.getString("title"), rs.getString("description"),
                        rs.getString("image"), rs.getString("author"), rs.getDate("timePost"),rs.getString("shortDes")); 
            }
        } catch (Exception e) {
        }
        return null;
    }
    public static void main(String[] args) {
       DigitalDao dap = new DigitalDao();
       Digital d = dap.getTop1();
        System.out.println(d);
    }
      public static String setupTitile(String title,String txtSearch){
        String firstLetter = txtSearch.substring(0, 1);
        String remainingLetters = txtSearch.substring(1, txtSearch.length());
        String upFirstTxtSearch = firstLetter.toUpperCase() +remainingLetters;
        String stReplace1 = "<span class=\"active\">"+txtSearch+"</span>";
        String stReplace2 = "<span class=\"active\">"+upFirstTxtSearch+"</span>";
        title = title.replaceAll(txtSearch, stReplace1);
        title = title.replaceAll(upFirstTxtSearch, stReplace2);
        return title;
     }
}
