package egovframework.example.sample.service.impl;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CategoryListMapper {
	List<?> selectCategoryList(); 
}
