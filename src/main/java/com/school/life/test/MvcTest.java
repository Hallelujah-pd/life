package com.school.life.test;

import com.github.pagehelper.PageInfo;
import com.school.life.bean.Article;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import java.util.List;

/**
 * 使用Spring测试模块提供的测试请求功能，测试curd请求的正确性
 * Spring4测试的时候，需要servlet3.0的支持
 * @author lfy
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = { "classpath:applicationContext.xml",
		"file:D:/javaWeb源代码/life/src/main/webapp/WEB-INF/dispatcherServlet-servlet.xml" })
public class MvcTest {
	// 传入Springmvc的ioc

	@Autowired
	WebApplicationContext context;

	// 虚拟mvc请求，获取到处理结果。

	MockMvc mockMvc;

	@Before
	public void initMockMvc() {
		mockMvc = MockMvcBuilders.webAppContextSetup(context).build();
	}


	@Test
	public void testGetArticle() throws Exception {
		//模拟请求拿到返回值

		MvcResult result = mockMvc.perform(MockMvcRequestBuilders.get("/pageList").param("pageNum","1"))
				.andReturn();
		MockHttpServletRequest request = result.getRequest();

		PageInfo articlePageInfo = (PageInfo) request.getAttribute("articlePageInfo");

		System.out.println(articlePageInfo.getPages());
	}

}
