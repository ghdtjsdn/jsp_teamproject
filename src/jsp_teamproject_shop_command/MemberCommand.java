package jsp_teamproject_shop_command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface MemberCommand {
	
	void execute(HttpServletRequest request, HttpServletResponse response);	

}
