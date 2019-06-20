package com.billiard.service;

import java.util.List;
import java.util.Map;

import com.billiard.entity.Dictionary;
import com.billiard.entity.JobResponse;

public interface DictionaryService {

	JobResponse addDictionary(Dictionary dictionary);

	Integer deleteDictionary(Integer id);

	Map<Integer,List<Dictionary>> getAll();

}
