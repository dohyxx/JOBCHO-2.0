package org.jobcho.controller;

import static org.junit.Assert.*;

import org.aspectj.lang.annotation.Before;
import org.jobcho.service.PostServiceTests;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.extern.log4j.Log4j;


@RunWith(SpringJUnit4ClassRunner.class)

//Test for Controller
@WebAppConfiguration
@ContextConfiguration({
		"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appservlet/servlet-context.xml"})
@Log4j
public class PostControllerTests {

	@Autowired
	private WebApplicationContext ctx; //스프링 컨테이너 사용
	private MockMvc mockMvc; // 가상 WAS(톰캣)
	
	@org.junit.Before 
	public void setup() { //테스트를 수행하기전에 먼저 실행된다.
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	//게시글 목록 테스트
	@Test
	public void testGetListPost() throws Exception {
		
		log.info(
				mockMvc.perform(MockMvcRequestBuilders.get("/post/list"))
					.andReturn()
					.getModelAndView()
					.getModelMap());
	}
	
	//게시글 등록 테스트
	@Test
	public void testInsertPost() throws Exception {
		
		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/board/register") //Post방식으로 데이터 전달
				.param("post_title", "컨트롤러 등록테스트")
				.param("post_contents", "컨트롤러 등록테스트")
				.param("board_num", "21")
				.param("member_num", "1")
				.param("writer", "권도현")
		) .andReturn().getModelAndView().getViewName();
		
		log.info(resultPage);
	}
	
	
	//컨트롤러 조회 테스트
	@Test
	public void testGetPost() throws Exception {
		
		log.info(mockMvc.perform(MockMvcRequestBuilders
				.get("/post/get")
				.param("post_num", "9"))
				.andReturn()
				.getModelAndView().getModelMap());
	}
	
	//컨트롤러 수정 테스트
	@Test
	public void testUpdatePost() throws Exception {
		
		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/post/update") //Post방식으로 데이터 전달
				.param("post_num", "33")
				.param("post_title", "컨트롤러 수정테스트")
				.param("post_contents", "컨트롤러 수정테스트")
				.param("writer", "권도현")
		) .andReturn().getModelAndView().getViewName();
		
		log.info(resultPage);
	}
	
	
	//삭제 테스트
	@Test
	public void testDeletePost() throws Exception {
		
		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/post/delete") //Post방식으로 데이터 전달
				.param("post_num", "5")
		) .andReturn().getModelAndView().getViewName();
		
		log.info(resultPage);
	}
	
	
	@Test
	public void testListPost() throws Exception{
		
		log.info(mockMvc.perform(
				MockMvcRequestBuilders.get("/post/list")
				.param("pageNum", "2")
				.param("amount", "50"))
				.andReturn().getModelAndView().getModelMap());
	}

}
