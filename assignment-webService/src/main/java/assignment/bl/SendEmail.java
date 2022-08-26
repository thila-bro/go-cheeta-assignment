/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.bl;

import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author thilan
 */
public class SendEmail {
    private Session session;
    
    public SendEmail() {
        final String toEmail = "thilanmaduranga73@gmail.com"; // can be any email id 
        
        final String fromEmail = "thilan@zeldivalanka.com"; //requires valid gmail id
        final String password = "ZLkTh321HG"; // correct password for gmail id
        

        System.out.println("TLSEmail Start");
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.ssl.protocols", "TLSv1.2");

        //create Authenticator object to pass in Session.getInstance argument
        Authenticator auth = new Authenticator() {
            //override the getPasswordAuthentication method
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(fromEmail, password);
            }
        };
        this.session = Session.getInstance(props, auth);
    }
    
    
    public boolean sendBookingToDriver() {
        String subject = "TLSEmail Testing Subject";
        String body  = "<h1>TLSEmail Testing Body</h1>";
        
        final String toEmail = "thilanmaduranga73@gmail.com"; // can be any email id 
        
        
        try {
            MimeMessage msg = new MimeMessage(session);
            //set message headers
            msg.addHeader("Content-type", "text/HTML; charset=UTF-8");
            msg.addHeader("format", "flowed");
            msg.addHeader("Content-Transfer-Encoding", "8bit");

            msg.setFrom(new InternetAddress("system@gocheeta.com", "Go Cheeta"));

            msg.setReplyTo(InternetAddress.parse("contact@gocheeta.com", false));

            msg.setSubject(subject, "UTF-8");

            //msg.setText(body, "UTF-8");
            msg.setContent(body, "text/html");

            msg.setSentDate(new Date());

            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail, false));
            System.out.println("Message is ready");
            Transport.send(msg);

            System.out.println("EMail Sent Successfully!!");
            
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
}
