package egovframework.example.sample.web;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.sample.service.impl.CategoryListServicelmpl;

@Controller
public class CategoryListController {
	
	Logger log = LoggerFactory.getLogger(CategoryListController.class);
	
	@Resource(name="categoryListService")
	private CategoryListServicelmpl categoryListService;

	/* 카테고리 리스트 출력 */
	@RequestMapping(value = "/categoryList.do")
	public String selectCategoryList(Model model, String category_nm) {
		List<?> categoryList = categoryListService.selectCategoryList();
		model.addAttribute("categoryList", categoryList);
		
		log.info("categoryList : {}", categoryList);
		
		return "sample/categoryList";
	}

	/* 카테고리 insert */
	@RequestMapping(value = "/insertCategoryList.do")
	public String insertCategoryListPage(String category_nm) {
		categoryListService.insertCategoryName(category_nm);
		
		return "forward:/categoryList.do";
	}
	
	/* 카테고리 수정 */
	@RequestMapping("/updateCategory.do")
	public String updateCategory(int category_id, String category_nm) {
		categoryListService.updateCategory(category_id, category_nm);
		
		return "forward:/categoryList.do";
	}
	
	/* 카테고리 삭제 */
	@RequestMapping("/deleteCategory.do")
	public String deleteCategoryId(int category_id) {
		categoryListService.deleteCategoryId(category_id);
		
		return"forward:/categoryList.do";
	}
	
	

}
