package com.example.demo.service;
import com.example.demo.entity.ProductEntity;
import com.example.demo.repository.ProductRepository;
import java.util.List;
import java.util.Objects;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service


public class ProductServiceImpl
	implements ProductService {

	@Autowired
	private ProductRepository productRepository;

	
	@Override
	public ProductEntity saveProduct(ProductEntity productentity)
	{
		return productRepository.save(productentity);
	}

	@Override public List<ProductEntity> fetchProductList()
	{
		return (List<ProductEntity>)
			productRepository.findAll();
	}

	@Override
	public ProductEntity
	updateProduct(ProductEntity productentity,
					Long productId)
	{
		ProductEntity pe
			= productRepository.findById(productId)
				.get();

		if (Objects.nonNull(productentity.getProductName())
			&& !"".equalsIgnoreCase(
				productentity.getProductName())) {
			pe.setProductName(
				productentity.getProductName());
		}
		if (Objects.nonNull(productentity.getProductPrice())
				&& !"".equalsIgnoreCase(
					productentity.getProductPrice())) {
				pe.setProductPrice(
					productentity.getProductPrice());
			}
		if (Objects.nonNull(productentity.getProductDescription())
				&& !"".equalsIgnoreCase(
					productentity.getProductDescription())) {
				pe.setProductDescription(
					productentity.getProductDescription());
			}
		if (Objects.nonNull(productentity.getProductStock())
				&& !"".equalsIgnoreCase(
					productentity.getProductStock())) {
				pe.setProductStock(
					productentity.getProductStock());
			}
		if (Objects.nonNull(productentity.getOrderId())
				&& !"".equalsIgnoreCase(
					productentity.getOrderId())) {
				pe.setOrderId(
					productentity.getOrderId());
			}
		if (Objects.nonNull(productentity.getProductIcon())
				&& !"".equalsIgnoreCase(
					productentity.getProductIcon())) {
				pe.setProductIcon(
					productentity.getProductIcon());
			}
			
			
			
			
			
		

		
		

		return productRepository.save(pe);
	}

	@Override
	public void deleteProductById(Long productId)
	{
		productRepository.deleteById(productId);
	}
}

