package cn.edu.ncu.Util;

import org.springframework.web.multipart.MultipartFile;
import java.io.File;
import java.util.UUID;

public class UploadImageUtil {
    public static String upload(MultipartFile uploadFile)throws Exception{
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
            return newFileName;
        }
        return null;
    }
}
