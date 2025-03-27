package egovframework.example.sample.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CategoryListController {
	
	@Resource(name="CategoryListService")
	private egovframework.example.sample.service.CategoryListService CategoryListService;
	
	@RequestMapping("")
	public String selectCategoryList(Model model) {
		List<?> categoryList = CategoryListService.selectCategoryList();
		
		model.addAttribute("categoryList", categoryList);
		
		
		
		return "";
	}

}
