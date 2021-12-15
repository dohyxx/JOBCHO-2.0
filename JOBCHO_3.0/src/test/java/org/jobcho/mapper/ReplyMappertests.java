package org.jobcho.mapper;

import static org.junit.Assert.*;

import java.util.List;
import java.util.stream.IntStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.jobcho.domain.Criteria;
import org.jobcho.domain.ReplyVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReplyMappertests {

	@Autowired
	private ReplyMapper mapper;
	

	// 댓글 등록 테스트
	public void testInsertReply() {

		ReplyVO vo = new ReplyVO();

		// 게시물 번호
		vo.setPost_num(21);
		vo.setReply_contents("12월 14일 테스트");
		vo.setReply_writer("권도현");

		log.info(vo);

		mapper.insertReply(vo);
	}

	// 특정 댓글 조회 테스트
	@Test
	public void testGetReply() {

		int replyNum = 5;

		ReplyVO vo = mapper.getReply(replyNum);

		log.info(vo);
	}

	
	// 댓글 삭제 테스트
	@Test
	public void testDeleteReply() {

		int replyNum = 5;

		mapper.deleteReply(replyNum);
	}

	
	// 댓글 수정 테스트
	@Test
	public void testUpdateReply() {
		
		int replyNum = 5;
		ReplyVO vo  = mapper.getReply(replyNum);
		
		vo.setReply_contents("댓글 수정");
		
		int count = mapper.updateReply(vo);
		
		log.info("UPDATE COUNT: "+ count);
	
	}
	
	
	// 특정 게시물의 댓글 목록
	@Test
	public void testList() {
		
		int reply_num = 5;
		
		List<ReplyVO> replies = mapper.getListReply(reply_num);
		
		replies.forEach(reply -> log.info(reply));
	}

	
}
