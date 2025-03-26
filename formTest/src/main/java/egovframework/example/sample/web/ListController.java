package egovframework.example.sample.web;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ListController {
	
	Logger log = LoggerFactory.getLogger(ListController.class);
	
	/** 
	 * 가짜데이터 담는 메소드
	 * @return
	 */
	public List<Map<String, Object>> testData(){
	      
		//map에 담기
	      String[] nameArr = {"테스트1","테스트2", "테스트3", "테스트4", "테스트5", "테스트6", "테스트7", "테스트8", "테스트9", "테스트10"};
	      int[] ageArr = {10,30,24,25,36,68,89,33,2,14};
	      String[] phoneArr = {"01012345678","01012345678", "01012345678", "01012345678", "01012345675", "01012345676", "0101234567", "01012345678", "01012345679", "010123456710"};
	      String[] nationArr = {"한국","미국", "영국", "한국", "미국", "한국", "한국", "프랑스", "한국", "독일"};
	      String[] genderArr = {"F","M", "F", "F", "F", "M", "F", "M", "F", "M"};
	      String[] userYnArr = {"Y","Y", "N", "Y", "Y", "N", "N", "Y", "Y", "N"};

	      List<Map<String, Object>> dataListArr = new ArrayList<>();
	      
	      for(int i = 0; i < nameArr.length; i++) {
	    	  Map<String, Object> dataMap = new HashMap();
	    	  dataMap.put("name", nameArr[i]);
	    	  dataMap.put("age", ageArr[i]);
	    	  dataMap.put("phone", phoneArr[i]);
	    	  dataMap.put("nation", nationArr[i]);
	    	  dataMap.put("gender", genderArr[i]);
	    	  dataMap.put("userYn", userYnArr[i]);
	    	  dataListArr.add(dataMap);
	      }

	      log.info("Data List: {}", dataListArr);  
	      
	      return dataListArr;
	}
	
	
	/**
	 * 가짜데이터 가져와서 list01.do로 보내주는 메소드
	 */
	@RequestMapping(value = "/list01.do")
	public String getData(Model model) {
		
		List<Map<String, Object>> dataList = testData();
		
		model.addAttribute("dataList", dataList);
		
		return "sample/list01";
	}
	
	/**
	 * 데이터 없이 list02.jsp 이동
	 * @return
	 */
	@RequestMapping(value = "/list02.do")
	public String listTwoPage() {
		
		return "sample/list02";
	}
	
	/**
	 * 메소드1에 있는 데이터 내려주기
	 */
	@RequestMapping(value = "/getList.do", produces = "application/json")
	@ResponseBody
	public List<Map<String, Object>> getDataList(){
		return testData();
	}
	

}
