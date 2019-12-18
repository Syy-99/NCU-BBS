package cn.edu.ncu.Dao;

import cn.edu.ncu.Entity.Admin;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface AdminDao {
    /*查询所有管理员信息*/
    @Select("select *from admin")
    public List<Admin>findAll();

}
