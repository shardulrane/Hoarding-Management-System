/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package basic;

import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

/**
 *
 * @author shark
 */
public class mailclass {
    public mailclass(String rmail, String messages) {
        //System.out.println("1");
        String senderEmail = "alert.panvelmuncipal@gmail.com";
        String senderPassword = "wearepanvel";
        String receiverEmail = rmail;

          //System.out.println("1");
        Properties properties = new Properties();
        properties.put("mail.smtp.auth", true);
        properties.put("mail.smtp.starttls.enable", true);
        properties.put("mail.smtp.host", "smtp.googlemail.com");
        properties.put("mail.smtp.port", "587");

        Authenticator authenticator = new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(senderEmail, senderPassword);
            }
        };

        Session session = Session.getInstance(properties, authenticator);
        //System.out.println("1");

        try {
            //  System.out.println("1");
            Message message = new MimeMessage(session);

            InternetAddress from = new InternetAddress(senderEmail);
            message.setFrom(from);

            InternetAddress to = new InternetAddress(receiverEmail);
            message.addRecipient(Message.RecipientType.TO, to);

            String subject = "Panvel-Notification";
            message.setSubject(subject);

            //now creating the message part
            Multipart multipart = new MimeMultipart();
            String messagess = messages;
            MimeBodyPart messageBodyPart1 = new MimeBodyPart();
            messageBodyPart1.setText(messagess);
            multipart.addBodyPart(messageBodyPart1);//////////////
            // String filename1="C:/Users/Shardul Rane/Desktop/emailSmtp/sendMail.java";
            // messageBodyPart1.attachFile(filename1);

            //Multipart multipart=new MimeMultipart();
            // multipart.addBodyPart(messageBodyPart1);
            //sending the complete message parts
            message.setContent(multipart);

            //sending the message 
            Transport.send(message);

            System.out.println("mail send at: "+rmail);

        } catch (Exception e) {
            System.out.println("error found " + e.getCause());
            System.out.println("error found " + e.getMessage());

        }
    }

    public boolean mail() {

        return true;
    }
}
