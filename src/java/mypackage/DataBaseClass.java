/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypackage;
import java.sql.*;
/**
 *
 * @author SUDHANSHU YADAV
 */
public class DataBaseClass {
    private Connection conn;
    public DataBaseClass() throws ClassNotFoundException,SQLException{
        establishConnection();
    }
    public void establishConnection()throws ClassNotFoundException,SQLException{
     String url="jdbc:mysql://localhost:3306/hospitaljsp?useSSL=false"; //to resolve error coming for ssl sql connection....
     String user="root";
     String password="kashish123";
        Class.forName("com.mysql.jdbc.Driver");
        conn=DriverManager.getConnection(url, user, password);
    }
    public boolean loginValidation(String username,String password) throws SQLException
    {
        PreparedStatement ps=conn.prepareStatement("select * from admin where adminname=? and password=?");
        ps.setString(1,username);
        ps.setString(2, password);
        //ps.executeUpdate();
        ResultSet rs=ps.executeQuery();
        while(rs.next())
        {
            return true;
        }
     return false;   
    }
    public boolean addDoctor(String username,String spec,String con)throws SQLException
    {
      PreparedStatement ps=conn.prepareStatement("insert into doctor(doctorname,specialization,contact) values(?,?,?)");
        ps.setString(1,username);
        ps.setString(2, spec);
        ps.setString(3,con);
       // ps.executeUpdate();
        int c=ps.executeUpdate();
        return c!=0;

    }
   public ResultSet viewDoctor()throws SQLException{
   Statement s=conn.createStatement();
   ResultSet rs=s.executeQuery("select * from doctor");
   System.out.println("class me"+rs);
   return rs;
}
     public void deleteDoctor(String id)throws SQLException{
   PreparedStatement ps=conn.prepareStatement("delete from doctor where doctorid=?");
   ps.setInt(1,Integer.parseInt(id));
   ps.executeUpdate();

   
}
      public boolean addPatient(String patientname,String patientadress,String gender,String contact)throws SQLException
    {
      PreparedStatement ps=conn.prepareStatement("insert into patient(patientname,patientadress,gender,contact) values(?,?,?,?)");
      ps.setString(1,patientname);
      ps.setString(2,patientadress);
      ps.setString(3, gender);
      ps.setString(4, contact);
       // ps.executeUpdate();
        int c=ps.executeUpdate();
        return c!=0;

    }
       public ResultSet viewPatient()throws SQLException{
   Statement s=conn.createStatement();
   ResultSet rs=s.executeQuery("select * from patient");
   System.out.println("class me"+rs);
   return rs;
}
     public void deletePatient(String id)throws SQLException{
   PreparedStatement ps=conn.prepareStatement("delete from patient where patientid=?");
   ps.setInt(1,Integer.parseInt(id));
   ps.executeUpdate();

   
}
        public boolean addAppointment(String patientname,String doctorname,String date,String time)throws SQLException
    {
        System.out.println(patientname+" "+doctorname+" "+date+" "+time);
      PreparedStatement ps=conn.prepareStatement("insert into appointment(doctor,patient,date,time) values(?,?,?,?)");
      ps.setString(1,doctorname);
      ps.setString(2,patientname);
      ps.setString(3,date);
      ps.setString(4,time);
       // ps.executeUpdate();
        int c=ps.executeUpdate();
        return c!=0;

    }
       public ResultSet viewAppointment()throws SQLException{
   Statement s=conn.createStatement();
   ResultSet rs=s.executeQuery("select * from Appointment");
   System.out.println("class me"+rs);
   return rs;
}
     public void deleteAppointment(String id)throws SQLException{
   PreparedStatement ps=conn.prepareStatement("delete from appointment where appointmentid=?");
   ps.setInt(1,Integer.parseInt(id));
   ps.executeUpdate();

   
}
}
