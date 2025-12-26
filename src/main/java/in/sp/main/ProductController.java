package in.sp.main;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import in.sp.main.entity.Product;
import in.sp.main.services.ProductService;

@Controller
public class ProductController {
 
	@Autowired
   ProductService productService;
	
	@GetMapping("/addProduct")
	public String openAddproductPage(Model model) {
		model.addAttribute("productattr", new Product());
		return "add_product";
	}
	@PostMapping("/addCourseForm")
	public String addCourseDetails(
			@ModelAttribute("productattr") Product product,
			@RequestParam("courseimage") MultipartFile CourseImg,
			@RequestParam("trainerimage") MultipartFile trainerImg)
	{
		boolean status1 =  saveImage(CourseImg);
		if(!status1) {
			System.out.println("course image no uploaded due to some error");
		}
	boolean status2=	saveImage(trainerImg);
		if(!status2) {
			System.out.println("trainer image no uploaded due to some error");
		}
		boolean status =  productService.addProductService(product);
			if(status) {
				System.out.println("success...........");
			}else {
				System.out.println("failed.......");
			}
		return "add_product";
	}
	private boolean saveImage(MultipartFile file) {
		boolean status = false;
		try {
			String fileName = file.getOriginalFilename();
			Path filePath = Paths.get("src/main/resources/static/uploads", fileName);
			Files.copy(file.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);
			status = true;
		}catch (Exception e) {
			e.printStackTrace();
			status = false;
			// TODO: handle exception
		}
		return status;
		
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
