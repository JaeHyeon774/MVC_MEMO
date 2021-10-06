package action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemoDAO;
import model.MemoDTO;

public class UpdateProcAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse responae) throws Throwable {
		MemoDAO dao = new MemoDAO();
		request.setCharacterEncoding("utf-8");
		String wname = request.getParameter("wname");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String passwd = request.getParameter("passwd");
		
		MemoDTO dto = new MemoDTO();
		dto.setWname(wname);
		dto.setTitle(title);
		dto.setContent(content);
		dto.setPasswd(passwd);
		
		Map map = new HashMap();
		map.put("memono",dto.getMemono());
		map.put("passwd",dto.getPasswd());
		
		boolean pflag = dao.passCheck(map);
		
		boolean flag = false;
		
		if(pflag) {
			flag = dao.update(dto);
		}
		
		request.setAttribute("flag", flag);
		request.setAttribute("pflag", pflag);
		
		return "/view/updateProc.jsp";
	}

}
