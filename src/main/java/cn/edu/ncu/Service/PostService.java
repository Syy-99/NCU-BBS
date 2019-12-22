package cn.edu.ncu.Service;

import cn.edu.ncu.Entity.Post;
import cn.edu.ncu.Entity.User;

import java.util.List;
public interface PostService {
    /*查询所有帖子信息*/
    public List<Post> findAll();

    /*删除帖子信息*/
    public void deletePost(String pid);

    /*修改文章信息*/
    public void UpdatePost(Post post);

    /*保存帖子信息*/
    public void savePost(Post post);

    /*模糊匹配*/
    public List<Post>findByPname(String pname);

    /**
     * 根据uid查找帖子
     * @param uid
     * @return
     */
    public List<Post> getByUId(String uid);

    /*如果修改了昵称，则修改post中的uname*/
    public void updatePostUname(User user);
}
