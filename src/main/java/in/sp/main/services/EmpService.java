package in.sp.main.services;

import java.util.List;

import in.sp.main.entity.Employee;

public interface EmpService 
{
	public Employee authenticate(String email);
	public boolean addEmployeeService(Employee emp); 
	public List <Employee> getAllEmployeesService();
	 public boolean deleteEmployee(String email); 
	 public boolean updateEmployeeService(Employee emp);
		
	
	

}
