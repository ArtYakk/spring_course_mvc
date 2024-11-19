package com.artemyakkonen.spring.mvc;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/employee")
public class MyController {

    @RequestMapping("/")
    public String showFirstView(){
        return "first-view";
    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetails(Model model){
        Employee emp = new Employee();
        emp.setName("Ivan");
        emp.setSurname("Vanin");
        emp.setSalary("750");

        model.addAttribute("employee", emp);

        return "ask-emp-details-view";
    }


    @RequestMapping("/showDetails")
    public String showEmpDetails(@Valid @ModelAttribute("employee") Employee emp,
                                 BindingResult bindingResult){

       // System.out.println("Surname length: " + emp.getSurname().length());

        if(bindingResult.hasErrors()){
            return "ask-emp-details-view";
        } else {
            return "show-emp-details-view";
        }

    }
}
