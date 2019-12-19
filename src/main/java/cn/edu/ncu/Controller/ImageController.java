package cn.edu.ncu.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.UUID;

@Controller
@RequestMapping("/image")
public class ImageController {
    @RequestMapping("/test")
    public void test(HttpServletRequest request, HttpServletResponse response, MultipartFile uploadFile)throws Exception{
        if(uploadFile!=null){
            // 指定上传图片的保存路径
            String path = "D:/java/images/";
            // 获取上传的文件名全称
            String fileName=uploadFile.getOriginalFilename();
            // 获取上传文件的后缀名
            String suffix=fileName.substring(fileName.lastIndexOf("."));
            // 给文件定义一个新的名称,杜绝文件重名覆盖现象
            String newFileName= UUID.randomUUID().toString()+suffix;
            //创建file对象
            File tempFile=new File(path);
            if(!tempFile.exists()){
                // 创建以此抽象路径名命名的目录,注意mkdir()只能创建一级目录,所以它的父级目录必须存在
                tempFile.mkdir();
            }
            // 在指定路径中创建一个文件(该文件是空的)
            File file=new File(path + newFileName);
            // 将上传的文件写入指定文件
            uploadFile.transferTo(file);
            // 将新文件名添加到HttpServletRequest
            HttpSession session = request.getSession();
            session.setAttribute("newFileName",newFileName);
            response.sendRedirect("../test.jsp");
        }
    }
}
