package news.main.repositry;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import news.main.model.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category,Long>{
	
}
