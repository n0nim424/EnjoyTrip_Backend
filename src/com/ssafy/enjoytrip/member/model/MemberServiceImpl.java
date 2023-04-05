package com.ssafy.enjoytrip.member.model;

import java.util.List;

public class MemberServiceImpl implements IMemberService {

	private static  IMemberService mservice=new MemberServiceImpl();
	
	private MemberServiceImpl() {
		mdao=new MemberDaoImpl();
	}
	
	public static IMemberService getInstance() {
		return mservice;
	}
	
	private IMemberDao mdao;
	
	@Override
	public boolean registry(MembersDto dto) {
		return mdao.registry(dto);
	}

	@Override
	public MembersDto login(MembersDto dto) {
		return mdao.login(dto);
	}

	@Override
	public MembersDto findid(String user_name) {
		return mdao.findid(user_name);
	}

	@Override
	public MembersDto findpw(String user_name, String user_id) {
		return mdao.findpw(user_name, user_id);
	}

	@Override
	public List<MembersDto> memberlist() {
		return mdao.memberlist();
	}

	@Override
	public MembersDto member(String user_id) {
		return mdao.member(user_id);
	}

	@Override
	public boolean update(MembersDto membersDto) {
		return mdao.update(membersDto);
	}

	@Override
	public boolean delete(String user_id) {
		return mdao.delete(user_id);
	}

	@Override
	public List<MembersDto> searchlist(String option, String value) {
		return mdao.searchlist(option, value);
	}

}
