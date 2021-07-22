package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import utill.DatabaseUtil;

public class UserDAO {
	Connection conn = DatabaseUtil.getConnection();

	public String join(String userID, String userPassword,String userName) {
		String SQL = "INSERT INTO USER VALUES (?,?,?)";
		try {

			PreparedStatement pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, userID);
			pstmt.setString(2, userPassword);
			pstmt.setString(3, userName);

			return pstmt.executeUpdate()+"";
		} catch (Exception e) {
			System.out.println("1111BBBBBBBBBBBB");
			e.printStackTrace();
			System.out.println("22222BBBBBBBBBBBB");
			System.out.println(e.getStackTrace().length + "에러");
			System.out.println(e.getMessage());
			System.out.println("3333333BBBBBBBBBBBBBBBB");
//			for(StackTraceElement item : e.getStackTrace() )
//			{
//				System.out.println(item);
//			}
			return e.getMessage();
		}
		//return -1;
	}
}

//��ó: https://icandooit.tistory.com/104 [i can do "IT"]