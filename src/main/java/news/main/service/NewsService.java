package news.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import news.main.model.News;
import news.main.repositry.NewsRepository;

@Service
public class NewsService {

		@Autowired
		private NewsRepository newsRepository;
		
		public List<News> getAllNews()
		{
			return newsRepository.findAll();
		}
		
		public List<News> getNewsByCategory(Long categoryId)
		{
			return newsRepository.findByCategoryId(categoryId);
		}
		
		public News getNewsById(Long id)
		{
			return newsRepository.findById(id).orElse(null);
		}
		
		public News saveNews(News news)
		{
			return newsRepository.save(news);
		}
		
		public void deleteNews(Long id)
		{
			newsRepository.deleteById(id);
		}
}
