package com.billiard.service;

import com.billiard.entity.Config;
import com.billiard.entity.JobResponse;

public interface ConfigService {

	JobResponse addConfig(Config config);

	Config getConfig();

}
