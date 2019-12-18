package cn.edu.ncu.Dao;

import cn.edu.ncu.Entity.Post;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

//帖子接口
@Repository
public interface PostDao {
    /*查询所有帖子信息*/
    @Select("select*from post")
    public List<Post> findAll();

    /*保存帖子信息*/
    @Insert("insert into post(pid,pname,type,content,rank,bonus,time,status) values (#{pid},#{pname},#{type},#{content},#{rank},#{bonus},#{time},#{status})")
    public void savePost(Post post);

    /*删除某个用户信息*/
    @Delete("delete from post where pid=#{pid}")
    public void deletePost(String pid);

    /*修改某个用户信息*/
    @Update("update post set pname=#{pname} where pid=#{pid}")
    public void updatePost(Post post);
}
