package Finalexam2;
import java.util.ArrayList;
import Finalexam2.exam2DTO;
import java.sql.*;
//임중규
public class exam2DAO {
	Connection conn = null;
    Statement st = null;
    ResultSet rs = null;
    String sql = null;
    int cnt=0;
    String name = null;
    int num = 0;
    public exam2DAO() {
    	try{
    		Class.forName("oracle.jdbc.driver.OracleDriver");	
    		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
    		System.out.print("연결되었습니다.!!!");
    		st = conn.createStatement();
    		st.executeUpdate("create table exam2 (name varchar2(50),num number(20)");
    		}catch (Exception e){
    		System.out.print(e);
    		}
    	try{
			rs= st.executeQuery("select * from exam2 where name = '" +name+"'");
			if(!(rs.next())){
				sql="insert into members(id,pw)";
				sql= sql + "values('"+name+"','"+num+"')";
				
				cnt = st.executeUpdate(sql);
				if(cnt>0)
					System.out.println("데이터가 성공적으로 입력되었습니다.");
				else
					System.out.println("데이터가 입력되지 않았습니다.");
			}else
				System.out.println("id가 이미 등록되어 있습니다");
			st.close();
			conn.close();
			rs.close();
		}catch(SQLException c){
			System.out.print(c.getMessage());
		}
    	
    
    }


 }
