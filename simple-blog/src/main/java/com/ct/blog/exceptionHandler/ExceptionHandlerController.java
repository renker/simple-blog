package com.ct.blog.exceptionHandler;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.authz.UnauthorizedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.http.HttpStatus;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class ExceptionHandlerController {

	/**
	 * shiro UnauthorizedException 异常处理
	 */
	@ExceptionHandler(UnauthorizedException.class)
	@ResponseStatus(HttpStatus.UNAUTHORIZED)
	public ModelAndView processUnauthenticatedException(HttpServletRequest request,UnauthorizedException e){
		
		System.out.println("URI:"+request.getRequestURI()+"\t Method:"+request.getMethod()+"\t X-Requested-With="+request.getHeader("X-Requested-With")+"\t isAjax:"+isAjax(request));
		ModelAndView mv = new ModelAndView();
		mv.addObject("errorMsg", e.getMessage());
		if(!isAjax(request)){
			mv.setViewName("forward:/manage/unauthorized");
		}else{
			mv.setViewName("forward:/manage/unauthorizedAjax?errorMsg="+e.getMessage());
		}
		
		return mv;
		
	}
	
	boolean isAjax(HttpServletRequest request){
	    return  (request.getHeader("X-Requested-With") != null  && "XMLHttpRequest".equalsIgnoreCase( request.getHeader("X-Requested-With").toString())   ) ;
	}
}
