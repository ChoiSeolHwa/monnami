package com.monnami;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimeUtility;



public class MailSend {
	
	
	private String selec;
	private String senderTel;
	private String check;
	private String receiverEmail;
	private String senderEmail;
	private String senderName;
	private String subject;
	private String content;
	private String fileFullPath; 
	private String originalFileName;
	
	private String mailHost;//메일서버
	private String mailType;//메일타입
	
	public String getSelec() {
		return selec;
	}

	public void setSelec(String selec) {
		this.selec = selec;
	}

	public String getSenderTel() {
		return senderTel;
	}

	public void setSenderTel(String senderTel) {
		this.senderTel = senderTel;
	}

	public String getCheck() {
		return check;
	}

	public void setCheck(String check) {
		this.check = check;
	}

	public MailSend(){
		this.mailHost="localhost";
		this.mailType="text/html;charset=UTF-8";	
	}
	
	public MailSend(String mailHost){
		this.mailHost="mailHost";
		this.mailType="text/html;charset=UTF-8";	
	}

	public String getReceiverEmail() {
		return receiverEmail;
	}

	public void setReceiverEmail(String receiverEmail) {
		this.receiverEmail = receiverEmail;
	}

	public String getSenderEmail() {
		return senderEmail;
	}

	public void setSenderEmail(String senderEmail) {
		this.senderEmail = senderEmail;
	}

	public String getSenderName() {
		return senderName;
	}

	public void setSenderName(String senderName) {
		this.senderName = senderName;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getFileFullPath() {
		return fileFullPath;
	}

	public void setFileFullPath(String fileFullPath) {
		this.fileFullPath = fileFullPath;
	}

	public String getOriginalFileName() {
		return originalFileName;
	}

	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}

	public String getMailHost() {
		return mailHost;
	}

	public void setMailHost(String mailHost) {
		this.mailHost = mailHost;
	}

	public String getMailType() {
		return mailType;
	}

	public void setMailType(String mailType) {
		if(mailType.equalsIgnoreCase("TEXT")){
			this.mailType = "text/plain;charset=UTF-8";
		}else{
			this.mailType = "text/html;charset=UTF-8";
		}
		
	}
	public boolean sendMail(){
		
		try {
			
			Properties props=System.getProperties();
			props.put("mail.smtp.host", mailHost);
			
			Session session=Session.getDefaultInstance(props,null);
			
			//메일을 보낼 메세지 클래스 생성
			Message msg=new MimeMessage(session);
			
			//보내는사람
			if(senderName==null||senderName.equals("")){
				msg.setFrom(new InternetAddress(senderEmail));				
			}else{
				msg.setFrom(new InternetAddress(senderEmail,senderName,"UTF-8"));
			}
			
			//받는사람
			msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(receiverEmail));
			
			//제목
			msg.setSubject(subject);
			
			//html형식인 경우 엔터를 <br>로 변환
			if(mailType.indexOf("text/html")!=-1){
				content=content.replaceAll("\n", "<br>");
			}
			
			//메일내용과 파일을 MimeBodyPart로 나누어 담는다
			makeMessage(msg);
			
			msg.setHeader("X-Mailer", senderName);
			
			
			//메일보낸 날짜
			msg.setSentDate(new Date());
			
			//메일전송
			Transport.send(msg);
			
			//메일전송후 파일삭제
			if(fileFullPath!=null){
				File f=new File(fileFullPath);
				
				if(f.exists()){
					f.delete();
				}
			}
			
		} catch (MessagingException e) {	
			System.out.println(e.toString());
			return false;
			
		} catch (Exception e) {
			System.out.println(e.toString());
			return false;
		}
		return true;
		
	}
	
	private void makeMessage(Message msg) throws MessagingException{
		if(fileFullPath==null||fileFullPath.equals("")){
			//파일을 첨부하지 않았다면
			msg.setText(content);
			msg.setHeader("Content-Type", mailType);	//메일내용만 보냄
		}else{
			//파일을 첨부한 경우
			//1.메일내용
			MimeBodyPart mbp1=new MimeBodyPart();
			
			mbp1.setText(content);
			mbp1.setHeader("Content-Type", mailType);
			
			//2.첨부파일
			MimeBodyPart mbp2=new MimeBodyPart();
			FileDataSource fds=new FileDataSource(fileFullPath);//파일 실제 물리적주소
			mbp2.setDataHandler(new DataHandler(fds));
			
			try {
				
				if(originalFileName==null||originalFileName.equals("")){
					mbp2.setFileName(MimeUtility.encodeWord(fds.getName()));
					
					
				}else{
					mbp2.setFileName(MimeUtility.encodeWord(originalFileName));
					
				}
			} catch (UnsupportedEncodingException e) {
				System.out.println(e.toString());
			}
			Multipart mp=new MimeMultipart();
			mp.addBodyPart(mbp1);
			mp.addBodyPart(mbp2);
			
			msg.setContent(mp);
			
			
			
			
			
		}
		
		
		
		
		
		
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
