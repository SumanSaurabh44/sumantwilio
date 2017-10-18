package com.shubham.controller;

import com.twilio.sdk.TwilioRestClient;
import com.twilio.sdk.TwilioRestException;
import com.twilio.sdk.resource.factory.MessageFactory;
import com.twilio.sdk.resource.instance.Account;
import com.twilio.sdk.resource.instance.Message;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

import java.util.ArrayList;
import java.util.List;

public class Example {

  // Find your Account Sid and Token at twilio.com/user/account
  public static final String ACCOUNT_SID = "ACb5511f65b2c16c2ec2351e2b229b0033";
  public static final String AUTH_TOKEN =  "15230c5612c0e36ec8a0f9e75a357e54";

  public void SMS(String phone, String msg) throws TwilioRestException {
	  TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN);

      Account account = client.getAccount();

      
      MessageFactory messageFactory = account.getMessageFactory();
      List<NameValuePair> params = new ArrayList<NameValuePair>();
      params.add(new BasicNameValuePair("To", phone)); // Replace with a valid phone number for your account.
      params.add(new BasicNameValuePair("From", "+19082937511")); // Replace with a valid phone number for your account.
      params.add(new BasicNameValuePair("Body", msg));
      Message sms = messageFactory.create(params);
  }
}
