package in.sp.main.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.sp.main.entity.Employee;
import in.sp.main.repository.EmpRepository;

@Service
public class EmpServiceImpl implements EmpService{
	
	@Autowired
	EmpRepository empRepository;

	@Override
	public boolean addEmployeeService(Employee emp) {
		boolean status = false;
		// TODO Auto-generated method stub
		try {
		empRepository.save(emp);
		status = true;
		}
		catch (Exception e) {
			status = false;
			e.printStackTrace();
			// TODO: handle exception
		}
		
		return status;
	}
	@Override
	public List<Employee> getAllEmployeesService()
	{
		
		return empRepository.findAll();
	}
	@Override
	public Employee authenticate(String email) {
		Employee emp = empRepository.findByEmail(email);
		return emp;
	}
	
    @Override
    public boolean deleteEmployee(String email)
    { 
	  boolean status = false; 
	    try 
	     {
		    empRepository.deleteByEmail(email);
		    status = true; 
		 } 
	     catch (Exception e)
	     {
		   e.printStackTrace(); 
		    status = false;
	      } 
	 return status;
	 }
    
    public boolean updateEmployeeService(Employee emp) {
    	boolean status = false;
    	try {
    	
          Employee ExistingEmployee = 	empRepository.findByEmail(emp.getEmail());
         if(ExistingEmployee!=null) {
          ExistingEmployee.setName(emp.getName());
        //  ExistingEmployee.setEmail(emp.getEmail());
    	  ExistingEmployee.setPassword(emp.getPassword());
    	  ExistingEmployee.setPhoneno(emp.getPhoneno());
        	empRepository.save(ExistingEmployee);
    	  status = true;
         }
    	 }catch (Exception e) {
    		 e.printStackTrace();
    		 status = false;
		}
    	
    	
    	return status;
    }
	 
	

}
