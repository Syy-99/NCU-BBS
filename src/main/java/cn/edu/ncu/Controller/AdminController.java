package cn.edu.ncu.Controller;

import cn.edu.ncu.Entity.User;
import cn.edu.ncu.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private UserService userService;

    @RequestMapping("/showUser")
    public void showUser(HttpServletRequest request, HttpServletResponse response)throws Exception{
        List<User>list = userService.findAll();
        HttpSession session = request.getSession();
        session.setAttribute("userList",list);
        request.getRequestDispatcher("//show.jsp").forward(request,response);
    }

    @RequestMapping("/deleteUser")
    public void deleteUser(HttpServletRequest request, HttpServletResponse response)throws Exception{
        String uid = request.getParameter("uid");
        userService.deleteUser(uid);
        List<User>list = userService.findAll();
        HttpSession session = request.getSession();
        session.setAttribute("userList",list);
        request.getRequestDispatcher("//show.jsp").forward(request,response);
    }

    @RequestMapping()
    public void updateUser(){

    }
}
