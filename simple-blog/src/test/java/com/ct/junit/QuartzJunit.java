package com.ct.junit;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.Resource;

import org.aspectj.lang.annotation.SuppressAjWarnings;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.quartz.CronScheduleBuilder;
import org.quartz.JobBuilder;
import org.quartz.JobDataMap;
import org.quartz.JobDetail;
import org.quartz.JobKey;
import org.quartz.ScheduleBuilder;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.SimpleScheduleBuilder;
import org.quartz.Trigger;
import org.quartz.TriggerBuilder;
import org.springframework.scheduling.quartz.SchedulerFactoryBean;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.ct.blog.quartz.QuartzProxyJob;
import com.ct.blog.quartz.TestJob;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring.xml"})
public class QuartzJunit {
	@Resource
	private SchedulerFactoryBean schedulerFactoryBean;
	
	@Resource
	private Scheduler schedulermy;
	
	public Scheduler getScheduler(){
		return schedulerFactoryBean.getScheduler();
	}
	
	public JobDetail jobCreate(String jobName,String jobGroupName,String targetClass,String targetMethod){
		Map<String, Object> map = new HashMap<String,Object>();
		JobDataMap jobDataMap = new JobDataMap(map);
		jobDataMap.put("targetClass", targetClass);
		jobDataMap.put("targetMethod", targetMethod);
		JobDetail job = JobBuilder.newJob(QuartzProxyJob.class).setJobData(jobDataMap).withIdentity(jobName, jobGroupName).build();
		return job;
	}
	
	public Trigger triggerCreate(String triggerName,String triggerGroupName,String cronExpression){
		ScheduleBuilder schedBuilder = CronScheduleBuilder.cronSchedule(cronExpression);
		Trigger trigger = TriggerBuilder.newTrigger().withSchedule(schedBuilder).withIdentity(triggerName, triggerGroupName).build();
		return trigger;
	}
	
	public void startJob(JobDetail jobDetail,Trigger trigger) throws SchedulerException{
		Scheduler scheduler = getScheduler();
		scheduler.scheduleJob(jobDetail, trigger);
		scheduler.start();
	}
	
	
	@Test
	public void jobTest() throws InterruptedException{
//		JobDetail jobDetail = jobCreate("showInfo", "chen",TestJob.class.getName(),"showInfo");
//		Trigger trigger = triggerCreate("showInfoTrigger", "chen", "*/20 * * * * ?");
//		try {
//			startJob(jobDetail, trigger);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		
		Thread.sleep(1000*60*60);
	}
	
	@Test
	public void deleteJob() throws SchedulerException{
		Scheduler scheduler = getScheduler();
		JobKey jobKey = JobKey.jobKey("showInfo", "chen");
		scheduler.deleteJob(jobKey);
	}
	
	
	@Test
	public void showInstanceName(){
		
		try {
			System.out.println(schedulermy.getSchedulerName().toString());
		} catch (SchedulerException e) {
			e.printStackTrace();
		}
	}
	
}
