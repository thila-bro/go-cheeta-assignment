/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.bl;

import assignment.src.Booking;
import assignment.src.City;
import assignment.src.Customer;
import assignment.src.Driver;
import assignment.src.Vehicle;
import assignment.src.VehicleType;
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
    private final AdminBL adminBl       = AdminBL.getInstance();
    private final CustomerBL customerBl = CustomerBL.getInstance();
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

    public boolean sendBookingToDriver(int customerId) {
        Customer customer   = adminBl.getCustomerById(customerId);
        Booking booking     = customerBl.getCustomerLastBookingByCustomerId(customerId);
        City dropCity       = adminBl.getCityById(booking.getDropOffCityId());
        Vehicle vehicle     = adminBl.getVehicleById(booking.getVehicleTypeId());
        Driver driver       = adminBl.getDriverById(vehicle.getDriverId());
        
        String subject = "Booking Request";
        String body = this.driverBookingRequest();
        
        body = body.replace("[customer_name]", customer.getFirstName() + " " + customer.getLastName());
        body = body.replace("[customer_mobile]", customer.getMobile());
        body = body.replace("[estimate_price]", String.valueOf(booking.getPrice()));
        body = body.replace("[drop_city]", dropCity.getName());
        

//        final String toEmail = "thilanmaduranga73@gmail.com";
        final String toEmail = driver.getEmail();

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
    
    public boolean sendCompleteBookingMail(int bookingId) {
        Booking booking     = adminBl.getBookingById(bookingId);
        Customer customer   = adminBl.getCustomerById(booking.getCustomerId());
        City dropCity       = adminBl.getCityById(booking.getDropOffCityId());
        Vehicle vehicle     = adminBl.getVehicleById(booking.getVehicleId());
        VehicleType vType   = adminBl.getVehicleTypeById(vehicle.getTypeId());
        Driver driver       = adminBl.getDriverById(vehicle.getDriverId());
        
        String subject = "Go Cheeta Invoice";
        String body = this.customerBookingComplete();
        
        body = body.replace("[customer_name]", customer.getFirstName() + " " + customer.getLastName());
        body = body.replace("[customer_mobile]", customer.getMobile());
        body = body.replace("[estimate_price]", String.valueOf(booking.getPrice()));
        body = body.replace("[drop_city]", dropCity.getName());
        body = body.replace("[vehilce_type]", vType.getVehicleType());
        body = body.replace("[invoice_id]", "000"+bookingId);
        body = body.replace("[rate_per_km]", String.valueOf(vehicle.getRatePerKm()));
        body = body.replace("[total_price]", String.valueOf(booking.getPrice()));
        body = body.replace("[distance]", String.valueOf(booking.getDistance()));    
        body = body.replace("[initial_cost]", String.valueOf(vType.getInitialCost()));
        

        final String toEmail = "thilanmaduranga73@gmail.com";
//        final String toEmail = customer.getEmail();

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
    
    private String customerBookingComplete() {
        return "<table class=\"body-wrap\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; background-color: transparent; margin: 0;\">\n" +
"                                    <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\n" +
"                                        <td style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\" valign=\"top\"></td>\n" +
"                                        <td class=\"container\" width=\"600\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; display: block !important; max-width: 600px !important; clear: both !important; margin: 0 auto;\" valign=\"top\">\n" +
"                                            <div class=\"content\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; max-width: 600px; display: block; margin: 0 auto; padding: 20px;\">\n" +
"                                                <table class=\"main\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; border-radius: 3px;  margin: 0; border: none;\">\n" +
"                                                    <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\n" +
"                                                        <td class=\"content-wrap aligncenter\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;padding: 20px; color: #495057; border: 2px solid #1d1e3a;border-radius: 7px; background-color: #fff;\" align=\"center\" valign=\"top\">\n" +
"                                                            <table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\n" +
"                                                                <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\n" +
"                                                                    <td class=\"content-block\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\" valign=\"top\">\n" +
"                                                                        <h2 class=\"aligncenter\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,'Lucida Grande',sans-serif; box-sizing: border-box; font-size: 24px; color: #000; line-height: 1.2em; font-weight: 400; text-align: center; margin: 40px 0 0;\" align=\"center\">Thanks for using <b style=\"font-weight: 600; text-transform: uppercase;\">Go Cheeta</b>.</h2>\n" +
"                                                                    </td>\n" +
"                                                                </tr>\n" +
"                                                                <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\n" +
"                                                                    <td class=\"content-block aligncenter\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: center; margin: 0; padding: 0 0 20px;\" align=\"center\" valign=\"top\">\n" +
"                                                                        <table class=\"invoice\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; text-align: left; width: 80%; margin: 40px auto;\">\n" +
"                                                                            <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\n" +
"                                                                                <td style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;\" valign=\"top\"><b>[vehilce_type] Ride</b>\n" +
"                                                                                    <br style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" />Invoice #[invoice_id]\n" +
"                                                                                </td>\n" +
"                                                                            </tr>\n" +
"                                                                            <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\n" +
"                                                                                <td style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;\" valign=\"top\">\n" +
"                                                                                    <table class=\"invoice-items\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; margin: 0;\">\n" +
"                                                                                        <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\n" +
"                                                                                            <td style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;\" valign=\"top\">Initial Cost\n" +
"                                                                                            </td>\n" +
"                                                                                            <td class=\"alignright\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;\" align=\"right\" valign=\"top\">Rs. [initial_cost]\n" +
"                                                                                            </td>\n" +
"                                                                                        </tr>\n" +
"                                                                                        <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\n" +
"                                                                                            <td style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;\" valign=\"top\">Trip Distance\n" +
"                                                                                            </td>\n" +
"                                                                                            <td class=\"alignright\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;\" align=\"right\" valign=\"top\">[distance] Km\n" +
"                                                                                            </td>\n" +
"                                                                                        </tr>\n" +
"                                                                                        <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\n" +
"                                                                                            <td style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;\" valign=\"top\">Rate Per Km\n" +
"                                                                                            </td>\n" +
"                                                                                            <td class=\"alignright\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;\" align=\"right\" valign=\"top\">Rs. [rate_per_km]\n" +
"                                                                                            </td>\n" +
"                                                                                        </tr>\n" +
"                                                                                        <tr class=\"total\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\n" +
"                                                                                            <td class=\"alignright\" width=\"80%\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top-width: 2px; border-top-color: #333; border-top-style: solid; border-bottom-color: #333; border-bottom-width: 2px; border-bottom-style: solid; font-weight: 700; margin: 0; padding: 5px 0;\" align=\"right\" valign=\"top\">Total\n" +
"                                                                                            </td>\n" +
"                                                                                            <td class=\"alignright\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top-width: 2px; border-top-color: #333; border-top-style: solid; border-bottom-color: #333; border-bottom-width: 2px; border-bottom-style: solid; font-weight: 700; margin: 0; padding: 5px 0;\" align=\"right\" valign=\"top\">Rs. [total_price]\n" +
"                                                                                            </td>\n" +
"                                                                                        </tr>\n" +
"                                                                                    </table>\n" +
"                                                                                </td>\n" +
"                                                                            </tr>\n" +
"                                                                        </table>\n" +
"                                                                    </td>\n" +
"                                                                </tr>\n" +
"                                                                <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\n" +
"                                                                    <td class=\"content-block aligncenter\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: center; margin: 0; padding: 0 0 20px;\" align=\"center\" valign=\"top\">\n" +
"                                                                        Go Cheeta Inc. 2896 High Level Road, Nugegoda, NG, 72823\n" +
"                                                                    </td>\n" +
"                                                                </tr>\n" +
"        \n" +
"                                                                <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\n" +
"                                                                    <td class=\"content-block\" style=\"text-align: center;font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0;\" valign=\"top\">\n" +
"                                                                        This is a system generated email\n" +
"                                                                    </td>\n" +
"                                                                </tr>\n" +
"                                                            </table>\n" +
"                                                        </td>\n" +
"                                                    </tr>\n" +
"                                                </table>\n" +
"                                            </div>\n" +
"                                        </td>\n" +
"                                    </tr>\n" +
"                                </table>";
    }

    private String driverBookingRequest() {
        return "<table class=\"body-wrap\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; background-color: transparent; margin: 0;\">\n" +
"                                    <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\n" +
"                                        <td style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\" valign=\"top\"></td>\n" +
"                                        <td class=\"container\" width=\"600\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; display: block !important; max-width: 600px !important; clear: both !important; margin: 0 auto;\" valign=\"top\">\n" +
"                                            <div class=\"content\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; max-width: 600px; display: block; margin: 0 auto; padding: 20px;\">\n" +
"                                                <table class=\"main\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; border-radius: 7px; background-color: #fff; color: #495057; margin: 0; box-shadow: 0 0.75rem 1.5rem rgba(18,38,63,.03);\" bgcolor=\"#fff\">\n" +
"                                                    <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\n" +
"                                                        <td class=\"alert alert-warning\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 16px; vertical-align: top; color: #fff; font-weight: 500; text-align: center; border-radius: 7px 7px 0 0; background-color: #556ee6; margin: 0; padding: 20px;\" align=\"center\" bgcolor=\"#71b6f9\" valign=\"top\">\n" +
"                                                            Notifying: You've requested by [customer_name]\n" +
"                                                        </td>\n" +
"                                                    </tr>\n" +
"                                                    <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\n" +
"                                                        <td class=\"content-wrap\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 20px;\" valign=\"top\">\n" +
"                                                            <table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\n" +
"                                                                <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\n" +
"                                                                    <td class=\"content-block\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\" valign=\"top\">\n" +
"                                                                        You have booking to <strong style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><span style=\"background-color: #f46a6a;color: #ffffff;padding: 5px 8px; font-size: 12px; border-radius: 4px\">\n" +
"                                                                            [drop_city]</span></strong>\n" +
"                                                                    </td>\n" +
"                                                                </tr>\n" +
"                                                                <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\n" +
"                                                                    <td class=\"content-block\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\" valign=\"top\">\n" +
"                                                                        You have been requested by [customer_name] holding mobile number [customer_mobile] for a trip to [drop_city]. we have estimated to Rs. [estimate_price] and send to customer.\n" +
"                                                                    </td>\n" +
"                                                                </tr>\n" +
"                                                                <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\n" +
"                                                                    <td class=\"content-block\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\" valign=\"top\">\n" +
"                                                                        Thanks for being with <b>Go Cheeta</b>\n" +
"                                                                    </td>\n" +
"                                                                </tr>\n" +
"                                                                <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\n" +
"                                                                    <td class=\"content-block\" style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\" valign=\"top\">\n" +
"                                                                        <b>Go Cheeta System</b>\n" +
"                                                                    </td>\n" +
"                                                                </tr>\n" +
"        \n" +
"                                                                <tr style=\"font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\n" +
"                                                                    <td class=\"content-block\" style=\"text-align: center;font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0;\" valign=\"top\">\n" +
"                                                                        This is a system generated email\n" +
"                                                                    </td>\n" +
"                                                                </tr>\n" +
"                                                            </table>\n" +
"                                                        </td>\n" +
"                                                    </tr>\n" +
"                                                </table>\n" +
"                                            </div>\n" +
"                                        </td>\n" +
"                                    </tr>\n" +
"                                </table>";
    }

    
    
}
