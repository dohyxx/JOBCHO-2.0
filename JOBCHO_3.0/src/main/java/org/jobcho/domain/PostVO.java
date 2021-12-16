package org.jobcho.domain;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatTypes;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PostVO {
	private int post_num;
	private String post_title;
	private String post_contents;
	private int board_num;
	private int member_num;
	
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
	private Date post_date;
	private int isLive;
	private int replycnt; //댓글 수
	private String writer;//작성자
	
	
	
	private BoardVO board;
	private MemberVO member;
}
