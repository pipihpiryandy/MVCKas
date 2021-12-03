/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kasapp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import kasapp.model.LoginModel;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author piryandyp
 */
@Controller
public class LoginController {
    @RequestMapping(value="/login")
    public ModelAndView Login(HttpServletRequest req,HttpServletResponse Res){
        if(req.getParameter("message")!= null){
            ModelAndView modelandview= new ModelAndView();
            modelandview.addObject("message", req.getParameter("message"));
            return modelandview;
        }
        return new ModelAndView();
    }
    @RequestMapping(value="/login/save")
     public ModelAndView save(@ModelAttribute("emp") LoginModel emp){
         ModelAndView modelandview=new ModelAndView("redirect:/login.html");
         if(emp.getUsername().equalsIgnoreCase("pipih") &&
                 emp.getPassword().equalsIgnoreCase("pipih")){
             return new ModelAndView("redirect:/home.html");
         }else {
             modelandview.addObject("message", "username dan password salah");
         }
        return modelandview; 
     }
    
}
