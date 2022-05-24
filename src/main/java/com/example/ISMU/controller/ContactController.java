package com.example.ISMU.controller;

import com.example.ISMU.domain.Contact;
import com.example.ISMU.service.MailSender;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
public class ContactController {
    @Autowired
    private MailSender mailSender;
    @GetMapping("/contact")
    public String contact(Map<String,Object> model) {
        return "contact";
    }
    @PostMapping("/contact")
    public String contactTrans(@RequestParam String name,@RequestParam String email,@RequestParam String subject,@RequestParam String message, Model model){
        Contact contact = new Contact(name,email,subject,message);
        String messageall = String.format("От: "+ name+ "\n Email: " + email +"\n Сообщение: \n" + message);
        mailSender.send("Sanyo.ghost@yandex.ru",subject, messageall);
        return "contact";
    }
}


