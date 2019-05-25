package com.billiard.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.billiard.entity.JobResponse;
import com.billiard.entity.User;
import com.billiard.util.MD5Util;
import com.billiard.util.PropertyUtil;



@RestController
@RequestMapping("file")
public class FileController {
	
	@Autowired
	private  PropertyUtil propertyUtil;
	
	@RequestMapping(value="upload" ,method=RequestMethod.POST)
	public JobResponse upload(@RequestParam("file") MultipartFile file ) {
		
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String datePath =format.format(new Date());
		File dir = new File(propertyUtil.getUploadPath()+datePath);
		if(!dir.exists()) {
			dir.mkdirs();
		}
		StringBuilder sb = new StringBuilder(MD5Util.getID());
		sb.append(file.getOriginalFilename().substring(file.getOriginalFilename().indexOf(".")));
		File dest = new File(dir, sb.toString());
		
		try {
			file.transferTo(dest);
	/*		OrderFile destFile = new OrderFile();
			destFile.setCreateTime(new Date());
			destFile.setFileName(file.getOriginalFilename());
			destFile.setFileType(Integer.parseInt(type));
			destFile.setFileUrl(FILEPATH+user.getId()+"/"+file.getOriginalFilename());
			destFile.setOrderId(orderId);
			orderRecordService.saveOrderFile(destFile);*/
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return JobResponse.successResponse(sb.insert(0, datePath+"/").insert(0, propertyUtil.getFilePrefix()));
		
		
		
		
		
		
	}
	
	
	
}
