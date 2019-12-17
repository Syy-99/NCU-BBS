package cn.edu.ncu.Dao;

import cn.edu.ncu.Entity.User;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface UserDao {

    /**
     * 查找所有用户
     * @return List<User>
     */
    @Select("select * from user")
    public List<User> findAll();

}
