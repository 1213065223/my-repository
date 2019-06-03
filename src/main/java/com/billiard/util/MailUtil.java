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
	/*//�ʼ�������������    // QQ����� SMTP ��������ַΪ: smtp.qq.com   
	private static String myEmailSMTPHost = "smtp.qq.com";        
	//����������   
	private static String myEmailAccount = "1213065223@qq.com";        
	//�������������루��Ȩ�룩    //�ڿ���SMTP����ʱ���ȡ��һ����Ȩ�룬����Ȩ����������    
	private static String myEmailPassword = "";*/

	public static void sendEmail(String myEmailSMTPHost,String myEmailAccount,String myEmailPassword, String toEmailAddress,String nickname, String emailTitle, String emailContent) throws Exception{ 
		Properties props = new Properties();      
		// ����debug����       
		props.setProperty("mail.debug", "true");  
		// ���ͷ�������Ҫ�����֤        
		props.setProperty("mail.smtp.auth", "true");              
		// �˿ں�       
		//props.put("mail.smtp.port", 465);              
		// �����ʼ�������������    
		props.setProperty("mail.smtp.host", myEmailSMTPHost);           
		// �����ʼ�Э������       
		props.setProperty("mail.transport.protocol", "smtp");                
		/**SSL��֤��ע����Ѷ�����ǻ���SSL���ܵģ�������Ҫ�����ſ���ʹ��**/     
		MailSSLSocketFactory sf = new MailSSLSocketFactory();      
		sf.setTrustAllHosts(true);              
		//�����Ƿ�ʹ��ssl��ȫ���ӣ�һ�㶼ʹ�ã�      
		props.put("mail.smtp.ssl.enable", "true");       
		props.put("mail.smtp.ssl.socketFactory", sf);           
		//�����Ự     
		Session session = Session.getInstance(props);              
		//��ȡ�ʼ�����        //���͵���Ϣ�����ڹ۲���ģʽ������Ƶ�     
		Message msg = new MimeMessage(session);                
		//�����ʼ�����       
		msg.setSubject(emailTitle);           
		//�����ʼ�����        //ʹ��StringBuilder����ΪStringBuilder�����ٶȻ��String�죬�����̰߳�ȫ��Ҳ����    
		StringBuilder builder = new StringBuilder();               
		//д������    
		builder.append("\n" + emailContent);             
		//д���ҵĹ���      
		//builder.append("\n������" + "https://www.hbuecx.club");             
		//����Ҫ��������ַ����ĸ�ʽ     
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");            
		//�����ݺ�����ʼ����͵�ʱ��        
		builder.append("\n时间" + sdf.format(new Date()));          
		//������ʾ�ķ���ʱ��       
		msg.setSentDate(new Date());             
		//�����ʼ�����     
		msg.setText(builder.toString());                
		//���÷���������        // InternetAddress �����������ֱ�Ϊ: ����������, ��ʾ���ǳ�(ֻ������ʾ, û���ر��Ҫ��), �ǳƵ��ַ�������        
		msg.setFrom(new InternetAddress(myEmailAccount,nickname, "UTF-8"));           
		//�õ��ʲ����      
		Transport transport = session.getTransport();                
		//�����Լ��������˻�        //���벻���Լ�QQ��������룬�����ڿ���SMTP����ʱ����ȡ������Ȩ��        //connect(host, user, password)       
		transport.connect( myEmailSMTPHost, myEmailAccount, myEmailPassword);               
		//�����ʼ�      
		transport.sendMessage(msg, new Address[] { new InternetAddress(toEmailAddress) });            
		transport.close();    
	}

    public static void main(String[] args) {
    	try {
			//sendEmail("18740029390@163.com", "����", "����һ����Ӫ�����ʼ�");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
