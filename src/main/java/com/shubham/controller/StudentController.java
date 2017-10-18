package com.shubham.controller;
import com.sendgrid.SendGrid;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.cfg.Environment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.shubham.model.Blog;
import com.shubham.model.ListItems;
import com.shubham.model.Location;
import com.shubham.service.LocationService;
import com.shubham.model.SmsServiceUser;
import com.shubham.model.Student;
import com.shubham.model.ToDoList;
import com.shubham.controller.Example;
import com.shubham.service.SmsServiceUserService;
import com.shubham.service.ToDoListService;
import com.shubham.service.BlogService;
import com.shubham.service.ListItemsService;
import com.shubham.service.StudentService;
import com.twilio.sdk.TwilioRestException;

import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.SendFailedException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart; 
@Controller
public class StudentController {
//	@Autowired
//	private StudentService studentService;
//
//	@Autowired
//	private SmsServiceUserService smsServiceUserService;
//	
//	@Autowired
//	private LocationService LocationService;
//	
//	@Autowired
//	private BlogService blogService;
//	
//	@Autowired
//	private ToDoListService ToDoListService;
//	
//	@Autowired
//	private ListItemsService ListItemsService;

	@RequestMapping("/")
	public ModelAndView setupForm(Map<String, Object> map){
		Student student = new Student();
		ModelAndView mav = new ModelAndView("index");
		return mav;
	}

	@RequestMapping(value="smsservice", method = RequestMethod.GET)
	public ModelAndView smsservice(@RequestParam(required=false, value="From") String From,
			@RequestParam(required=false, value="Body") String Body,
			HttpServletRequest request, HttpServletResponse response){

//		SmsServiceUser user = new SmsServiceUser();
		String dateAndTime = new SimpleDateFormat("yyyy/MM/dd - h:mm a").format(new Date());
		String dateString=null, timeString =null; int count = 0;
		for (String retval: dateAndTime.split("-")) {
			if(count==0) dateString = retval;
			if(count==1) timeString = retval;
			count++;
		}
		String name = "Anonymous";
		if(From == "9292168151" || From=="+19292168151") name = "Dr. Scharff";

		String pattern="[\\s]";
		String replace="";

		Pattern p= Pattern.compile(pattern);
		Matcher m=p.matcher(Body);

		Body=m.replaceAll(replace);
		System.out.println(Body); 
		TwilioServlet hh = new TwilioServlet();
		try {
			hh.service(request, response, Body, From);
		} catch (IOException e) {
			e.printStackTrace();
		}
		ModelAndView mav = new ModelAndView("twilio");
		System.out.println("twilio");
		return mav;
	}

	@RequestMapping(value="collectData", method = RequestMethod.POST)
	public ModelAndView serviceUserSubmit(
			@RequestParam(required=false, value="name") String name,
			@RequestParam(required=false, value="phone") String phone,
			HttpServletRequest request){
		ModelAndView mav = new ModelAndView("redirect:/");
		String platformUrl = "https://shubhamtwilio.herokuapp.com/";
		String githubUrl = "https://github.com/shubham20yeole/Twilio-Part-2";
		String dateAndTime = new SimpleDateFormat("yyyy/MM/dd - h:mm a").format(new Date());
		String dateString=null, timeString =null; int count = 0;
		for (String retval: dateAndTime.split("-")) {
			if(count==0) dateString = retval;
			if(count==1) timeString = retval;
			count++;
		}
		if(phone.equals("9292168151") || phone.equals("+19292168151")) name = "Dr. Scharff";
		else name = name;

		Example ex = new Example();
		try {
			ex.SMS(phone, "This is the SMS service designed by Shubham Yeole from Pace University Computer Science major. \n\n This SMS service assists guardians of high school students to learn about their children progress reports at school. \n\nIt also inform parents about the new facilities, events and future goals of school. \n\nPlease select the option given below. \n\nA Progress Report.\nB New facilities in school.\nC School future goals.\nD School events. \n\n For example, reply with A or B or C or D to this message\n\n View platform at "+platformUrl+"\nGitHub URL: "+githubUrl);
		} catch (TwilioRestException e) {
			e.printStackTrace();
		}
//		List<SmsServiceUser> users = smsServiceUserService.getAllUsers();
		String sentStatus = "Message sent to "+name+" on "+phone;

		return mav;
	}

	@RequestMapping(value="sms.do", method = RequestMethod.GET)
	public ModelAndView sms(
			@RequestParam(required=false, value="phone") String phone,
			@RequestParam(required=false, value="msg") String msg,
			HttpServletRequest request){

		ModelAndView mav = new ModelAndView("index");
		String drmsg = "Hello, My name is Shubham Yeole. This message is to confirm that you visited my project on Heroku Server. I am reachable at +1 (201)-887 5323. Thank you.";
		Example ex = new Example();
		try {
			ex.SMS(phone, drmsg);
			if(msg==null) msg="Message sent to DR Scharff from ";
			ex.SMS("2018875323", msg+" "+phone);
		} catch (TwilioRestException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String sentStatus = "<i class='material-icons'>check_circle</i> Message sent to "+phone;
		mav.addObject("sentStatus");
		return mav;
	}

}
