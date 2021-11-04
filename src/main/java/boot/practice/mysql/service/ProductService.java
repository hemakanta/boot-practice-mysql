package boot.practice.mysql.service;


import boot.practice.mysql.model.Product;
import boot.practice.mysql.repository.ProductRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class ProductService {
    @Autowired
    ProductRepository productRepository;

    public List<Product> fetchProductDetails(){

        return productRepository.findAll();
    }
}
