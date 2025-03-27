package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("categoryListService")
public class CategoryListServicelmpl{

	@Resource(name="categoryListMapper")
	private CategoryListMapper categoryDAO;
	
	/* 카테고리 리스트 출력 */
	public List<?> selectCategoryList(){
		return categoryDAO.selectCategoryList();
	}
	
	/* 카테고리 삽입 */
	public String insertCategoryName(String category_nm) {
		
		categoryDAO.insertCategoryName(category_nm);
		
		return category_nm;
	}
	
	/* 카테고리 수정 */
	public void updateCategory(int category_id , String category_nm) {
		categoryDAO.updateCategoryName(category_id, category_nm);
	}
	
	/* 카테고리 삭제 */
	public void deleteCategoryId(int category_id) {
		categoryDAO.deleteCategoryId(category_id);
	}
	
}
