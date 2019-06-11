package com.billiard.service;

import com.billiard.entity.Config;
import com.billiard.entity.JobResponse;
import com.billiard.entity.Week;

public interface ConfigService {

	JobResponse addConfig(Config config);

	Config getConfig();

	JobResponse addWeek(Week week);

	Week selectWeek();

}
