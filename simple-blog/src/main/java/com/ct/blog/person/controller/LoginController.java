package com.ct.blog.person.controller;

import javax.annotation.Resource;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.UnauthorizedException;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.util.SavedRequest;
import org.apache.shiro.web.util.WebUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.handler.SimpleMappingExceptionResolver;

import com.ct.blog.common.AjaxResult;
import com.ct.blog.common.BaseController;
import com.ct.blog.em.controller.Status;
import com.ct.blog.person.service.IPersonService;

import org.springframework.ui.Model;

@Controller
@RequestMapping("manage")
public class LoginController extends BaseController{
	@Resource
	private IPersonService personService;
	
	@RequestMapping("login")
	public String login(Model model,String errorMsg){
		return "manage/login";
	}
	
	/**
	 * 登陆
	 * @param username
	 * @param password
	 * @param rememberMe
	 * @param model
	 * @return
	 * @author chen yin tao
	 * @date 2016-4-17 下午5:08:28
	 */
	@RequestMapping(value="doLogin",method=RequestMethod.POST)
	public String doLogin(@RequestParam("username")String username,@RequestParam("password")String password,@RequestParam(value="rememberMe",defaultValue="false")Boolean rememberMe,Model model,HttpServletRequest request){
		String errorMsg = null;
		try {
			Subject subject = SecurityUtils.getSubject();
			UsernamePasswordToken token = new UsernamePasswordToken(username, password);
			token.setRememberMe(rememberMe);
			subject.login(token);
			
			String redirectUrl = "/manage/home";
			
			// 重定向到之前跳至登陆的页面
			SavedRequest savedRequest = WebUtils.getSavedRequest(request);
			if(savedRequest != null && savedRequest.getMethod().equalsIgnoreCase(RequestMethod.GET.toString())){
				if(savedRequest.getQueryString()==null){
					redirectUrl = savedRequest.getRequestURI();
				}else{
					redirectUrl = savedRequest.getRequestURI()+"?"+savedRequest.getQueryString();
				}
				String contextPath = request.getContextPath();
				redirectUrl = redirectUrl.replaceFirst(contextPath, "");
			}
			
			return "redirect:"+redirectUrl;
		} catch (AuthenticationException e) {
			if(e instanceof UnknownAccountException){
				errorMsg = "账号不存在?";
			}else if(e instanceof IncorrectCredentialsException){
				errorMsg = "密码错误";
			}
			e.printStackTrace();
			model.addAttribute("errorMsg", errorMsg);
			return "redirect:/manage/login";
		}
	}
	
	/**
	 * 登出
	 * @return
	 * @author chen yin tao
	 * @date 2016-4-17 下午5:08:19
	 */
	@RequestMapping("loginOut")
	public String loginOut(){
		SecurityUtils.getSubject().logout();
		return "redirect:/manage/login";
	}
	
	@RequestMapping("home")
	public String index(){
		return "manage/home";
	}
	
	/**
	 * 非法进入提醒页面
	 * @return
	 */
	@RequestMapping("unauthorized")
	public String unauthorized(Model model,HttpServletRequest request,UnauthorizedException unauthorizedException){
		Exception exception = (Exception) request.getAttribute(SimpleMappingExceptionResolver.DEFAULT_EXCEPTION_ATTRIBUTE);
		return "manage/unauthorized_view";
	}
	
	/**
	 * 非法进入提醒页面
	 * @return
	 */
	@RequestMapping("unauthorizedAjax")
	@ResponseBody
	public AjaxResult unauthorizedAjax(Model model,HttpServletRequest request,String errorMsg){
		return ajaxResult(Status.UNAUTHORIZED,errorMsg);
	}
}
