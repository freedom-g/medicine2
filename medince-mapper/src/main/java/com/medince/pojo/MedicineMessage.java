package com.medince.pojo;

import java.util.Date;

public class MedicineMessage {
    private Integer id;

    private String itemId;

    private String itemName;

    private String img;

    private String itemBrand;

    private Long itemStack;

    private Long itemBazaar;

    private Long itemMembership;

    private Long itemPromotion;

    private Byte status;

    private String paramItem;

    private Integer pai;

    private Integer num;

    private Long cid;

    private Date created;

    private Date updated;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getItemId() {
        return itemId;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId == null ? null : itemId.trim();
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName == null ? null : itemName.trim();
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img == null ? null : img.trim();
    }

    public String getItemBrand() {
        return itemBrand;
    }

    public void setItemBrand(String itemBrand) {
        this.itemBrand = itemBrand == null ? null : itemBrand.trim();
    }

    public Long getItemStack() {
        return itemStack;
    }

    public void setItemStack(Long itemStack) {
        this.itemStack = itemStack;
    }

    public Long getItemBazaar() {
        return itemBazaar;
    }

    public void setItemBazaar(Long itemBazaar) {
        this.itemBazaar = itemBazaar;
    }

    public Long getItemMembership() {
        return itemMembership;
    }

    public void setItemMembership(Long itemMembership) {
        this.itemMembership = itemMembership;
    }

    public Long getItemPromotion() {
        return itemPromotion;
    }

    public void setItemPromotion(Long itemPromotion) {
        this.itemPromotion = itemPromotion;
    }

    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }

    public String getParamItem() {
        return paramItem;
    }

    public void setParamItem(String paramItem) {
        this.paramItem = paramItem == null ? null : paramItem.trim();
    }

    public Integer getPai() {
        return pai;
    }

    public void setPai(Integer pai) {
        this.pai = pai;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Long getCid() {
        return cid;
    }

    public void setCid(Long cid) {
        this.cid = cid;
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

    @Override
    public String toString() {
        return "MedicineMessage{" +
                "id=" + id +
                ", itemId='" + itemId + '\'' +
                ", itemName='" + itemName + '\'' +
                ", img='" + img + '\'' +
                ", itemBrand='" + itemBrand + '\'' +
                ", itemStack=" + itemStack +
                ", itemBazaar=" + itemBazaar +
                ", itemMembership=" + itemMembership +
                ", itemPromotion=" + itemPromotion +
                ", status=" + status +
                ", paramItem='" + paramItem + '\'' +
                ", pai=" + pai +
                ", num=" + num +
                ", cid=" + cid +
                ", created=" + created +
                ", updated=" + updated +
                '}';
    }
}