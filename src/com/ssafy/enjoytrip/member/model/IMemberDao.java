package com.ssafy.enjoytrip.member.model;

import java.util.List;

public interface IMemberDao {
	boolean registry(MembersDto dto);
	MembersDto login(MembersDto dto);
	MembersDto findid(String user_name);
	MembersDto findpw(String user_name, String user_id);
	List<MembersDto> memberlist();
	MembersDto member(String user_id);
	boolean update(MembersDto membersDto);
	boolean delete(String user_id);
	List<MembersDto> searchlist(String option, String value);
}
