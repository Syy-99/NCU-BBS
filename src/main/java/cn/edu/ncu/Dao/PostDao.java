package cn.edu.ncu.Dao;

import cn.edu.ncu.Entity.Post;
import cn.edu.ncu.Entity.User;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PostDao {
    /*查询所有帖子信息*/
    @Select("select *from post")
    public List<Post>findAll();

    /*模糊匹配*/
    @Select("select *from post where pname like #{pname}")
    public List<Post>findByPname(String pname);

    /*删除帖子信息*/
    @Delete("delete from post where pid=#{pid}")
    public void deletePost(String pid);

    /*修改文章信息*/
    @Update("update post set pname=#{pname},type=#{type}," +
            "content=#{content},rank=#{rank},bonus=#{bonus},time=#{time}," +
            "uname=#{uname},status=#{status},pimage=#{pimage} where pid=#{pid}")
    public void UpdatePost(Post post);

    /*保存帖子信息*/
    @Insert("insert into post(pid,pname,type,content,rank,bonus,uid,uname,time,status,pimage) values (#{pid},#{pname},#{type},#{content},#{rank},#{bonus},#{uid},#{uname},#{time},#{status},#{pimage})")
    public void savePost(Post post);

    /**
     * 根据uid查找帖子
     * @param uid
     * @return
     */
    @Select("select * from post where uid=#{uid}")
    public List<Post> getByUId(String uid);

    /*如果修改了昵称，则修改post中的uname*/
    @Update("update post set uname=#{uname} where uid=#{uid}")
    public void updatePostUname(User user);
}
