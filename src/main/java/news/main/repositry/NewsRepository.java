package news.main.repositry;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import news.main.model.News;

@Repository
public interface NewsRepository extends JpaRepository<News, Long>{
	 List<News> findByCategoryId(Long categoryId);
}
