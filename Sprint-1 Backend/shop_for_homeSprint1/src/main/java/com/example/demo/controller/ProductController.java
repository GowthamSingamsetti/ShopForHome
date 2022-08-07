package com.example.demo.controller;
import com.example.demo.entity.ProductEntity;
import com.example.demo.service.ProductService;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController

public class ProductController {

	@Autowired private ProductService productService;

	@PostMapping("/products")
	public ProductEntity saveUser(
		@Valid @RequestBody ProductEntity productentity)
	{
		return productService.saveProduct(productentity);
	}

	
	@GetMapping("/products")
	public List<ProductEntity> fetchProductList()
	{
		return productService.fetchProductList();
	}

	
	@PutMapping("/product/{id}")
	public ProductEntity
	updateProduct(@RequestBody ProductEntity productentity,
					@PathVariable("id") Long productId)
	{
		return productService.updateProduct(
			productentity, productId);
	}

	
	@DeleteMapping("/deleteproduct/{id}")
	public String deleteProductById(@PathVariable("id")
									Long Id)
	{
		productService.deleteProductById(
			Id);

		return "Deleted Successfully";
	}
}


