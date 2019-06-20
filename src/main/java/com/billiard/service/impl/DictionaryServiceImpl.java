package com.billiard.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.billiard.dao.DictionaryMapper;
import com.billiard.entity.Dictionary;
import com.billiard.entity.DictionaryExample;
import com.billiard.entity.JobResponse;
import com.billiard.service.DictionaryService;

@Service
public class DictionaryServiceImpl implements DictionaryService {

	@Autowired
	private DictionaryMapper dictionaryMapper;

	@Override
	public JobResponse addDictionary(Dictionary dictionary) {
		
		if(StringUtils.isBlank(dictionary.getDicName())) {
			return JobResponse.errorResponse(100036, "名称不能为空！");
		}
		if(dictionary.getDicType()==null||(dictionary.getDicType()!=null&&dictionary.getDicType()!=1&&dictionary.getDicType()!=2&&dictionary.getDicType()!=3)) {
			return JobResponse.errorResponse(100037, "类型不正确！");
		}
		
		DictionaryExample example= new DictionaryExample();
		example.createCriteria().andDicNameEqualTo(dictionary.getDicName()).andDicTypeEqualTo(dictionary.getDicType());
		List<Dictionary> selectByExample = dictionaryMapper.selectByExample(example);
		if(!selectByExample.isEmpty()) {
			return JobResponse.errorResponse(100038, "该条记录已存在！");
		}
		
		return  JobResponse.successResponse(dictionaryMapper.insertSelective(dictionary));
	}

	@Override
	public JobResponse deleteDictionary(Integer id) {
		
		Dictionary selectByPrimaryKey = dictionaryMapper.selectByPrimaryKey(id);
		if(selectByPrimaryKey!=null&&selectByPrimaryKey.getDicType()==1) {
			
			DictionaryExample example = new DictionaryExample();
			example.createCriteria().andDicTypeEqualTo(2).andDicParentEqualTo(id);
			List<Dictionary> selectByExample = dictionaryMapper.selectByExample(example);
			if(!selectByExample.isEmpty()) {
				return JobResponse.errorResponse(100042, "该记录下还有内容不能删除！");
			}
		}
		return JobResponse.successResponse(dictionaryMapper.deleteByPrimaryKey(id));
	}

	@Override
	public Map<Integer, List<Dictionary>> getAll() {
		Map<Integer, List<Dictionary>> res = new HashMap<>();
		DictionaryExample example= new DictionaryExample();
		example.createCriteria().andDicTypeNotEqualTo(2);
		List<Dictionary> selectByExample = dictionaryMapper.selectByExample(example);
		for(Dictionary d :selectByExample) {
			if(res.get(d.getDicType())==null) {
				res.put(d.getDicType(), new ArrayList<Dictionary>());
			}
			res.get(d.getDicType()).add(d);
		}
		return res;
	}

	@Override
	public List<Dictionary> getGrade(Integer parentId) {
		
		
		return dictionaryMapper.selectTwoLevel(parentId);
	}
}
