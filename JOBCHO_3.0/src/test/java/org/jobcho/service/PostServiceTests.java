package org.jobcho.service;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.jobcho.domain.Criteria;
import org.jobcho.domain.PostVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class PostServiceTests {
	
	
	@Autowired
	private PostService service;
	
	
	//게시글 등록 테스트 
	@Test
	public void testInsertPost() {
		
		PostVO post = new PostVO();
		post.setPost_title("service 등록");
		post.setPost_contents("service 등록");
		post.setWriter("service");
		
		service.insertPost(post);
		log.info("service 등록번호:" + post.getPost_num());
	}
	
	
//	@Test
//	public void testGetList() {
//		
//		service.getList().forEach(board -> log.info(board));
//	}
	
//	@Test
//	public void testGet() {
//		
//		log.info(service.get(7L));
//	}
	
	
//	@Test
//	public void testGet() {
//		
//		log.info(service.get(7L));
//	}
	
	
//	@Test
//	public void testUpdate() {
//		
//		BoardVO board = service.get(7L);
//		
//		if(board == null) {
//			return;
//		}
//		
//		board.setTitle("제목 수정");
//		log.info("수정 결과:" + service.modify(board));
//	}
	
//	@Test
//	public void testDelete() {
//		
//		log.info("Delete 결과:" + service.remove(8L));
//		
//	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
