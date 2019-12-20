package cn.edu.ncu.Controller;

import cn.edu.ncu.Entity.Post;
import cn.edu.ncu.Entity.User;
import cn.edu.ncu.Service.PostService;
import cn.edu.ncu.Service.UserService;
import cn.edu.ncu.Util.UploadImageUtil;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


@Controller
@RequestMapping("/post")
public class PostController {

    @Autowired
    private PostService postService;

    @Autowired
    private  UserService userService;

    @RequestMapping("/savePost")
    public void savePost(Post post, HttpServletRequest request, HttpServletResponse response, MultipartFile uploadFile) throws Exception{
        HttpSession session = request.getSession();
        String uid  = (String) session.getAttribute("userId");
        post.setUid(uid);
        String newFileName= UploadImageUtil.upload(uploadFile);
        post.setPimage(newFileName);
        System.out.println(newFileName);

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

    @RequestMapping("/showPost")
    public void showPost(HttpServletRequest request, HttpServletResponse response) throws Exception{
        List<User> posts = userService.findAll();
        System.out.println(123);
        JSONArray ja = JSONArray.fromObject(posts);
        System.out.println(321);
        System.out.println(ja.toString());

        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().println(ja);
    }
    @RequestMapping("/test")
    public void test(){
        List<Post>list = postService.findAll();
        for(Post post:list){
            System.out.println(post.getUid());
        }
    }
}
