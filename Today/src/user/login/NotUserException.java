package user.login;

// 사용자정의 예외 생성
// extends Exception 상속
// 생성자 만들어야됨
// 
public class NotUserException extends Exception {
	public NotUserException() {
		super("회원이 아닙니다."); // 예외 메세지 등록
	}
	
	public NotUserException(String msg) {
		super(msg);
	}
}
