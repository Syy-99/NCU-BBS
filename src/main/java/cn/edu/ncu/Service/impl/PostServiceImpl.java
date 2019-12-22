package cn.edu.ncu.Service.impl;

import cn.edu.ncu.Dao.PostDao;
import cn.edu.ncu.Entity.Post;
import cn.edu.ncu.Entity.User;
import cn.edu.ncu.Service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class PostServiceImpl implements PostService {

    @Autowired
    private PostDao postDao;

    @Override
    public List<Post> findAll() {
        return postDao.findAll();
    }

    @Override
    public void deletePost(String pid) {
        postDao.deletePost(pid);
    }

    @Override
    public void UpdatePost(Post post) {
        postDao.UpdatePost(post);
    }

    @Override
    public void savePost(Post post) {
        postDao.savePost(post);
    }

    @Override
    public List<Post> findByPname(String pname) {
        return postDao.findByPname(pname);
    }
    @Override
    public List<Post> getByUId(String uid) {
        return postDao.getByUId(uid);
    }

    @Override
    public void updatePostUname(User user) {
        postDao.updatePostUname(user);
    }
}
