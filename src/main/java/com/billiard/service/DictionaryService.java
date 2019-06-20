package com.billiard.service;

import java.util.List;
import java.util.Map;

import com.billiard.entity.Dictionary;
import com.billiard.entity.JobResponse;

public interface DictionaryService {

	JobResponse addDictionary(Dictionary dictionary);

	JobResponse deleteDictionary(Integer id);

	Map<Integer,List<Dictionary>> getAll();

	List<Dictionary> getGrade(Integer parentId);

}
