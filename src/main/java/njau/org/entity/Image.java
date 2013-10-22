package njau.org.entity;

// Generated 2013-9-14 11:57:00 by Hibernate Tools 3.4.0.CR1

import java.util.Date;

import lombok.Data;

/**
 * Image generated by hbm2java
 */
@Data
public class Image implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8934281050852547138L;
	private int imageId;
	private String title;
	private String imageTag;
	private String imageUrl;
	private int isShowOnIndex;
	private String filePath;
	private Date addTime;
	private Date updateTime;
	private String memo;

}
