package org.jobcho.mapper;



import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.util.List;

import org.jobcho.domain.BoardVO;
import org.jobcho.domain.Criteria;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class PostMapperTests {
	
	@Autowired
	private BoardMapper mapper;

	
	//게시판 목록 테스트
	@Test
	public void testGetListBoard() {
		
		List<BoardVO> list = mapper.getListBoard(1);
		
		list.forEach(board -> log.info(board.getBoard_num()));
	}
	
	
}
