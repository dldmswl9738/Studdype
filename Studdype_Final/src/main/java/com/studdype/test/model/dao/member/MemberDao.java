package com.studdype.test.model.dao.member;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import com.studdype.test.model.dto.board.BoardDto;
import com.studdype.test.model.dto.board.BookDto;
import com.studdype.test.model.dto.board.ReplyDto;
import com.studdype.test.model.dto.board.VoteDto;
import com.studdype.test.model.dto.board.MeetDto;
import com.studdype.test.model.dto.member.MemberDto;
import com.studdype.test.model.dto.study.StudyDto;


public interface MemberDao { 
	String NAMESPACE="member.";
	
	
	public MemberDto login(MemberDto dto);//로그인
	public String logout(HttpSession session);//로그아웃
	public String findId(MemberDto dto);	//아이디 찾기
	public int memberInsert(MemberDto dto);//회원가입
	MemberDto selectOne(int mem_no);   //멤버번호로 하나 셀렉트
	String selectNameByNo(int mem_no); //멤버번호로 이름 가져오기
	Map<Integer, String> selectLeaderNameByMainPage(List<StudyDto> studyList); 	//스터디 메인페이지 리스트에 작성자이름 가져오기
	Map<Integer, String> selectWriterByFreeList(List<BoardDto> list); 	  		// 자유 게시판 리스트로 작성자이름 가져오기
	
	// 게시판 리스트로 멤버 정보 map으로 가져오기 ex) ID(이름)/이름(ID)/ID/이름 ...
	Map<Integer, MemberDto> selectMemberByMeetList(List<MeetDto> list);  // [모임게시판]
	Map<Integer, MemberDto> selectMemberByFreeList(List<BoardDto> list); // [자유게시판]
	Map<Integer, MemberDto> selectMemberByPhotoList(List<BoardDto> list);
	Map<Integer, MemberDto> selectWriteByDataList(List<BoardDto> list); // [학습 자료실]
	
	
	// 투표한 사람 리스트로 멤버 정보 map으로 가져오기 ex) ID(이름)/이름(ID)/ID/이름 ...
	Map<Integer, MemberDto> selectAttendMemberList(List<VoteDto> list);  // [모임게시판_투표_참석]
	Map<Integer, MemberDto> selectAbsentMemberList(List<VoteDto> list);  // [모임게시판_투표_불참석]
	
	
	// 게시판 댓글 리스트로 멤버 정보 map으로 가져오기 ex) ID(이름)/이름(ID)/ID/이름 ...
	Map<Integer, MemberDto> selectMemberByFreeReply(List<ReplyDto> replyList); // [자유게시판 댓글]
	Map<Integer, MemberDto> selectMemberByMeetReply(List<ReplyDto> replyList); // [모임게시판 댓글] 
	Map<Integer, MemberDto> selectMemberByBookReply(List<ReplyDto> replyList); // [도서게시판 댓글]
	Map<Integer, MemberDto> selectMemberByPhotoReply(List<ReplyDto> replyList);
	
	//마이페이지 관련 메소드
	public int updateMember(MemberDto dto); // 마이페이지 내정보 수정
	public MemberDto idchk(String mem_id); //마이페이지 아이디 중복체크
	public List<MemberDto> allMember();//멤버 전체리스트 
	public int updatePw(MemberDto dto); // 비밀번호 변경
	public int newemail(MemberDto dto); // 이메일 변경
	public int memberDelete(int mem_no); // 마이페이지 회원 탈퇴
	public int updatephone(MemberDto dto); // 전화번호 변경
	// 도서 관련 메소드
	public Map<Integer, MemberDto> selectWriterByBookList(List<BookDto> bookList); // 도서 게시판 리스트로 작성자 이름 가져오기
	public Map<Integer, MemberDto> getBookWriterName(int mem_no); // 해당 도서 아이디, 이름 찾아오기

	
	 
	
	public MemberDto selectMemberByIdAndEmail(MemberDto dto); //아이디와 이메일로 member가져오기

	public MemberDto sendMail(MemberDto dto );//회원가입 이메일 인증

	public String leaderNameForStudyHome(int leader_no); // [studyHome] 리더 번호로 리더 이름 가져오기
	
	
	
	
	
}
