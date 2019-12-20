package cn.edu.ncu.Entity;

import java.io.Serializable;

public class User implements Serializable {
    private String uid;//账号
    private String uname;//昵称
    private String upassword;//密码
    private String bonus;//积分
    private String sex;//性别
    private String email;//邮箱
    private String address;//地址
    private String age;//年龄
    private String introduction;//个性签名
    private String uimage;//用户图片

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpassword() {
        return upassword;
    }

    public void setUpassword(String upassword) {
        this.upassword = upassword;
    }

    public String getBonus() {
        return bonus;
    }

    public void setBonus(String bonus) {
        this.bonus = bonus;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getUimage() {
        return uimage;
    }

    public void setUimage(String uimage) {
        this.uimage = uimage;
    }
}
