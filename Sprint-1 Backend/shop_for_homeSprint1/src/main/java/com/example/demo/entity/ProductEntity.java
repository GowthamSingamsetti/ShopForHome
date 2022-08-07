package com.example.demo.entity;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.Data;


@Entity
@Table(name="productdata")
@Data

public class ProductEntity {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long productId;
	private String productName;
	private String productPrice;
	private String productDescription;
	private String orderId;
	private String productIcon;
	private String productStock;
	

}


