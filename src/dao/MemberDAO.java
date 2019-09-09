package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.MemberBean;

public class MemberDAO extends DAO{
	public  List<MemberBean> selectAllMembers() throws SQLException{
		Connection con = getConnection();
		Statement smt = con.createStatement();
		ResultSet rs = smt.executeQuery("select * from webdb.member");

		List<MemberBean> memberList = new ArrayList<>();

		while(rs.next()) {
			MemberBean m = new MemberBean();
			String id = rs.getString("id");
			String name = rs.getString("name");
			m.setId(id);
			m.setName(name);
			memberList.add(m);
		}

		smt.close();
		con.close();
		return memberList;
	}

	public  MemberBean selectMember(String memberId) throws SQLException{
		Connection con = getConnection();
		PreparedStatement st = con.prepareStatement("select * from webdb.member where id = ?");
		st.setString(1, memberId);
		ResultSet rs = st.executeQuery();

		MemberBean memberInfo = new MemberBean();

		while(rs.next()) {
			String id = rs.getString("id");
			String name = rs.getString("name");
			memberInfo.setId(id);
			memberInfo.setName(name);
		}

		st.close();
		con.close();
		return memberInfo;
	}
}
