package cn.edu.ncu.Service;

import cn.edu.ncu.Entity.User;

public interface CommitService {

    /*如果修改了昵称，则修改commit中的uname*/
    public void updateCommitDao(User user);
}
