package cn.edu.ncu.Controller;

import cn.edu.ncu.Util.UploadImageUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/image")
public class ImageController {
    @RequestMapping("/test")
    public void test(HttpServletRequest request, HttpServletResponse response, MultipartFile uploadFile)throws Exception {
        String newFileName = UploadImageUtil.upload(uploadFile);
        String text = request.getParameter("text");
        System.out.println(text);
        HttpSession session = request.getSession();
        session.setAttribute("newFileName", newFileName);
        response.sendRedirect("../test.jsp");
    }
}
