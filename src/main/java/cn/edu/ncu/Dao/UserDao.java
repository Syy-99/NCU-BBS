package cn.edu.ncu.Dao;

import cn.edu.ncu.Entity.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface UserDao {



    /**
     * 根据id查找用户
     * @param uid 用户账号
     * @return 账号为uid的User对象
     */
    @Select("select * from user where uid=${_parameter}")
    public User getByUId(String uid);


    /**
     * 修改个人资料
     * @param user id+需要修改的内容
     */
    @Update("update user set uname=#{uname},sex=#{sex},email=#{email},address=#{address},age=#{age},introduction=#{introduction}  where uid = #{uid} ")
    public void userEdit( User user);

}
