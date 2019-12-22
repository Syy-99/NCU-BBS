package cn.edu.ncu.Dao;

import cn.edu.ncu.Entity.User;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

@Repository
public interface CommitDao {

    /*如果修改了昵称，则修改commit中的uname*/
    @Update("update commit set uname=#{uname} where uid=#{uid}")
    public void updateCommitDao(User user);
}
