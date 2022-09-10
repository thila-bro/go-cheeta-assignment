/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.src;

/**
 *
 * @author thilan
 */
public class Feedback {
    private int feedbackId;
    private int bookingId;
    private int tripRate;
    private String feedback;

    public Feedback(int feedbackId, int bookingId, int tripRate, String feedback) {
        this.feedbackId = feedbackId;
        this.bookingId = bookingId;
        this.tripRate = tripRate;
        this.feedback = feedback;
    }

    public int getFeedbackId() {
        return feedbackId;
    }

    public void setFeedbackId(int feedbackId) {
        this.feedbackId = feedbackId;
    }

    public int getBookingId() {
        return bookingId;
    }

    public void setBookingId(int bookingId) {
        this.bookingId = bookingId;
    }

    public int getTripRate() {
        return tripRate;
    }

    public void setTripRate(int tripRate) {
        this.tripRate = tripRate;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }
}
