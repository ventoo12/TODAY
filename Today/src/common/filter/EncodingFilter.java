package common.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;


@WebFilter("/*")
public class EncodingFilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub
	}

	/* request를 보내기 전에 사전 처리할 코드가 있다면 이곳에서 구현한다.
	 * 또한 response를 보낸 후에 사후 처리할 코드가 있다면 역시 여기서 구현
	 * 우리는 모든 요청을 처리하기전에 한글 인코딩 처리를 필터에서 할 예정
	 * */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");
		// System.out.println("EnchodingFilter로 한글 처리함..");
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
