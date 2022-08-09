package com.shopforhome.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.shopforhome.entity.Cart;



public interface CartRepository extends JpaRepository<Cart, Integer> {
}
