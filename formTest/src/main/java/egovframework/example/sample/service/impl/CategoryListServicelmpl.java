package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("CategoryListService")
public class CategoryListServicelmpl{

	@Resource(name="categoryListMapper")
	private CategoryListMapper categoryDAO;
	
	public List<?> selectCategoryList(){
		return categoryDAO.selectCategoryList();
	}

}
