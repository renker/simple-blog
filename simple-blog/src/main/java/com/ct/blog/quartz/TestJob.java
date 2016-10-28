package com.ct.blog.quartz;

import org.quartz.DisallowConcurrentExecution;
import org.quartz.JobExecutionContext;
import org.springframework.stereotype.Component;

@Component
public class TestJob {
	
	public void showInfo(JobExecutionContext context) throws InterruptedException{
		System.out.println("定时任务执行中 -----------------------------------休息30秒"+Thread.currentThread().getId());
		Thread.currentThread().sleep(1000*30);
		System.out.println("定时任务执行完成 ----------------------------------------"+Thread.currentThread().getId());
	}
	
}
