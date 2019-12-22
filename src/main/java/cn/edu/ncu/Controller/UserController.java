package cn.edu.ncu.Controller;

import cn.edu.ncu.Entity.Admin;
import cn.edu.ncu.Entity.User;
import cn.edu.ncu.Service.AdminService;
import cn.edu.ncu.Service.CommitService;
import cn.edu.ncu.Service.PostService;
import cn.edu.ncu.Service.UserService;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private AdminService adminService;

    @Autowired
    private PostService postService;

    @Autowired
    private CommitService commitService;

    @RequestMapping("/testUser")
    private void testUser(HttpServletRequest request, HttpServletResponse response ) throws Exception{
        List<User> list = userService.findAll();
        List<Admin>list1 = adminService.findAll();
        response.setCharacterEncoding("UTF-8");
        response.setHeader("Content-type", "text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        String uid = request.getParameter("uid");
        String upassword = request.getParameter("upassword");
        for(Admin admin: list1){
            if(admin.getAid().equals(uid)&&admin.getApassword().equals(upassword)){
                response.sendRedirect("../admin/showUser");
            }
        }
        for(User user:list){
            if(user.getUid().equals(uid)&&user.getUpassword().equals(upassword)){
                session.setAttribute("userId",uid);
                out.print("<script>alert('登录成功，欢迎来到BBS论坛');window.location.href='../main.jsp'</script>");
                out.flush();
            }
        }
        out.print("<script>alert('登录失败，请重新登录');window.location.href='../login.jsp'</script>");
        out.flush();
    }

    /*注册*/
    @RequestMapping("/testRegister")
    public void testRegister(HttpServletRequest request, HttpServletResponse response,User user)throws Exception{
        List<User>list = userService.findAll();
        String uid = request.getParameter("uid");
        HttpSession session = request.getSession();
        session.setAttribute("userId",uid);
        response.setCharacterEncoding("UTF-8");
        response.setHeader("Content-type", "text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        for(User users:list){
            if(users.getUid().equals(uid)){
                out.print("<script>alert('账号已存在，请重新注册');window.location.href='../register.jsp'</script>");
                out.flush();
            }
        }
        user.setBonus("50");
        user.setUname("小白");
        userService.saveUser(user);
        out.print("<script>alert('注册成功，欢迎来到BBS论坛');window.location.href='../main.jsp'</script>");
        out.flush();
    }
    /**
     *  *查找个人信息
     *
     *
     * @param request
     * @param response
     * @return 跳转到personal.jsp
     */
    @RequestMapping("/getByUId")
    public String getByUId(HttpServletRequest request,HttpServletResponse response){
        HttpSession session = request.getSession(false);
        String uid = (String) session.getAttribute("userId");
        User user = userService.getByUId(uid);
        session.setAttribute("PersonalData",user);
        return "personal";
    }

    /**
     * 修改用户信息
     * @param user
     * @param model
     * @param request
     * @param response
     * @throws IOException
     */
    @RequestMapping("/userEdit")
    public void userEdit(User user, Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {
        userService.userEdit(user);
        postService.updatePostUname(user);
        commitService.updateCommitDao(user);
        response.sendRedirect(request.getContextPath()+"/user/getByUId");

    }

    /**
     * 跳转到修改个人信息页面
     * @return personalEdit
     */
    @RequestMapping("/jumpToUserEdit")
    public String jumpToUserEdit(){
        return "personalEdit";
    }


    /**
     * 根据uid返回json数组
     * @param request
     * @param response
     * @throws Exception
     */
    @RequestMapping("/editByUId")
    public void editByUId(HttpServletRequest request,HttpServletResponse response) throws Exception{
        HttpSession session = request.getSession(false);
        String uid = (String) session.getAttribute("userId");
        User user = userService.getByUId(uid);
        JSONArray ja = JSONArray.fromObject(user);
        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().println(ja);
    }

    /*个人中心删除帖子*/
    @RequestMapping("/deleteByPId")
    public void deleteByPId(HttpServletRequest request,HttpServletResponse response)throws Exception{
        String pid = request.getParameter("pid");
        postService.deletePost(pid);
        response.sendRedirect("../user/getByUId");
    }
}


