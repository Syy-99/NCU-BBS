package cn.edu.ncu.Service;

//业务层接口

import cn.edu.ncu.Entity.Post;

import java.util.List;

public interface PostService {

    /*查询所有帖子信息*/
    public List<Post> findAll();

    /*保存帖子信息*/
    public void savePost(Post post);

    /*删除某一个帖子*/
    public void deletePost(String pid);

    /*修改帖子信息*/
    public void updatePost(Post post);

}
