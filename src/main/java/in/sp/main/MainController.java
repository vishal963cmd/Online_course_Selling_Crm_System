package in.sp.main;

import java.util.List;



import javax.naming.Binding;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import in.sp.main.entity.Employee;
import in.sp.main.services.EmpService;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class MainController 

{
	@Autowired
	EmpService empService;
	
	@GetMapping("/")
	public String openIndexPage()
	{
		return "index";
	}
	@GetMapping("/home")
	public String openHomePage()
	{
		return "index";
	}
	
	
	@GetMapping("/login")
	public String openLoginPage()
	{
		return "login";
	}
	
	@GetMapping("/emplist")
	public String openEmpListPage(Model model)
	{
		List<Employee>list_emp = empService.getAllEmployeesService();
		model.addAttribute("model_list_emp", list_emp);
		return "employees_list";
	}
	@GetMapping("/profile_admin")
	public String openAdminProfilePage()
	{
		return "profile_admin";
	}
	
	@PostMapping ("/LoginForm")
	public String loginform
	      (
			@RequestParam("email1") String myemail,
			@RequestParam("pass1") String mypass,
			Model model,
			HttpSession session
			)
	{
		String page = "login";
		if(myemail.equals("admin@gmail.com") && mypass.equals("admin123"))
		{
			page =  "profile_admin";
			
		}else
		{
			Employee emp = empService.authenticate(myemail);
			if(emp!=null && emp.getPassword().equals(mypass))
			{
				session.setAttribute("session_employee", emp);
				page="home_employee";
			}
			else
			{
				model.addAttribute("model_error", "Email or Password didn't matchrd");
				page = "login";
			}
			
			
			
		}
		return page;
	}
	@GetMapping("/addEmployees")
	public String openAddEmployeePage(Model model) {
		model.addAttribute("modelEmpattr", new Employee());
		return"addEmployees";
	}
	@PostMapping("/addEmpForm")
	public String registerEmployeeForm(
			@Valid @ModelAttribute("modelEmpattr") Employee emp,
			Model model
			
			
			
	/*
	 * @RequestParam("name1") String empname,
	 * 
	 * @RequestParam("email1") String empemail,
	 * 
	 * @RequestParam("pass1") String empppass,
	 * 
	 * @RequestParam("phoneno1") String empphoneno, Model model
	 */
			)
	{
		
		
		/*
		 * Employee emp = new Employee(); emp.setName(empname); emp.setEmail(empemail);
		 * emp.setPassword(empppass); emp.setPhoneno(empphoneno);
		 */
		boolean status= empService.addEmployeeService(emp);
		if(status) 
		{
			model.addAttribute("model_success", "Employee added succesfully");
			
		}
		else
		{
			model.addAttribute("model_error", "Employee not added ");
		}
			emp.setName("");
			emp.setEmail("");
			emp.setPassword("");
			emp.setPhoneno("");
		
		return "addEmployees";
	}
	@GetMapping("/deleteEmployee")
	public String deleteEmployee(@RequestParam("empEmail")String email, Model model, RedirectAttributes redirectArrtibutes) 
	{
		boolean status =empService.deleteEmployee(email);
		if(status)
		{
			model.addAttribute("model_success", "employee delete successfully");
		}
		else
		{
			model.addAttribute("model_error", "employee not delete due to some error");
		}
		
		
		  List<Employee> list_emp = empService.getAllEmployeesService();
		  model.addAttribute("model_list_emp", list_emp);
		 
		
	    
		return "employees_list";
	}
	@GetMapping("/editEmployee")
	public String openEditEmployeePage(@RequestParam("empEmail")String email , Model model ) {
		
		Employee emp = empService.authenticate(email);
		model.addAttribute("model_emp", emp);
		model.addAttribute("modelEmpattr", new Employee());
		
		return "edit_Employee";
	}
	
	@PostMapping("/updateEmpForm")
	public String updateEmployeeForm(
			@Valid @ModelAttribute("modelEmpattr") Employee emp,
		
			Model model)
	{
		
		
		
		
		boolean status= empService.updateEmployeeService(emp);
		if(status) 
		{
			model.addAttribute("model_success", "Employee updated succesfully");
			
		}
		else
		{
			model.addAttribute("model_error", "Employee not not updated due to some error ");
		}
		
		 
		 
		
		return "edit_Employee";
	}
	@GetMapping("/profileEmployee")
	public String openEmpProfile() {
		return "profile_employee";
	}
	
	 @GetMapping("/homeEmployee")
	public String openEmpHome() {
		return "home_employee";
	}
	 
	 
	
	
}
				
				
				
				
				
				
				
				
				