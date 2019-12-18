package cn.edu.ncu.Service.impl;

import cn.edu.ncu.Dao.PostDao;
import cn.edu.ncu.Entity.Post;
import cn.edu.ncu.Service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/*
 * 业务层实现*/
@Service("UserService")
public class PostServiceImpl implements PostService {
    @Autowired
    private PostDao poseDao;

    @Override
    public List<Post> findAll() {
        return poseDao.findAll();
    }

    @Override
    public void savePost(Post post) {
        poseDao.savePost(post);
    }

    @Override
    public void deletePost(String pid) {
        poseDao.deletePost(pid);
    }

    @Override
    public void updatePost(Post post) {
        poseDao.updatePost(post);
    }
}
