package br.edu.infnet.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@SessionAttributes("user")
@Controller
public class AppController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String loginScreen() {
        return "login1";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public  String logoutScreen() {
        return "redirect:/";
    }

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String indexScreen(ModelMap model) {
        return "index";
    }
}
