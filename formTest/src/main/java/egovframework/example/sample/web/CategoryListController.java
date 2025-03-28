package egovframework.example.sample.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.example.sample.service.impl.CategoryListServicelmpl;

@Controller
public class CategoryListController {
	
	Logger log = LoggerFactory.getLogger(CategoryListController.class);
	
	@Resource(name="categoryListService")
	private CategoryListServicelmpl categoryListService;

	/* 카테고리 리스트 출력 */
	@RequestMapping(value = "/categoryList.do")
	public String selectCategoryList(Model model,@RequestParam("category_nm") String category_nm) {
		List<?> categoryList = categoryListService.selectCategoryList();
		model.addAttribute("categoryList", categoryList);
		
		log.info("categoryList : {}", categoryList);
		
		return "sample/categoryList";
	}
	
	/* 등록 폼 페이지 이동 */
	@RequestMapping(value = "/categoryList04.do")
	public String categoryList04Page() {
		
		return "sample/categoryList04";
	}

	/* 카테고리 insert */
	@RequestMapping(value = "/insertCategoryList.do")
	public String insertCategoryListPage(@RequestParam("category_nm") String category_nm, Model model) {
		String categoryNm = categoryListService.insertCategoryName(category_nm);
		model.addAttribute("categoryNm", categoryNm);
		
		return "redirect:/categoryList.do";
	}

	/* 수정 폼 페이지 데이터 포함 이동 */
	@RequestMapping(value = "/categoryList05.do")
	public String categoryList05Page(Model model, @RequestParam("category_id") int category_id, 
												@RequestParam("category_nm") String category_nm) {
		categoryListService.updateCategory(category_id, category_nm);
		model.addAttribute("category_nm" ,category_nm);
		model.addAttribute("category_id" ,category_id);
		
		return "sample/categoryList05";
	}

	
	/* 카테고리 수정 */
	@RequestMapping("/updateCategory.do")
	public String updateCategory(Model model,@RequestParam("category_id") int category_id, 
											@RequestParam("category_nm") String category_nm) {
		categoryListService.updateCategory(category_id, category_nm);
		
		Map<String, Object> map = new HashMap<>();
		map.put("category_id", category_id);
		map.put("category_nm", category_nm);
		
		model.addAttribute("map", map);
		
//		model.addAttribute("category_nm", category_nm);
//		model.addAttribute("category_id", category_id);
		
		return "forward:/categoryList04.do";
	}
	
	/* 카테고리 삭제 */
	@RequestMapping("/deleteCategory.do")
	public String deleteCategoryId(@RequestParam("category_id") int category_id) {
		categoryListService.deleteCategoryId(category_id);
		
		return"redirect:/categoryList.do";
	}

}
