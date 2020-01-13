package common.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 페이징 처리를 위한 Command 인터페이스 입니다.
public interface Command {

	void execute(HttpServletRequest req, HttpServletResponse res) throws Exception;
	
}
