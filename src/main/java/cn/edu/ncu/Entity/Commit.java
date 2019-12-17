package cn.edu.ncu.Entity;

import java.io.Serializable;

public class Commit implements Serializable {
    private String pid;//帖子id
    private String floor;//楼层
    private String uid;//发帖人账号
    private String uname;//发帖人昵称
    private String content;//回复内容
    private String time;//回复时间

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getFloor() {
        return floor;
    }

    public void setFloor(String floor) {
        this.floor = floor;
    }

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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
