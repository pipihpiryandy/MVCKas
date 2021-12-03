/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kasapp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import kasapp.model.DatabaseConfig;
import kasapp.model.Kas;

/**
 *
 * @author piryandyp
 */
public class KasDAOProses implements KasDAO {
    Connection connection = null;
    ResultSet resultSet = null;
    Statement statement = null;
    PreparedStatement preparedStatement = null;
    
    @Override
    public List<Kas> get() {
          List<Kas> list=new ArrayList<Kas>();
        try{
            String sql="SELECT * FROM tbl_kas";
            connection=DatabaseConfig.openConnection();
            statement=connection.createStatement();
            resultSet=statement.executeQuery(sql);
            while(resultSet.next()){
                Kas kas = new Kas();
                kas.setId(resultSet.getInt("id"));
                kas.setTanggal(resultSet.getString("tanggal"));
                kas.setKeterangan(resultSet.getString("keterangan"));
                kas.setDebit(resultSet.getString("debit"));
                kas.setKredit(resultSet.getString("kredit"));
                kas.setSaldo(resultSet.getString("saldo"));
                list.add(kas);
            } 
        }catch(SQLException e){
           e.printStackTrace();
        }
        return list;
    }

    @Override
    public boolean save(Kas kas) {
        boolean flag = false;
        try{
            String sql = "Insert Into tbl_kas(tanggal,keterangan,debit,kredit,saldo)values(?,?,?,?,?)";
            connection=DatabaseConfig.openConnection();
            preparedStatement =connection.prepareStatement(sql);
            preparedStatement.setString(1, kas.getTanggal());
            preparedStatement.setString(2, kas.getKeterangan());
            preparedStatement.setString(3, kas.getDebit());
            preparedStatement.setString(4, kas.getKredit());
            preparedStatement.setString(5, kas.getSaldo());
            preparedStatement.executeUpdate();
            flag=true;    
        }catch (SQLException ex){
            ex.printStackTrace();
        }
        return flag;
    }

    @Override
    public Kas getSinggle(int id) {
         Kas kas=null;
        try{
            String sql="select * from tbl_kas where id=?";
            connection=DatabaseConfig.openConnection();
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            resultSet=preparedStatement.executeQuery();
            while(resultSet.next()){
                kas=new Kas();
                kas.setId(resultSet.getInt("id"));
                kas.setTanggal(resultSet.getString("tanggal"));
                kas.setKeterangan(resultSet.getString("keterangan"));
                kas.setDebit(resultSet.getString("debit"));
                kas.setKredit(resultSet.getString("kredit"));
                kas.setSaldo(resultSet.getString("saldo"));
            }
        }catch(SQLException ex){
            ex.printStackTrace();
        }
        return kas;
    }

    @Override
    public boolean delete(int id) {
         boolean flag=false;
        try{
            String sql="delete from tbl_kas where id=?";
            connection=DatabaseConfig.openConnection();
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setInt(1,id);
            preparedStatement.executeUpdate();
            flag=true;
        }catch(SQLException ex){
           ex.printStackTrace();
        }
        return flag;
    }

    @Override
    public boolean update(Kas kas) {
       boolean flag=false;
        try{
            String sql="update tbl_kas set tanggal=?,keterangan=?,debit=?,kredit=?,saldo=? where id=?";
            connection=DatabaseConfig.openConnection();
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,kas.getTanggal());
            preparedStatement.setString(2,kas.getKeterangan());
            preparedStatement.setString(3,kas.getDebit());
            preparedStatement.setString(4,kas.getKredit());
            preparedStatement.setString(5,kas.getSaldo());
            preparedStatement.setInt(6,kas.getId());
            preparedStatement.executeUpdate();
            flag=true;
        }catch(SQLException ex){
            ex.printStackTrace();
        }
        return flag;
    }     
}
