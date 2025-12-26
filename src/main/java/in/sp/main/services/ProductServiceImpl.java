package in.sp.main.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.sp.main.entity.Product;
import in.sp.main.repository.ProductRepository;
@Service
public class ProductServiceImpl implements ProductService
{
	@Autowired
	ProductRepository productRepository;
	@Override
	public boolean addProductService(Product product) {
		boolean status = false;
		try {
			productRepository.save(product);
			status = true;
		}catch (Exception e) {
			e.printStackTrace();
			status = false;
			// TODO: handle exception
		}
		
		return status;
	}

}
