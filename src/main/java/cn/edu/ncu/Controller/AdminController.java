package cn.edu.ncu.Controller;

import cn.edu.ncu.Entity.Post;
import cn.edu.ncu.Entity.User;
import cn.edu.ncu.Service.PostService;
import cn.edu.ncu.Service.UserService;
import javafx.geometry.Pos;
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

    @Autowired
    private PostService postService;

    @RequestMapping("/showUser")
    public void showUser(HttpServletRequest request, HttpServletResponse response)throws Exception{
        List<User>list = userService.findAll();
        HttpSession session = request.getSession();
        session.setAttribute("userList",list);
        showPost(request,response);
    }

    @RequestMapping("/deleteUser")
    public void deleteUser(HttpServletRequest request, HttpServletResponse response)throws Exception{
        String uid = request.getParameter("uid");
        userService.deleteUser(uid);
        showUser(request,response);
    }

    @RequestMapping("/updateUser")
    public void updateUser(User user,HttpServletRequest request, HttpServletResponse response)throws Exception{
        userService.updateUser(user);
        showUser(request,response);
    }

    @RequestMapping("/showPost")
    public void showPost(HttpServletRequest request, HttpServletResponse response)throws Exception{
        List<Post>list = postService.findAll();
        HttpSession session = request.getSession();
        session.setAttribute("postList",list);
        request.getRequestDispatcher("//show.jsp").forward(request,response);
    }

    @RequestMapping("/deletePost")
    public void deletePost(HttpServletRequest request, HttpServletResponse response)throws Exception{
        String pid = request.getParameter("pid");
        postService.deletePost(pid);
        showUser(request,response);
    }

    @RequestMapping("/updatePost")
    public void updatePost(Post post,HttpServletRequest request, HttpServletResponse response)throws Exception{
        postService.UpdatePost(post);
        showUser(request,response);
    }
}
