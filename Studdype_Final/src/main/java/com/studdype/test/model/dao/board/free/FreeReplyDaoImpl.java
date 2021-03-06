package com.studdype.test.model.dao.board.free;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.studdype.test.model.dto.board.BoardDto;
import com.studdype.test.model.dto.board.ReplyDto;

@Repository
public class FreeReplyDaoImpl implements FreeReplyDao{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<ReplyDto> selectReplyList(int b_no) {
		List<ReplyDto> list = null;
		
		try {
			list = sqlSession.selectList(NAMESPACE+"selectReplyList", b_no);
		} catch (Exception e) {
			System.out.println("[ERROR]: selectReplyList");
			e.printStackTrace();
		}
		
		return list;
	}

	//댓글 가져오기
	@Override
	public ReplyDto selectOne(int r_no) {
		ReplyDto reply = null;
		
		try {
			reply = sqlSession.selectOne(NAMESPACE+"selectOne", r_no);
		} catch (Exception e) {
			System.out.println("[ERROR]: selectOne");
			e.printStackTrace();
		}
		return reply;
	}

	//댓글이 부모댓글이면 r_class -> -1로변경   UPDATE
	@Override
	public int deleteParentReply(int r_no) {
		int res = 0;
		
		try {
			res = sqlSession.update(NAMESPACE+"deleteParentReply", r_no);
		} catch (Exception e) {
			System.out.println("[ERROR]: deleteParentReply");
			e.printStackTrace();
		}
		return res;
	}

	//댓글 삭제
	@Override
	public int deleteReply(int r_no) {
		int res = 0;
		
		try {
			res = sqlSession.delete(NAMESPACE+"deleteReply", r_no);
		} catch (Exception e) {
			System.out.println("[ERROR]: deleteReply");
			e.printStackTrace();
		}
		return res;
	}

	//그룹번호로 댓글리스트 뽑기
	@Override
	public List<ReplyDto> selectGroupReplyList(int r_groupno) {
		List<ReplyDto> resList = null;
		
		try {
			resList = sqlSession.selectList(NAMESPACE+"selectGroupReplyList", r_groupno);
		} catch (Exception e) {
			System.out.println("[ERROR]: selectGroupReplyList");
			e.printStackTrace();
		}
		return resList;
	}

	//댓글 쓰기
	@Override
	public int insertReply(ReplyDto dto) {
		int res = 0 ;
		
		try {
			res = sqlSession.insert(NAMESPACE+"insertReply", dto);
		} catch (Exception e) {
			System.out.println("[ERROR]: insertReply");
			e.printStackTrace();
		}
		return res;
	}

	//댓글 수정
	@Override
	public int updateReply(ReplyDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.update(NAMESPACE+"updateReply", dto);
		} catch (Exception e) {
			System.out.println("[ERROR]: updateReply!!!");
			e.printStackTrace();
		}
		
		return res;
	}

	//댓글 답글 쓰기
	@Override
	public int insertRecomment(ReplyDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE+"insertRecomment", dto);
		} catch (Exception e) {
			System.out.println("[ERROR]: insertRecomment");
			e.printStackTrace();
		}
		return res;
	}

	//게시글 리스트로 댓글 갯수 가져오기
	@Override
	public Map<Integer, Integer> selectReplyCnt(List<BoardDto> list) {
		Map<Integer, Integer> cntList = new HashMap<Integer, Integer>();
		
		
		for(int i = 0 ; i < list.size() ; i++) {
			int cnt = sqlSession.selectOne(NAMESPACE+"selectReplyCnt", list.get(i).getB_no());
			cntList.put(list.get(i).getB_no(), cnt);
		}
		
		return cntList;
	}

}
