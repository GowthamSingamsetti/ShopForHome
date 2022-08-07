package com.example.demo.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import com.example.demo.entity.ProductEntity;
import com.example.demo.repository.ProductRepository;
import com.univocity.parsers.csv.CsvParser;
import com.univocity.parsers.csv.CsvParserSettings;
import com.univocity.parsers.common.record.Record;

import java.io.InputStream;
import java.util.*;

@RestController
public class CsvController {
	@Autowired
	ProductRepository productRepository;
	
	@PostMapping("/upload")
	public String uploadData(@RequestParam("file") MultipartFile file) throws Exception
	{
		List<ProductEntity>ProductList=new ArrayList<ProductEntity>();
		InputStream inputStream=file.getInputStream();
		CsvParserSettings setting=new CsvParserSettings();
		setting.setHeaderExtractionEnabled(true);
		CsvParser parser= new CsvParser(setting);
		List<Record> parseAllRecords=parser.parseAllRecords(inputStream);
		parseAllRecords.forEach(record->{
			ProductEntity productentity=new ProductEntity();
			productentity.setProductName(record.getString("productName"));
			productentity.setProductPrice(record.getString("productPrice"));
			productentity.setProductDescription(record.getString("productDescription"));
			productentity.setProductStock(record.getString("productStock"));
			ProductList.add(productentity);
			
			
		});
		productRepository.saveAll(ProductList);
		return "Upload Successful  ";
	}
	

}
