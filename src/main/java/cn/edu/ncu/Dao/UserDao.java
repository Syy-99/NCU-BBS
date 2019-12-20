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
    @Update("update user set uname=#{uname},upassword=#{upassword}," +
            "bonus=#{bonus},sex=#{sex},email=#{email},address=#{address},age=#{age},introduction=#{introduction},uimage=#{uimage} where uid=#{uid}")
    public void updateUser(User user);

    /*保存用户信息*/
    @Insert("insert into user(uid,uname,upassword,bonus,sex,email,address,age,introduction,uimage)" +
            "values(#{uid},#{uname},#{upassword},#{bonus},#{sex},#{email},#{address},#{age},#{introduction},#{uimage})")
    public void saveUser(User user);


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
    @Update("update user set uname=#{uname},sex=#{sex},email=#{email},address=#{address},age=#{age},introduction=#{introduction},uimage=#{uimage}  where uid = #{uid} ")
    public void userEdit( User user);
}
