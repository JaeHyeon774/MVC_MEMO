package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemoDAO;
import model.MemoDTO;

public class UpdateAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse responae) throws Throwable {
		MemoDAO dao = new MemoDAO();
		int memono = Integer.parseInt(request.getParameter("memono"));
		MemoDTO dto = dao.read(memono);
		
		request.setAttribute("dto", dto);
		
		return "/view/updateForm.jsp";
	}

}
