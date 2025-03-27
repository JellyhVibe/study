package egovframework.example.sample.service;

import java.util.List;

public interface CategoryListService {
	
	/* 카테고리리스트 출력 */
	List<?> selectCategoryList();
	
	/* 카테고리 삽입 */
	String insertCategoryName(String category_nm);
	
	/* 카테고리 수정 */
	void updateCategoryName(int category_id, String category_nm);
	
	/* 카테고리 삭제 */
	void deleteCategoryId(int category_id);

}
