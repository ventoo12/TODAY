package common.controller;
// 페이징처리를 위한 추상클래스 입니다. Command 인터페이스를 implements 하였습니다.
public abstract class AbstractAction implements Command {

	private String viewPage;
	private boolean isRedirect;
	
	public String getViewPage() {
		return viewPage;
	}
	public void setViewPage(String viewPage) {
		this.viewPage = viewPage;
	}
	
	public boolean isRedirect() {
		return isRedirect;
	}

	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
}
