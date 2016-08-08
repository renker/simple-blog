package com.ct.blog.person.entity;

import java.io.Serializable;

public class Person implements Serializable {
    private String id;

    private String account;

    private String password;

    private Boolean root;

    private Integer loginErrorAllowNum;

    private Integer loginErrorNum;

    private Integer status;

    private String salt;

    private static final long serialVersionUID = 1L;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Boolean getRoot() {
        return root;
    }

    public void setRoot(Boolean root) {
        this.root = root;
    }

    public Integer getLoginErrorAllowNum() {
        return loginErrorAllowNum;
    }

    public void setLoginErrorAllowNum(Integer loginErrorAllowNum) {
        this.loginErrorAllowNum = loginErrorAllowNum;
    }

    public Integer getLoginErrorNum() {
        return loginErrorNum;
    }

    public void setLoginErrorNum(Integer loginErrorNum) {
        this.loginErrorNum = loginErrorNum;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        Person other = (Person) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getAccount() == null ? other.getAccount() == null : this.getAccount().equals(other.getAccount()))
            && (this.getPassword() == null ? other.getPassword() == null : this.getPassword().equals(other.getPassword()))
            && (this.getRoot() == null ? other.getRoot() == null : this.getRoot().equals(other.getRoot()))
            && (this.getLoginErrorAllowNum() == null ? other.getLoginErrorAllowNum() == null : this.getLoginErrorAllowNum().equals(other.getLoginErrorAllowNum()))
            && (this.getLoginErrorNum() == null ? other.getLoginErrorNum() == null : this.getLoginErrorNum().equals(other.getLoginErrorNum()))
            && (this.getStatus() == null ? other.getStatus() == null : this.getStatus().equals(other.getStatus()))
            && (this.getSalt() == null ? other.getSalt() == null : this.getSalt().equals(other.getSalt()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getAccount() == null) ? 0 : getAccount().hashCode());
        result = prime * result + ((getPassword() == null) ? 0 : getPassword().hashCode());
        result = prime * result + ((getRoot() == null) ? 0 : getRoot().hashCode());
        result = prime * result + ((getLoginErrorAllowNum() == null) ? 0 : getLoginErrorAllowNum().hashCode());
        result = prime * result + ((getLoginErrorNum() == null) ? 0 : getLoginErrorNum().hashCode());
        result = prime * result + ((getStatus() == null) ? 0 : getStatus().hashCode());
        result = prime * result + ((getSalt() == null) ? 0 : getSalt().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", account=").append(account);
        sb.append(", password=").append(password);
        sb.append(", root=").append(root);
        sb.append(", loginErrorAllowNum=").append(loginErrorAllowNum);
        sb.append(", loginErrorNum=").append(loginErrorNum);
        sb.append(", status=").append(status);
        sb.append(", salt=").append(salt);
        sb.append("]");
        return sb.toString();
    }
}