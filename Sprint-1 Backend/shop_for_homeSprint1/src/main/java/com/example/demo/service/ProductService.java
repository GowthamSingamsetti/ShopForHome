package com.example.demo.service;
import com.example.demo.entity.ProductEntity;
import java.util.List;


public interface ProductService {

	ProductEntity saveProduct(ProductEntity productentity);

	List<ProductEntity> fetchProductList();

	ProductEntity updateProduct(ProductEntity productentity,
								Long productId);

	void deleteProductById(Long productId);
}


