package com.billiard.entity;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Index {
    private Integer id;

    private String imageUrl;

    private String hrefUrl;

    private Integer jumpType;//0 跳转为超链接  1 跳转为富文本

    private Boolean isHidden;

    private Integer imageLocation;

    @JsonFormat(pattern="yyyy-MM-dd")
    private Date createTime;

    private String createUser;

    private String content;
    
    
    private String jumpTypeDetail;
    
    private String imageLocationDetail;
    
    
    

    public String getJumpTypeDetail() {
    	if(jumpType==null||jumpType==0) {
    		jumpTypeDetail="超链接";
    	}
    	else {
    		jumpTypeDetail="富文本";
    	}
    	
		return jumpTypeDetail;
	}

	public void setJumpTypeDetail(String jumpTypeDetail) {
		this.jumpTypeDetail = jumpTypeDetail;
	}

	public String getImageLocationDetail() {
		// 1：banner 2：理事 3：赞助商 4：赛事冠名广告位
		if(imageLocation==null||imageLocation==1) {
			imageLocationDetail="banner";
		}else if(imageLocation==2) {
			imageLocationDetail="理事";
		}else if(imageLocation==3) {
			imageLocationDetail="赞助商";
		}else if(imageLocation==4) {
			imageLocationDetail="赛事冠名";
		}
		
		return imageLocationDetail;
	}

	public void setImageLocationDetail(String imageLocationDetail) {
		this.imageLocationDetail = imageLocationDetail;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl == null ? null : imageUrl.trim();
    }

    public String getHrefUrl() {
        return hrefUrl;
    }

    public void setHrefUrl(String hrefUrl) {
        this.hrefUrl = hrefUrl == null ? null : hrefUrl.trim();
    }

    public Integer getJumpType() {
        return jumpType;
    }

    public void setJumpType(Integer jumpType) {
        this.jumpType = jumpType;
    }

    public Boolean getIsHidden() {
        return isHidden;
    }

    public void setIsHidden(Boolean isHidden) {
        this.isHidden = isHidden;
    }

    public Integer getImageLocation() {
        return imageLocation;
    }

    public void setImageLocation(Integer imageLocation) {
        this.imageLocation = imageLocation;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser == null ? null : createUser.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}