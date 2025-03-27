package egovframework.example.sample.service.impl;

import java.util.List;

import org.egovframe.rte.psl.dataaccess.mapper.Mapper;

@Mapper("categoryListMapper")
public interface CategoryListMapper {
	
	/* 카테고리 리스트 출력 */
	List<?> selectCategoryList();
	
	/* 카테고리 삽입 */
	void insertCategoryName(String category_nm);
	
	/* 카테고리 수정 */
	void updateCategoryName(int category_id , String category_nm);
	
	/* 카테고리 삭제 */
	void deleteCategoryId(int category_id);
}
