package com.eatsTime.member.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.eatsTime.Action;
import com.eatsTime.Result;
import com.eatsTime.member.dao.MemberDAO;
import com.eatsTime.member.domain.MemberVO;

public class ModifyController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		Result result = new Result();
		
		JSONObject obj = new JSONObject();
		List<MemberVO> listMap = new ArrayList();
		listMap = memberDAO.selectAll(memberVO);
		try {
			for(int i = 0 ; i < listMap.size(); i++) {
				obj.put("memberIdentification", listMap.get(i).getMemberIdentification().toString());
				obj.put("memberPw", listMap.get(i).getMemberPw().toString());
				obj.put("memberName", listMap.get(i).getMemberName().toString());
				obj.put("memberEmail", listMap.get(i).getMemberEmail().toString());
				obj.put("memberPhoneNumber", listMap.get(i).getMemberPhoneNumber().toString());
				obj.put("memberGender", listMap.get(i).getMemberGender().toString());
				obj.put("memberBirthday", listMap.get(i).getMemberBirthday());
			}
		} catch (JSONException e) {
			e.printStackTrace();
		}
		
		req.setAttribute("obj", obj);
		
		result.setPath("templates/member/withdrawMember.jsp");
		return result;
	}

}