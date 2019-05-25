package com.billiard.util;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class PropertyUtil {

	@Value("${mail.from}")
	private String mailFrom;
	
	@Value("${mail.host}")
	private String mailHost;
	
	@Value("${mail.password}")
	private String mailPassword;
	
	@Value("${mail.nickname}")
	private String mailNickname;
	
	@Value("${file.upload.path}")
	private String uploadPath;

	@Value("${file.prefix}")
	private String filePrefix;
	
	
	
	
	public String getFilePrefix() {
		return filePrefix;
	}

	public void setFilePrefix(String filePrefix) {
		this.filePrefix = filePrefix;
	}

	public String getUploadPath() {
		return uploadPath;
	}

	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}

	public String getMailFrom() {
		return mailFrom;
	}

	public void setMailFrom(String mailFrom) {
		this.mailFrom = mailFrom;
	}

	public String getMailHost() {
		return mailHost;
	}

	public void setMailHost(String mailHost) {
		this.mailHost = mailHost;
	}

	public String getMailPassword() {
		return mailPassword;
	}

	public void setMailPassword(String mailPassword) {
		this.mailPassword = mailPassword;
	}

	public String getMailNickname() {
		return mailNickname;
	}

	public void setMailNickname(String mailNickname) {
		this.mailNickname = mailNickname;
	}
	
	
	
}
