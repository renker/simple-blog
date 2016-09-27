<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title><sitemesh:write property='title' />-管理平台</title>

	<link rel="stylesheet" type="text/css" href="${ctx }/static/lib/manage/css/style.default.css">
	<link rel="stylesheet" type="text/css" href="${ctx }/static/lib/jquery.datatables/css/jquery.datatables.css">
	
	<script type="text/javascript" src="${ctx }/static/lib/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="${ctx }/static/lib/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript" src="${ctx }/static/lib/jquery.sparkline.min.js"></script>
	<script type="text/javascript" src="${ctx }/static/lib/jquery.cookies.js"></script>
	<script type="text/javascript" src="${ctx }/static/lib/jquery.datatables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="${ctx }/static/lib/bootstrap-3.3.5/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${ctx }/static/lib/layer/layer.js"></script>
	<script type="text/javascript" src="${ctx }/static/lib/manage/js/modernizr.min.js"></script>
	<script type="text/javascript" src="${ctx }/static/lib/manage/js/toggles.min.js"></script>
	<script type="text/javascript" src="${ctx }/static/lib/manage/js/retina.min.js"></script>
	<script type="text/javascript" src="${ctx }/static/lib/manage/js/select2.min.js"></script>
	<script type="text/javascript" src="${ctx }/static/lib/manage/js/custom.js"></script>

	<sitemesh:write property='head' />
