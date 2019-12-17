package cn.edu.ncu.Entity;

import java.io.Serializable;

public class Admin implements Serializable {
    private String aid;//账号
    private String aname;//昵称
    private String apassword;//密码

    public String getAid() {
        return aid;
    }

    public void setAid(String aid) {
        this.aid = aid;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getApassword() {
        return apassword;
    }

    public void setApassword(String apassword) {
        this.apassword = apassword;
    }
}
