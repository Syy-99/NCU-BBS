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
    /*
     * 用户显示
     * */
    @RequestMapping("/showUser")
    public void showUser(HttpServletRequest request, HttpServletResponse response)throws Exception{
        List<User>list = userService.findAll();
        HttpSession session = request.getSession();
        session.setAttribute("userList",list);
        showPost(request,response);
    }
    /*
    * 用户删除
    * */
    @RequestMapping("/deleteUser")
    public void deleteUser(HttpServletRequest request, HttpServletResponse response)throws Exception{
        String uid = request.getParameter("uid");
        userService.deleteUser(uid);
        showUser(request,response);
    }
    /*
     * 用户更新
     * */
    @RequestMapping("/updateUser")
    public void updateUser(User user,HttpServletRequest request, HttpServletResponse response)throws Exception{
        userService.updateUser(user);
        showUser(request,response);
    }
    /*
     * 帖子显示
     * */
    @RequestMapping("/showPost")
    public void showPost(HttpServletRequest request, HttpServletResponse response)throws Exception{
        List<Post>list = postService.findAll();
        HttpSession session = request.getSession();
        session.setAttribute("postList",list);
        response.sendRedirect("../show.jsp");
    }
    /*
     * 帖子删除
     * */
    @RequestMapping("/deletePost")
    public void deletePost(HttpServletRequest request, HttpServletResponse response)throws Exception{
        String pid = request.getParameter("pid");
        postService.deletePost(pid);
        showUser(request,response);
    }
    /*
     * 帖子更新
     * */
    @RequestMapping("/updatePost")
    public void updatePost(Post post,HttpServletRequest request, HttpServletResponse response)throws Exception{
        postService.UpdatePost(post);
        showUser(request,response);
    }
    /*
     * 帖子更新
     * */
    @RequestMapping("/check")
    public void check(HttpServletRequest request, HttpServletResponse response, Post post)throws Exception{
        String status = request.getParameter("status");
        if(status.equals("0")){
            status = "1";
        }else
            status = "0";
        post.setStatus(status);
        postService.UpdatePost(post);
        showUser(request,response);
    }
    /*
     * 帖子加精
     * */
    @RequestMapping("/add")
    public void add(HttpServletRequest request, HttpServletResponse response, Post post)throws Exception{
        String rank = request.getParameter("rank");
        if(rank.equals("4"))//rank=3为加精
            rank = "3";
        else if(rank.equals("2"))//rank=1为置顶和加精
            rank = "1";
        else
            rank = rank;
        post.setRank(rank);
        postService.UpdatePost(post);
        showUser(request,response);
    }

    /*
     * 帖子置顶
     * */
    @RequestMapping("/top")
    public void top(HttpServletRequest request, HttpServletResponse response, Post post)throws Exception{
        String rank = request.getParameter("rank");
        if(rank.equals("4")||rank.equals("3"))
            rank = "2";
        else
            rank = rank;
        post.setRank(rank);
        postService.UpdatePost(post);
        showUser(request,response);
    }
}
