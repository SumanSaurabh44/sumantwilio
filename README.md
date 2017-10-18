**Welcome to SHUBHAM RESUME FILTER project.**

***Project URL: http://shubhamtwilio.herokuapp.com***

Import tilio SDKs
>>
```nodejs
import com.twilio.sdk.TwilioRestClient;
import com.twilio.sdk.TwilioRestException;
import com.twilio.sdk.resource.factory.MessageFactory;
import com.twilio.sdk.resource.instance.Account;
import com.twilio.sdk.resource.instance.Message;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
```

Initialize ACCOUNT_SID and AUTH_TOKEN.
>>
```nodejs
 public static final String ACCOUNT_SID = "****************************";
 public static final String AUTH_TOKEN = "****************************";
```
Connect client and create object of twilio account.
>>
```nodejs
TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN);
Account account = client.getAccount();
```

Full Twilio method with class: 
>>
```nodejs
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
  public static final String ACCOUNT_SID = "ACa71408f6a27b278866a41d955d05921e";
  public static final String AUTH_TOKEN = "454392e296ae9699965432d4bfdc7fe9";
  public void SMS(String phone, String msg) throws TwilioRestException {
	    TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN);
      Account account = client.getAccount();
      MessageFactory messageFactory = account.getMessageFactory();
      List<NameValuePair> params = new ArrayList<NameValuePair>();
      params.add(new BasicNameValuePair("To", phone)); // Replace with a valid phone number for your account.
      params.add(new BasicNameValuePair("From", "+14194821780")); // Replace with a valid phone number for your account.
      params.add(new BasicNameValuePair("Body", msg));
      Message sms = messageFactory.create(params);
  }
}
```
