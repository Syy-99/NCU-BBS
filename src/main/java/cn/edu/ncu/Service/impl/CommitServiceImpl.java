package cn.edu.ncu.Service.impl;

import cn.edu.ncu.Dao.CommitDao;
import cn.edu.ncu.Entity.User;
import cn.edu.ncu.Service.CommitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommitServiceImpl implements CommitService {

    @Autowired
    private CommitDao commitDao;

    @Override
    public void updateCommitDao(User user) {
        commitDao.updateCommitDao(user);
    }
}
