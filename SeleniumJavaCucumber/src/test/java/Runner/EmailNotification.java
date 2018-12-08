package Runner;

import java.nio.file.FileSystems;
import java.nio.file.Path;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Address;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
//import javax.mail.*;
//import javax.mail.internet.*;
//import javax.activation.*;


public class EmailNotification {
	public static void sendEmail(){
//	public static void main(String[] args ){
		//String recipient="qa@infrrd.ai";
		//String addresses = "nishant@infrrd.ai,nidhi@infrrd.ai,neha@infrrd.ai,sanjana@infrrd.ai,sweety@infrrd.ai,manish.kumar@infrrd.ai,james@infrrd.ai,kavya@infrrd.ai,trinetra@infrrd.ai,amitbasak@infrrd.ai,vinay@infrrd.ai,anmol@infrrd.ai";
		String addresses = "arjuman@infrrd.ai,arjuman.arju2009@gmail.com";
		  
		// inside of try block instead of using addRecipient()  
		// use addRecipients() 
		  
		// specify the type of field(TO, CC ,BCC) 
		// pass the array of email ids of recipients 
		//message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipients));
		String sender="roostify.auto@gmail.com";
		String host="smtp.gmail.com";
		String pass="168Washu";

		Properties prop = System.getProperties();
		prop.put("mail.smtp.host", host);
		prop.put("mail.smtp.port", "587");
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.user", sender);
        prop.put("mail.smtp.password", pass);
        
        prop.put("mail.smtp.starttls.enable", "true");

		Session session = Session.getDefaultInstance(prop);

		try {
			MimeMessage msg = new MimeMessage(session);
			msg.setFrom(new InternetAddress(sender));
			//msg.addRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
			msg.setRecipients(Message.RecipientType.TO,InternetAddress.parse(addresses));
			msg.setSubject("Test Execution Report");
			//msg.setText("This is test email");
			
			BodyPart mbp1=new MimeBodyPart();
			mbp1.setText("Please find the attached report_cucumber.html report");
			BodyPart mbp2=new MimeBodyPart();
			
			String file_name="report_cucumber.html";
			String file_path="./target/cucumber-reports/"+file_name;
			System.out.println("path is  "+file_path);
			
			DataSource source =new FileDataSource(file_path);
			mbp2.setDataHandler(new DataHandler(source));
			mbp2.setFileName(file_name);
			
			Multipart obj= new MimeMultipart();
			obj.addBodyPart(mbp1);
			obj.addBodyPart(mbp2);
			
			msg.setContent(obj);
			
				
			Transport transport = session.getTransport("smtp");
            transport.connect(host, sender, pass);
            transport.sendMessage(msg, msg.getAllRecipients());
            transport.close();
			
			
		}catch(MessagingException ex) {
			ex.printStackTrace();
		}

	}

}
