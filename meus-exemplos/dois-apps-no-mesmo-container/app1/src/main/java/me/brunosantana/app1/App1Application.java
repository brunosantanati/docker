package me.brunosantana.app1;

import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.client.RestTemplate;

import me.brunosantana.app1.model.Product;

@SpringBootApplication
public class App1Application implements ApplicationRunner {

	public static void main(String[] args) {
		SpringApplication.run(App1Application.class, args);
	}

	@Override
	public void run(ApplicationArguments args) throws Exception {
		try {
			RestTemplate restTemplate = new RestTemplate();
			String productsUrl = "http://localhost:8081/products";
			Product product = restTemplate.getForObject(productsUrl + "/100", Product.class);
			System.out.println("############# " + product);
		}catch(Exception e) {
			//e.printStackTrace();
		}
	}

}
