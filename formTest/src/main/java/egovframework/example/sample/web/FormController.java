package egovframework.example.sample.web;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class FormController {
	
	Logger log = LoggerFactory.getLogger(FormController.class);
	
	/**
	 * 인덱스 페이지 이동
	 * @return
	 */
	@RequestMapping(value = "/formIndex.do")
	public String indexPage() {
		
		return "sample/formIndex";
	}
	
	/**
	 * 폼페이지로 이동
	 * 수정시 임시데이터 노출
	 * @param model
	 * @param id
	 * @param map
	 * @return
	 */
	@RequestMapping(value = "/testForm.do")
	public String testForm(Model model, 
							@RequestParam(required = false)String ModifyBtn) {

		model.addAttribute("ModifyBtn", ModifyBtn);
		
		if("edit".equals(ModifyBtn)) {
			model.addAttribute("formName", "홍길동");
			model.addAttribute("phone", "010-8080-8080");
			model.addAttribute("email", "8282@naver.com");
			model.addAttribute("address", "서울특별시 강동구 456");
			model.addAttribute("message", "안녕하세요. 등록하려고합니다.");
		} else {

		};
		
//		log.debug(">>>>>");
		
		return "sample/testForm";
	}
	
	/**
	 * 등록, 수정 버튼 클릭시
	 * testForm에서 보낸 데이터 받아오기
	 * @param model
	 * @param map
	 * @return
	 */
	@RequestMapping(value = "/getForm.do", method=(RequestMethod.POST))
	public String getFrom(Model model, @RequestParam Map<String, Object> map) {
		
		model.addAttribute("map", map);

		if("edit".equals(map.get("ModifyBtn"))){
			
			log.debug("################### 수정 #####################");
			log.debug("## formName : " + map.get("formName") + " ##");
			log.debug("## phone : " + map.get("phone") + " ##");
			log.debug("## email : " + map.get("email") + " ##");
			log.debug("## address : " + map.get("address") + " ##");
			log.debug("## message : " + map.get("message") + " ##");
			
		} else {

			log.debug("################### 등록 #####################");
			log.debug("## formName : " + map.get("formName") + " ##");
			log.debug("## phone : " + map.get("phone") + " ##");
			log.debug("## email : " + map.get("email") + " ##");
			log.debug("## address : " + map.get("address") + " ##");
			log.debug("## message : " + map.get("message") + " ##");

		};
		
		return "redirect: /formIndex.do";
	}

}
