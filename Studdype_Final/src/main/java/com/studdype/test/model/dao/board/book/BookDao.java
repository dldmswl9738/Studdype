package com.studdype.test.model.dao.board.book;

import java.util.List;
import java.util.Map;

import com.studdype.test.model.dto.board.BookDto;
import com.studdype.test.model.dto.study.StudyDto;

public interface BookDao {
	String NAMESPACE="book.";
	
	public int selectTotalRegisterBookNum(int s_no); // 등록된 도서 총 개수
	public List<BookDto> selectSearchBookList(int s_no);	// 화면에 보여줄 해당 페이지 도서 리스트
	public BookDto selectOneBook(BookDto dto);	// 해당 도서 선택

	public List<BookDto> bookList(int s_no); // 마이페이지 스터디 관리 접근시 booklist
	public int deletebookmain(); // 스터디관리 대표도서 변경시 대표도서 없애기
	public int bookmain(int b_no); // 대표도서 변경 메소드
	

	public int insertRegisterBook(BookDto dto);	// 작성한 도서 정보 insert
	public int deleteBook(BookDto dto); // 도서 게시글 삭제
	public int bookBoardUpdateBook(BookDto dto);	// 도서 게시글 수정
	public BookDto selectMainBookOfStudy(int s_no);	// 스터디 메인도서 가져오기
	public List<BookDto> selectMainBookByStudy(List<StudyDto> study);	// 스터디 번호 리스트로 대표 도서 정보 가져오기
}
