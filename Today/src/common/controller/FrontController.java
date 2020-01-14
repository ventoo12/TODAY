package common.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
// Front 컨트롤러입니다. 아래 initParams의 value를 본인 컴퓨터에 있는 Today 프로젝트 로컬 경로 상의 WEB-INF
// 안의 Command.properties 경로를 입력하여 테스트 시 사용하세요.
@WebServlet(
		urlPatterns = { "*.do" }, 
		initParams = { 
				@WebInitParam(name = "config",
				value = "C:\\Users\\2class-019\\git\\TODAY\\Today\\WebContent\\WEB-INF\\Command.properties")
				//진권일 - C:\\Users\\ventoo\\git\\TODAY\\Today\\WebContent\\WEB-INF\\Command.properties
		})      // 본인 Command.properties 경로를 입력해서 테스트해주세요
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Map<String, Object> cmdMap = new HashMap<>();
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		String props =  config.getInitParameter("config");
		System.out.println("props = "+props);
		Properties pr = new Properties();
		try {
			FileInputStream fis = new FileInputStream(props);
			pr.load(fis);
			fis.close();
			
			Enumeration<Object> en = pr.keys();
			while(en.hasMoreElements()) {
				Object key =en.nextElement();
				String cmd = key.toString();
				String className = pr.getProperty(cmd);
	
				if(className!=null) {
					className=className.trim();
				}
				
				Class cls = Class.forName(className);
				Object cmdObj = cls.newInstance();
				cmdMap.put(cmd, cmdObj);
               
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServletException(e);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	private void process(HttpServletRequest req, HttpServletResponse res) throws ServletException {
		String path = req.getServletPath();
		System.out.println("페이지의 path 경로입니다. : "+path);
		Object obj = cmdMap.get(path);
		System.out.println("페이지의 obj 입니다. : "+obj);
		if(obj==null) {
			System.out.println("Action이 null");
			return;
		}
		AbstractAction action = (AbstractAction)obj;
		
		try {
			action.execute(req, res);
			
			String viewPage = action.getViewPage();
			if(viewPage==null) {
				System.out.println("viewPage is null");
				viewPage="index.jsp";
			}
			
			if(action.isRedirect()) {
				
				res.sendRedirect(viewPage);
			}else {
				RequestDispatcher disp = req.getRequestDispatcher(viewPage);
				disp.forward(req, res);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServletException(e);
		}
		
	}
}
