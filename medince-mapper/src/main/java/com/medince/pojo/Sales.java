package com.medince.pojo;

import java.util.Date;

public class Sales {
    private String itemId;

    private String itemMj;

    private Integer itemJg;

    private String itemHd;

    private Integer itemSl;

    private Date created;

    private Date updated;

    public String getItemId() {
        return itemId;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId == null ? null : itemId.trim();
    }

    public String getItemMj() {
        return itemMj;
    }

    public void setItemMj(String itemMj) {
        this.itemMj = itemMj == null ? null : itemMj.trim();
    }

    public Integer getItemJg() {
        return itemJg;
    }

    public void setItemJg(Integer itemJg) {
        this.itemJg = itemJg;
    }

    public String getItemHd() {
        return itemHd;
    }

    public void setItemHd(String itemHd) {
        this.itemHd = itemHd == null ? null : itemHd.trim();
    }

    public Integer getItemSl() {
        return itemSl;
    }

    public void setItemSl(Integer itemSl) {
        this.itemSl = itemSl;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public Date getUpdated() {
        return updated;
    }

    public void setUpdated(Date updated) {
        this.updated = updated;
    }
}