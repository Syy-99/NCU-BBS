package cn.edu.ncu.Dao;

import cn.edu.ncu.Entity.Post;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PostDao {
    /*查询所有帖子信息*/
    @Select("select *from post")
    public List<Post>findAll();

    /*删除帖子信息*/
    @Delete("delete from post where pid=#{pid}")
    public void deletePost(String pid);

    /*修改文章信息*/
    @Update("update post set pname=#{pname},type=#{type}," +
            "content=#{content},rank=#{rank},bonus=#{bonus},time=#{time}," +
            "uname=#{uname},status=#{status} where pid=#{pid}")
    public void UpdatePost(Post post);
}
