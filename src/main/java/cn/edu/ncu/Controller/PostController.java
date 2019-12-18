package cn.edu.ncu.Controller;

import cn.edu.ncu.Entity.Post;
import cn.edu.ncu.Service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;


@Controller
@RequestMapping("/post")
public class PostController {

    @Autowired
    private PostService postService;

    @RequestMapping("/savePost")
    public void savePost(Post post, HttpServletRequest request, HttpServletResponse response) throws Exception{
//        获得user的name 和 id


        Date date=new Date();
        String pid=date.getTime()+"";//生成唯一会议号
        String rank="1";    //帖子等级，默认为1级，总共4级
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        String time=df.format(date.getTime());//转换时间格式
        post.setPid(pid);
        post.setRank(rank);
        post.setTime(time);
        post.setStatus("0");    //帖子状态默认为0
       postService.savePost(post);
        System.out.println("aaa");
        request.getRequestDispatcher("..//post.jsp").forward(request,response);

//        return "savePostSuccess";
    }

}
