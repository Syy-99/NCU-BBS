package cn.edu.ncu.Service;

import cn.edu.ncu.Entity.Post;

import java.util.List;
public interface PostService {
    /*查询所有帖子信息*/
    public List<Post> findAll();

    /*删除帖子信息*/
    public void deletePost(String pid);

    /*修改文章信息*/
    public void UpdatePost(Post post);
}
