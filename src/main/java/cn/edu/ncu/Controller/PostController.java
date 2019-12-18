package cn.edu.ncu.Controller;

import cn.edu.ncu.Entity.Post;
import cn.edu.ncu.Entity.User;
import cn.edu.ncu.Service.PostService;
import cn.edu.ncu.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;


@Controller
@RequestMapping("/post")
public class PostController {

    @Autowired
    private PostService postService;

    @Autowired
    private  UserService userService;

    @RequestMapping("/savePost")
    public void savePost(Post post, HttpServletRequest request, HttpServletResponse response) throws Exception{
        HttpSession session = request.getSession();
        String uid  = (String) session.getAttribute("userId");
        post.setUid(uid);
        User user = userService.getByUId(uid);
        post.setUname(user.getUname());
        Date date=new Date();
        String pid=date.getTime()+"";//生成唯一帖子号
        String rank="1";    //帖子等级，默认为1级，总共4级
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        String time=df.format(date.getTime());//转换时间格式
        post.setPid(pid);
        post.setRank(rank);
        post.setTime(time);
        post.setStatus("0");    //帖子状态默认为0
        postService.savePost(post);
        response.sendRedirect("..//main.jsp");
    }
}
