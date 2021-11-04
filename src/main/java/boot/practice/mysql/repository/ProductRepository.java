package boot.practice.mysql.repository;

import boot.practice.mysql.model.Product;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends CrudRepository<Product, Long> {

    @Override
    List<Product> findAll();

}
