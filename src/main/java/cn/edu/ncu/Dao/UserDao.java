package cn.edu.ncu.Dao;

import cn.edu.ncu.Entity.User;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface UserDao {

    /*查询所有用户信息*/
    @Select("select *from user")
    public List<User>findAll();

    /*删除用户信息*/
    @Delete("delete from user where uid=#{uid}")
    public void deleteUser(String uid);

    /*修改用户信息*/
    @Update("update user set uid=#{uid},uname=#{uname},upassword=#{upassword}" +
            "bonus=#{bonus},sex=#{sex},email=#{email},address=#{address},age=#{age},introduction=#{introduction} ")
    public void updateUser(User user);

    /*保存用户信息*/
    @Insert("insert into user(uid,uname,upassword,bonus,sex,email,address,age,introduction)" +
            "values(#{uid},#{uname},#{upassword},#{bonus},#{sex},#{email},#{address},#{age},#{introduction})")
    public void saveUser(User user);
}