</head>
<body>
	<section>
		<div class="leftpanel">
    
		    <!-- <div class="logopanel">
		        <h1><span>[</span> bracket <span>]</span></h1>
		    </div> -->
		    <!-- logopanel -->
    
		    <div class="leftpanelinner">
				<h5 class="sidebartitle">菜单导航</h5>
		      	<ul class="nav nav-pills nav-stacked nav-bracket">
			        <li class="active"><a href="${ctx }/manage/home"><i class="fa fa-home"></i> <span>Home</span></a></li>
			        
			        <li class="nav-parent">
			        	<a href=""><i class="fa fa-gear"></i> <span>设置</span></a>
			        	<ul class="children">
			        		<li><a href="${ctx }/manage/person/index"><i class="fa fa-caret-right"></i>用户管理</a></li>
			        		<li><a href="${ctx }/manage/person/index"><i class="fa fa-caret-right"></i>角色管理</a></li>
			        		<li><a href="${ctx }/manage/person/index"><i class="fa fa-caret-right"></i>权限管理</a></li>
			        		<li><a href="${ctx }/manage/resource/list"><i class="fa fa-caret-right"></i>资源管理</a></li>
			        	</ul>
			        </li>
			        
			        <li><a href="email.html"><span class="pull-right badge badge-success">2</span><i class="fa fa-envelope-o"></i> <span>Email</span></a></li>
			        <li class="nav-parent">
			        	<a href=""><i class="fa fa-edit"></i> <span>Forms</span></a>
			          	<ul class="children">
				            <li><a href="general-forms.html"><i class="fa fa-caret-right"></i> General Forms</a></li>
				            <li><a href="form-layouts.html"><i class="fa fa-caret-right"></i> Form Layouts</a></li>
				            <li><a href="form-validation.html"><i class="fa fa-caret-right"></i> Form Validation</a></li>
				            <li><a href="form-wizards.html"><i class="fa fa-caret-right"></i> Form Wizards</a></li>
				            <li><a href="wysiwyg.html"><i class="fa fa-caret-right"></i> Text Editor</a></li>
				            <li><a href="code-editor.html"><i class="fa fa-caret-right"></i> Code Editor</a></li>
							<li><a href="x-editable.html"><i class="fa fa-caret-right"></i> X-Editable</a></li>
			          	</ul>
			        </li>
			        <li class="nav-parent"><a href=""><i class="fa fa-suitcase"></i> <span>UI Elements</span></a>
			          <ul class="children">
				            <li><a href="buttons.html"><i class="fa fa-caret-right"></i> Buttons</a></li>
				            <li><a href="icons.html"><span class="pull-right badge badge-danger">updated</span><i class="fa fa-caret-right"></i> Icons</a></li>
				            <li><a href="typography.html"><i class="fa fa-caret-right"></i> Typography</a></li>
				            <li><a href="alerts.html"><i class="fa fa-caret-right"></i> Alerts &amp; Notifications</a></li>
				            <li><a href="modals.html"><i class="fa fa-caret-right"></i> Modals</a></li>
				            <li><a href="tabs-accordions.html"><i class="fa fa-caret-right"></i> Tabs &amp; Accordions</a></li>
				            <li><a href="sliders.html"><i class="fa fa-caret-right"></i> Sliders</a></li>
				            <li><a href="graphs.html"><i class="fa fa-caret-right"></i> Graphs &amp; Charts</a></li>
				            <li><a href="widgets.html"><i class="fa fa-caret-right"></i> Panels &amp; Widgets</a></li>
				            <li><a href="extras.html"><i class="fa fa-caret-right"></i> Extras</a></li>
			          </ul>
			        </li>
			        <li><a href="tables.html"><i class="fa fa-th-list"></i> <span>Tables</span></a></li>
			        <li class="nav-parent"><a href=""><i class="fa fa-bug"></i> <span>Bug Tracker</span></a>
			            <ul class="children">
			                <li><a href="bug-tracker.html"><i class="fa fa-caret-right"></i> Summary</a></li>
			                <li><a href="bug-issues.html"><i class="fa fa-caret-right"></i> Issues</a></li>
			                <li><a href="view-issue.html"><i class="fa fa-caret-right"></i> View Issue</a></li>
			            </ul>
			        </li>
			        <li><a href="maps.html"><i class="fa fa-map-marker"></i> <span>Maps</span></a></li>
			        <li class="nav-parent"><a href=""><i class="fa fa-file-text"></i> <span>Pages</span></a>
			          	<ul class="children">
							<li><a href="calendar.html"><i class="fa fa-caret-right"></i> Calendar</a></li>
				            <li><a href="media-manager.html"><i class="fa fa-caret-right"></i> Media Manager</a></li>
				            <li><a href="timeline.html"><i class="fa fa-caret-right"></i> Timeline</a></li>
				            <li><a href="blog-list.html"><i class="fa fa-caret-right"></i> Blog List</a></li>
				            <li><a href="blog-single.html"><i class="fa fa-caret-right"></i> Blog Single</a></li>
				            <li><a href="people-directory.html"><i class="fa fa-caret-right"></i> People Directory</a></li>
				            <li><a href="profile.html"><i class="fa fa-caret-right"></i> Profile</a></li>
				            <li><a href="invoice.html"><i class="fa fa-caret-right"></i> Invoice</a></li>
				            <li><a href="search-results.html"><i class="fa fa-caret-right"></i> Search Results</a></li>
				            <li><a href="blank.html"><i class="fa fa-caret-right"></i> Blank Page</a></li>
				            <li><a href="notfound.html"><i class="fa fa-caret-right"></i> 404 Page</a></li>
				            <li><a href="locked.html"><i class="fa fa-caret-right"></i> Locked Screen</a></li>
				            <li><a href="signin.html"><i class="fa fa-caret-right"></i> Sign In</a></li>
				            <li><a href="signup.html"><i class="fa fa-caret-right"></i> Sign Up</a></li>
			          	</ul>
			        </li>
			        <li class="nav-parent"><a href="layouts.html"><i class="fa fa-laptop"></i> <span>Skins &amp; Layouts</span></a>
			            <ul class="children">
			                <li><a href="layouts.html"><i class="fa fa-caret-right"></i> General Layouts</a></li>
			                <li><a href="horizontal-menu.html"><i class="fa fa-caret-right"></i> Top Menu</a></li>
			                <li><a href="horizontal-menu2.html"><i class="fa fa-caret-right"></i> Top Menu w/ Sidebar</a></li>
			                <li><a href="fixed-width.html"><i class="fa fa-caret-right"></i> Fixed Width Page</a></li>
			                <li><a href="fixed-width2.html"><i class="fa fa-caret-right"></i> Fixed Width w/ Menu</a></li>
			            </ul>
			        </li>
				</ul>
		      
			      <!-- <div class="infosummary">
			        <h5 class="sidebartitle">Information Summary</h5>    
			        <ul>
			            <li>
			                <div class="datainfo">
			                    <span class="text-muted">Daily Traffic</span>
			                    <h4>630, 201</h4>
			                </div>
			                <div id="sidebar-chart" class="chart"></div>   
			            </li>
			            <li>
			                <div class="datainfo">
			                    <span class="text-muted">Average Users</span>
			                    <h4>1, 332, 801</h4>
			                </div>
			                <div id="sidebar-chart2" class="chart"></div>   
			            </li>
			            <li>
			                <div class="datainfo">
			                    <span class="text-muted">Disk Usage</span>
			                    <h4>82.2%</h4>
			                </div>
			                <div id="sidebar-chart3" class="chart"></div>   
			            </li>
			            <li>
			                <div class="datainfo">
			                    <span class="text-muted">CPU Usage</span>
			                    <h4>140.05 - 32</h4>
			                </div>
			                <div id="sidebar-chart4" class="chart"></div>   
			            </li>
			            <li>
			                <div class="datainfo">
			                    <span class="text-muted">Memory Usage</span>
			                    <h4>32.2%</h4>
			                </div>
			                <div id="sidebar-chart5" class="chart"></div>   
			            </li>
			        </ul>
			      </div> -->
			      <!-- infosummary -->
			</div><!-- leftpanelinner -->
		</div><!-- leftpanel -->
	  
	  
	  	<div class="mainpanel">
	  		<div class="headerbar">
	  		
      			<a class="menutoggle"><i class="fa fa-bars"></i></a>
      			
				<form class="searchform" action="index.html" method="post">
	      			<input type="text" class="form-control" name="keyword" placeholder="查找..." />
	      		</form>
      
	      		<div class="header-right">
		        	<ul class="headermenu">
		          		<li>
		            		<div class="btn-group">
			              		<button class="btn btn-default dropdown-toggle tp-icon" data-toggle="dropdown">
			                		<i class="glyphicon glyphicon-user"></i>
			                		<span class="badge">2</span>
			              		</button>
			              		<div class="dropdown-menu dropdown-menu-head pull-right">
			                		<h5 class="title">新注册用户 2 名</h5>
			                		<ul class="dropdown-list user-list">
			                  			<li class="new">
			                    			<div class="thumb"><a href=""><img src="${ctx}/static/lib/manage/images/photos/user1.png" alt="" /></a></div>
			                    			<div class="desc">
			                      				<h5><a href="">Draniem Daamul (@draniem)</a> <span class="badge badge-success">new</span></h5>
			                    			</div>
			                  			</li>
			                  			<li class="new">
			                    			<div class="thumb"><a href=""><img src="${ctx}/static/lib/manage/images/photos/user2.png" alt="" /></a></div>
			                    			<div class="desc">
			                      				<h5><a href="">Zaham Sindilmaca (@zaham)</a> <span class="badge badge-success">new</span></h5>
			                    			</div>
			                  			</li>
										<li>
						                    <div class="thumb"><a href=""><img src="${ctx}/static/lib/manage/images/photos/user3.png" alt="" /></a></div>
						                    <div class="desc">
						                      	<h5><a href="">Weno Carasbong (@wenocar)</a></h5>
						                    </div>
										</li>
					                  	<li>
						                    <div class="thumb"><a href=""><img src="${ctx}/static/lib/manage/images/photos/user4.png" alt="" /></a></div>
						                    <div class="desc">
						                      	<h5><a href="">Nusja Nawancali (@nusja)</a></h5>
						                    </div>
					                  	</li>
					                  	<li>
						                    <div class="thumb"><a href=""><img src="${ctx}/static/lib/manage/images/photos/user5.png" alt="" /></a></div>
						                    <div class="desc">
						                      	<h5><a href="">Lane Kitmari (@lane_kitmare)</a></h5>
						                    </div>
					                  	</li>
			                  			<li class="new"><a href="">See All Users</a></li>
			                		</ul>
			              		</div>
		            		</div>
		          		</li>
		          		<li>
			            	<div class="btn-group">
			              		<button class="btn btn-default dropdown-toggle tp-icon" data-toggle="dropdown">
			                		<i class="glyphicon glyphicon-envelope"></i>
			                		<span class="badge">1</span>
			              		</button>
				              	<div class="dropdown-menu dropdown-menu-head pull-right">
					                <h5 class="title">您有 1 条新消息</h5>
					                <ul class="dropdown-list gen-list">
				                  		<li class="new">
				                    		<a href="">
							                    <span class="thumb"><img src="${ctx}/static/lib/manage/images/photos/user1.png" alt="" /></span>
							                    <span class="desc">
								                      <span class="name">Draniem Daamul <span class="badge badge-success">new</span></span>
								                      <span class="msg">Lorem ipsum dolor sit amet...</span>
							                    </span>
				                    		</a>
				                  		</li>
						                <li>
						                    <a href="">
							                    <span class="thumb"><img src="${ctx}/static/lib/manage/images/photos/user2.png" alt="" /></span>
							                    <span class="desc">
							                      	<span class="name">Nusja Nawancali</span>
							                      	<span class="msg">Lorem ipsum dolor sit amet...</span>
							                    </span>
						                    </a>
						                </li>
					                  	<li>
						                    <a href="">
							                    <span class="thumb"><img src="${ctx}/static/lib/manage/images/photos/user3.png" alt="" /></span>
							                    <span class="desc">
							                      	<span class="name">Weno Carasbong</span>
							                      	<span class="msg">Lorem ipsum dolor sit amet...</span>
							                    </span>
						                    </a>
					                  	</li>
						                <li>
						                    <a href="">
							                    <span class="thumb"><img src="${ctx}/static/lib/manage/images/photos/user4.png" alt="" /></span>
							                    <span class="desc">
													<span class="name">Zaham Sindilmaca</span>
								                    <span class="msg">Lorem ipsum dolor sit amet...</span>
							                    </span>
						                    </a>
						                </li>
					                  	<li>
						                    <a href="">
							                    <span class="thumb"><img src="${ctx}/static/lib/manage/images/photos/user5.png" alt="" /></span>
							                    <span class="desc">
							                      	<span class="name">Veno Leongal</span>
							                      	<span class="msg">Lorem ipsum dolor sit amet...</span>
							                    </span>
						                    </a>
					                  	</li>
				                  		<li class="new"><a href="">Read All Messages</a></li>
				                	</ul>
				             	</div>
			            	</div>
		          		</li>
		          		<li>
		            		<div class="btn-group">
		              			<button class="btn btn-default dropdown-toggle tp-icon" data-toggle="dropdown">
			                		<i class="glyphicon glyphicon-globe"></i>
			                		<span class="badge">5</span>
		              			</button>
		              			<div class="dropdown-menu dropdown-menu-head pull-right">
			                		<h5 class="title">您有 5 条新通知</h5>
			                		<ul class="dropdown-list gen-list">
			                  			<li class="new">
			                    			<a href="">
							                    <span class="thumb"><img src="${ctx}/static/lib/manage/images/photos/user4.png" alt="" /></span>
							                    <span class="desc">
													<span class="name">Zaham Sindilmaca <span class="badge badge-success">new</span></span>
													<span class="msg">is now following you</span>
			                    				</span>
			                    			</a>
			                  			</li>
			                  			<li class="new">
						                    <a href="">
							                    <span class="thumb"><img src="${ctx}/static/lib/manage/images/photos/user5.png" alt="" /></span>
							                    <span class="desc">
							                      	<span class="name">Weno Carasbong <span class="badge badge-success">new</span></span>
							                      	<span class="msg">is now following you</span>
							                    </span>
						                    </a>
			                  			</li>
						                <li class="new">
						                    <a href="">
							                    <span class="thumb"><img src="${ctx}/static/lib/manage/images/photos/user3.png" alt="" /></span>
							                    <span class="desc">
							                      	<span class="name">Veno Leongal <span class="badge badge-success">new</span></span>
							                      	<span class="msg">likes your recent status</span>
							                    </span>
						                    </a>
						                </li>
			                  			<li class="new">
						                    <a href="">
							                    <span class="thumb"><img src="${ctx}/static/lib/manage/images/photos/user3.png" alt="" /></span>
							                    <span class="desc">
							                      	<span class="name">Nusja Nawancali <span class="badge badge-success">new</span></span>
							                      	<span class="msg">downloaded your work</span>
							                    </span>
						                    </a>
			                  			</li>
			                  			<li class="new">
						                    <a href="">
							                    <span class="thumb"><img src="${ctx}/static/lib/manage/images/photos/user3.png" alt="" /></span>
							                    <span class="desc">
							                      	<span class="name">Nusja Nawancali <span class="badge badge-success">new</span></span>
							                      	<span class="msg">send you 2 messages</span>
							                    </span>
						                    </a>
			                  			</li>
			                  			<li class="new"><a href="">See All Notifications</a></li>
			                		</ul>
			              		</div>
		            		</div>
		          		</li>
			          	<li>
							<div class="btn-group">
				              	<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
					                <img src="${ctx}/static/lib/manage/images/photos/loggeduser.png" alt="" />
					                John Doe
					                <span class="caret"></span>
				              	</button>
				              	<ul class="dropdown-menu dropdown-menu-usermenu pull-right">
					                <li><a href="profile.html"><i class="glyphicon glyphicon-user"></i> My Profile</a></li>
					                <li><a href="#"><i class="glyphicon glyphicon-cog"></i> 账号设置</a></li>
					                <li><a href="#"><i class="glyphicon glyphicon-question-sign"></i> Help</a></li>
					                <li><a href="${ctx }/manage/loginOut"><i class="glyphicon glyphicon-log-out"></i> 退出</a></li>
				              	</ul>
				            </div>
						</li>
			          	<li>
			            	<button id="chatview" class="btn btn-default tp-icon chat-icon">
			               		<i class="glyphicon glyphicon-comment"></i>
			            	</button>
			          	</li>
		        	</ul>
	      		</div><!-- header-right -->
			</div><!-- headerbar -->
			<sitemesh:write property='body' />
		</div>
	</section>
</body>
</html>