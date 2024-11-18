package com.artemyakkonen.spring.mvc;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
    public String showEmpDetails(@ModelAttribute("employee") Employee emp){

        String name = emp.getName();
        emp.setName("Mrr " + name);
        String surname = emp.getSurname();
        emp.setSurname(surname + "!");
        int salary = Integer.parseInt(emp.getSalary());
        emp.setSalary(String.valueOf(salary * 10));

        return "show-emp-details-view";
    }
}
