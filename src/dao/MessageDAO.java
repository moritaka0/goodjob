package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.MessageBean;
import bean.ResultBean;

public class MessageDAO extends DAO{

	public int insertMessage(String fromId, String toId, String regMonth,String message, String cardType) throws SQLException{

		Connection con = getConnection();
		PreparedStatement st = con.prepareStatement("insert into webdb.message values(?,?,?,?,?)");
		st.setString(1, fromId);
		st.setString(2, toId);
		st.setString(3, regMonth);
		st.setString(4, message);
		st.setString(5, cardType);

		int line = st.executeUpdate();
		st.close();
		con.close();

		return line;
	}

	public  List<MessageBean> selectMessageList(String targetMonth) throws SQLException{
		Connection con = getConnection();
		PreparedStatement st = con.prepareStatement("select from_id, from_name, to_id, b.name as to_name, message, reg_month, card_type from \n" +
				"(select from_id,name as from_name, to_id,message, reg_month, card_type from webdb.message, webdb.member where reg_month = ? and from_id = id) a inner join webdb.member b on b.id = a.to_id");
		st.setString(1, targetMonth);
		ResultSet rs = st.executeQuery();

		List<MessageBean> messageList = new ArrayList<>();

		while(rs.next()) {
			MessageBean m = new MessageBean();
			String fromId = rs.getString("from_id");
			String fromName = rs.getString("from_name");
			String toId = rs.getString("to_id");
			String toName = rs.getString("to_name");
			String regMonth = rs.getString("reg_month");
			String message = rs.getString("message");
			String cardType = rs.getString("card_type");

			m.setFromId(fromId);
			m.setFromName(fromName);
			m.setToId(toId);
			m.setToName(toName);
			m.setRegMonth(regMonth);
			m.setMessage(message);
			m.setcardType(cardType);
			messageList.add(m);
		}

		st.close();
		con.close();
		return messageList;
	}

	public  List<ResultBean> selectResultList(String targetMonth) throws SQLException{
		Connection con = getConnection();
		PreparedStatement st = con.prepareStatement("select to_id, name, count(to_id) as count, reg_month from webdb.message, webdb.member where reg_month = ? and to_id = id group by to_id order by count DESC;");
		st.setString(1, targetMonth);
		ResultSet rs = st.executeQuery();

		List<ResultBean> resultList = new ArrayList<>();

		while(rs.next()) {
			ResultBean r = new ResultBean();
			String id = rs.getString("to_id");
			String name = rs.getString("name");
			String regMonth = rs.getString("reg_month");
			int count = rs.getInt("count");

			r.setId(id);
			r.setName(name);
			r.setCount(count);
			r.setRegMonth(regMonth);
			resultList.add(r);
		}

		st.close();
		con.close();
		return resultList;
	}
}
