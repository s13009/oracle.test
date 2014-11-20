import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.util.Scanner;

public class Select1 {
	Scanner stdIn = new Scanner(System.in);
	private String _user = "s13009";
	private String _pass = "password";
	private String _host = "172.16.40.4";
	private String _sid = "db11";
	
	public static void main(String[] args){

		Select1 sample  = new Select1();
		try {
			sample.select1();
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	private void select1() throws Exception{
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		PreparedStatement ps = null;
		boolean Exists = false;
		boolean SubordinateExists = false;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@" + _host + ":1521:" + _sid, _user, _pass);


			st = conn.createStatement();

			ps = conn.prepareStatement("select e.empno, e.ename, e.job, m.ename, dname, loc, e.sal, s.grade from employees e left outer join employees m on e.mgr = m.empno join departments d on e.deptno = d.deptno join salgrades s ON e.sal BETWEEN s.losal AND s.hisal");

			rs = ps.executeQuery();

			while(rs.next()){
				Exists = true;
				String e_empno = rs.getString(1);
				String e_ename = rs.getString(2);
				String e_job = rs.getString(3);
				String m_ename = rs.getString(4);
				String d_dname = rs.getString(5);
				String d_loc = rs.getString(6);
				String e_sal = rs.getString(7);
				String s_grade = rs.getString(8);

				System.out.printf("社員番号： %s\t社員名： %s\t職種: %s\t上司の名前:  %s\t部署名:  %s\t場所:  %s\t給与:  %s\t給与等級:  %s\n", e_empno, e_ename, e_job, m_ename, d_dname, d_loc, e_sal, s_grade);
		}

		System.out.print("社員番号：");
		 	int empno = stdIn.nextInt();
			
	

			ps = conn.prepareStatement("select e.empno, e.ename, e.job, m.ename, dname, loc, e.sal, s.grade from employees e left outer join employees m on e.mgr = m.empno join departments d on e.deptno = d.deptno join salgrades s on e.sal BETWEEN s.losal and s.hisal where e.empno = ?");			
			
			ps.setInt(1, empno);
			rs = ps.executeQuery();		


			while(rs.next()) {
				String e_empno = rs.getString(1);
				String e_ename = rs.getString(2);
				String e_job = rs.getString(3);
				String m_ename = rs.getString(4);
				String d_dname = rs.getString(5);
				String d_loc = rs.getString(6);
				String e_sal = rs.getString(7);
				String s_grade = rs.getString(8);

				System.out.printf("社員番号： %s\t社員名： %s\t職種: %s\t上司の名前:  %s\t部署名:  %s\t場所:  %s\t給与:  %s\t給与等級:  %s\n", e_empno, e_ename, e_job, m_ename, d_dname, d_loc, e_sal, s_grade);
		}


		 ps = conn.prepareStatement("select e.empno, e.ename, e.job, dname, loc, e.sal, s.grade from employees e join departments d on e.deptno = d.deptno join salgrades s on e.sal BETWEEN s.losal and s.hisal where e.mgr = ?");


				ps.setInt(1, empno);
				rs = ps.executeQuery();

				System.out.println("部下");	
				while(rs.next()) {
					SubordinateExists = true;
					String e_empno = rs.getString(1);
					String e_ename = rs.getString(2);
					String e_job = rs.getString(3);
					String d_dname = rs.getString(4);
					String d_loc = rs.getString(5);
					String e_sal = rs.getString(6);
					String s_grade = rs.getString(7);

					System.out.printf("社員番号:  %s\t社員名:  %s\t職種:  %s\t   部署名:  %s\t場所:  %s\t給与:  %\t給与等級:  %s\n",e_empno, e_ename, e_job, d_dname, d_loc, e_sal, s_grade);
		}
		
		if(Exists && !SubordinateExists) {
			System.out.println("部下はいません");
	
		}

		}catch(ClassNotFoundException e){
			throw e;
		}catch(SQLException e){
			throw e;
		}catch(Exception e){
			throw e;
		}finally{
			if(conn != null){
				conn.close();
			}
			if(st != null){
				st.close();
				st = null;
			}
			if(rs != null){
				rs.close();
				rs = null;
			}
		}
	}
}
