package tw.member.login;

 import  java.util.*;
 import  javax.mail.*;
 import  javax.mail.internet.*;

public class email {
	public String smtp(String to,String from) {
		String result;
		int number = (int)(Math.random()*1000000);
		// Assuming you are sending email from localhost
		String host = "ms7.hinet.net";
		// Get system properties object
		Properties properties = System.getProperties();
		// Setup mail server
		properties.setProperty("mail.smtp.host", host);
		// Get the default Session object.
		Session mailSession = Session.getDefaultInstance(properties);
		try{
		   // Create a default MimeMessage object.
		   MimeMessage message = new MimeMessage(mailSession);
		   
		   // Set From: header field of the header.
		   message.setFrom(new InternetAddress(from));
		   
		   // Set To: header field of the header.
		   message.addRecipient(Message.RecipientType.TO,
		                            new InternetAddress(to));
		   // Set Subject: header field
		   message.setSubject("密碼通知信");
		   
		   // Now set the actual message
		  
		   message.setText("您的密碼:"+number);
		   
		   // Send message
		   Transport.send(message);
		   result = "Sent message successfully....";
		} catch (MessagingException mex) {
		   mex.printStackTrace();
		   result = "Error: unable to send message....";
		}
		return number+"";
	}
}
