package com.example.ISMU.controller;

import com.example.ISMU.domain.Message;
import com.example.ISMU.domain.User;
import com.example.ISMU.repos.MessageRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;
import java.util.stream.Collectors;

@Controller
public class MainController {
@Autowired
private MessageRepo messageRepo;

@Value("${upload.path}")
private String uploadPath;

    @GetMapping("/")
    public String greeting(Map<String,Object> model) {
        return "index";
    }
    @GetMapping("/about")
    public String about(Map<String,Object> model) {
        return "about";
    }
    @GetMapping("/administration")
    public String administration(Map<String,Object> model) {
        return "administration";
    }
    @GetMapping("/blog-home")
    public String bloghome(Map<String,Object> model) {
        return "blog-home";
    }
    @GetMapping("/blog-single")
    public String blogsingle(Map<String,Object> model) {
        return "blog-single";
    }

    @GetMapping("/course-details")
    public String coursedetails(Map<String,Object> model) {
        return "course-details";
    }
    @GetMapping("/courses")
    public String courses(Map<String,Object> model) {
        return "courses";
    }
    @GetMapping("/elements")
    public String elements(Map<String,Object> model) {
        return "elements";
    }
    @GetMapping("/event-details")
    public String eventdetails(Map<String,Object> model) {
        return "event-details";
    }
    @GetMapping("/events")
    public String events(Map<String,Object> model) {
        return "events";
    }
    @GetMapping("/faculties")
    public String faculties(Map<String,Object> model) {
        return "faculties";
    }
    @GetMapping("/gallery")
    public String gallery(Map<String,Object> model) {
        return "gallery";
    }
    @GetMapping("/graduates")
    public String graduates(Map<String,Object> model) {
        return "graduates";
    }
    @GetMapping("/internal-regulations")
    public String internalregulations(Map<String,Object> model) {
        return "internal-regulations";
    }
    @GetMapping("/ismu-history")
    public String ismuhistory(Map<String,Object> model) {
        return "ismu-history";
    }
    @GetMapping("/migration-rules")
    public String migrationrules(Map<String,Object> model) {
        return "migration-rules";
    }
    @GetMapping("/preparatory-training-program")
    public String preparatorytrainingprogram(Map<String,Object> model) {
        return "preparatory-training-program";
    }
    @GetMapping("/rectorsword")
    public String rectorsword(Map<String,Object> model) {
        return "rectorsword";
    }
    @GetMapping("/student-campus")
    public String studentcampus(Map<String,Object> model) {
        return "student-campus";
    }
    @GetMapping("/student-life")
    public String studentlife(Map<String,Object> model) {
        return "student-life";
    }
    @GetMapping("/students-geography")
    public String studentgeography(Map<String,Object> model) {
        return "students-geography";
    }
    @GetMapping("/team")
    public String team(Map<String,Object> model) {
        return "team";
    }
    @GetMapping("/tuition-fee")
    public String tuitionfee(Map<String,Object> model) {
        return "tuition-fee";
    }
    @GetMapping("/vicerectors-welcome")
    public String vicerectorswelcome(Map<String,Object> model) {
        return "vicerectors-welcome";
    }



    @GetMapping("/login")
    public String login(Map<String,Object> model) {
        return "login";
    }
@GetMapping("/main")
    public String main(@RequestParam(required = false, defaultValue = "") String filter , Model model){
        Iterable<Message> messages = messageRepo.findAll();
    if(filter != null && !filter.isEmpty()){
        messages = messageRepo.findByTag(filter);
    } else{
        messages=messageRepo.findAll();
    }
        model.addAttribute ("messages", messages);
    model.addAttribute("filter", filter);
        return "main";
    }
@PostMapping("/main")
    public String add(
        @AuthenticationPrincipal User user,
        @Valid Message message,
        BindingResult bindingResult,
        Model model,
        @RequestParam("file") MultipartFile file) throws IOException {
        message.setAuthor(user);
        if(bindingResult.hasErrors()){
            Map<String, String> collector = ControllerUtils.getErrors(bindingResult);
            model.mergeAttributes(collector);
            model.addAttribute("message",message);
        } else {
            if (file != null && !file.getOriginalFilename().isEmpty()) {
                File uploadDir = new File(uploadPath);
                if (!uploadDir.exists()) {
                    uploadDir.mkdir();
                }
                String uuidFile = UUID.randomUUID().toString();
                String resultFilename = uuidFile + "." + file.getOriginalFilename();

                file.transferTo(new File(uploadPath + "/" + resultFilename));

                message.setFilename(resultFilename);
            }
            model.addAttribute("message",null);
            messageRepo.save(message);
        }
        Iterable<Message> messages = messageRepo.findAll();
        model.addAttribute("messages", messages);
        return "main";
    }


}
