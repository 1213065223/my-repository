package com.billiard.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.NoSuchProviderException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.sun.mail.util.MailSSLSocketFactory;

public class MailUtil {

	public static void sendEmail(String myEmailSMTPHost,String myEmailAccount,String myEmailPassword, String toEmailAddress,String nickname, String emailTitle, String emailContent) throws Exception{ 
		Properties props = new Properties();      
		props.setProperty("mail.debug", "true");  
		props.setProperty("mail.smtp.auth", "true");              
		props.setProperty("mail.smtp.host", myEmailSMTPHost);           
		props.setProperty("mail.transport.protocol", "smtp");                
		MailSSLSocketFactory sf = new MailSSLSocketFactory();      
		sf.setTrustAllHosts(true);              
		props.put("mail.smtp.ssl.enable", "true");       
		props.put("mail.smtp.ssl.socketFactory", sf);           
		Session session = Session.getInstance(props);              
		Message msg = new MimeMessage(session);                
		msg.setSubject(emailTitle);           
		StringBuilder builder = new StringBuilder();               
		builder.append("\n" + emailContent);             
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");            
		builder.append("\n  时间  ：     " + sdf.format(new Date()));          
		msg.setSentDate(new Date());             
		msg.setText(builder.toString());                
		msg.setFrom(new InternetAddress(myEmailAccount,nickname, "UTF-8"));           
		Transport transport = session.getTransport();                
		transport.connect( myEmailSMTPHost, myEmailAccount, myEmailPassword);               
		transport.sendMessage(msg, new Address[] { new InternetAddress(toEmailAddress) });            
		transport.close();    
	}

    public static void main(String[] args) {
    	try {
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
