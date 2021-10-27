package me.brunosantana.app2.controller;

import java.math.BigDecimal;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import me.brunosantana.app2.model.Product;

@RestController
public class ProductController {
	
	@GetMapping("products/{id}")
	public Product getProduct(@PathVariable Long id) {
		return new Product(id, "Echo Dot", new BigDecimal("300"));
	}

}
