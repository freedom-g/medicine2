package com.medince.pojo;

import java.util.Date;

public class User {
    private Long userId;

    private String userTx;

    private String userName;

    private String userEmail;

    private String userZsname;

    private Byte userSex;

    private Date userBirthday;

    private String userAddress;

    private Integer userQq;

    private String userAlili;

    private String password;

    private Integer userState;

    private Date userCreated;

    private Date userUpdated;

    private String userYl;

    private String userZj;

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getUserTx() {
        return userTx;
    }

    public void setUserTx(String userTx) {
        this.userTx = userTx == null ? null : userTx.trim();
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail == null ? null : userEmail.trim();
    }

    public String getUserZsname() {
        return userZsname;
    }

    public void setUserZsname(String userZsname) {
        this.userZsname = userZsname == null ? null : userZsname.trim();
    }

    public Byte getUserSex() {
        return userSex;
    }

    public void setUserSex(Byte userSex) {
        this.userSex = userSex;
    }

    public Date getUserBirthday() {
        return userBirthday;
    }

    public void setUserBirthday(Date userBirthday) {
        this.userBirthday = userBirthday;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress == null ? null : userAddress.trim();
    }

    public Integer getUserQq() {
        return userQq;
    }

    public void setUserQq(Integer userQq) {
        this.userQq = userQq;
    }

    public String getUserAlili() {
        return userAlili;
    }

    public void setUserAlili(String userAlili) {
        this.userAlili = userAlili == null ? null : userAlili.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Integer getUserState() {
        return userState;
    }

    public void setUserState(Integer userState) {
        this.userState = userState;
    }

    public Date getUserCreated() {
        return userCreated;
    }

    public void setUserCreated(Date userCreated) {
        this.userCreated = userCreated;
    }

    public Date getUserUpdated() {
        return userUpdated;
    }

    public void setUserUpdated(Date userUpdated) {
        this.userUpdated = userUpdated;
    }

    public String getUserYl() {
        return userYl;
    }

    public void setUserYl(String userYl) {
        this.userYl = userYl == null ? null : userYl.trim();
    }

    public String getUserZj() {
        return userZj;
    }

    public void setUserZj(String userZj) {
        this.userZj = userZj == null ? null : userZj.trim();
    }
}