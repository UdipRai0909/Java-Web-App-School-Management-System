<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/layouts"%>

<c:if
	test="${sessionScope.first_name == null || sessionScope.role_id == null}">
	<c:redirect url="/views/commonPages/ServletHome">
		<c:param name="homepageAccessParam" value="selected"></c:param>
		<c:param name="pageTitle" value="Welcome Page"></c:param>
	</c:redirect>
</c:if>

<t:layout>
	<jsp:attribute name="title">
	    <c:if test="${displayParam == null}">
	    	<title>Welcome Page</title>
		</c:if>
		 
	    <c:if test="${displayParam == 'selected'}">
	    	<title>Admin Profile</title>
		</c:if>
	</jsp:attribute>

	<jsp:body>

	  <c:if test="${displayParam == null}">
		<div class="container homepage-block px-0 my-2">
		
		<div class="ribbon">
		
			  <h2 class="x-bootstrap">
				  <i class="fa fa-quote-left fa-xs mb-3" aria-hidden="true"></i>
				  <span>Hi, ${sessionScope.first_name}</span>
<!-- 				  <i class="fa fa-quote-right fa-xs mb-3" aria-hidden="true"></i> -->
			  </h2>
					
			  
		  <i></i>
		  <i></i>
		  <i></i>
		  <i></i>
	    </div>
	    
		  <div class="splitview skewed pt-2">
	        <div class="panel bottom">
	            <div class="content">
					<!--  <h1 class="xbootstrap header-title">Home Page</h1> -->
					
	                <div class="description">
	                
	                    <c:if test='${role_id == 1 && admin_id == 1}'>
		               		<h2 class="role-title">Welcome Super Admin</h2>
		                </c:if>
		                <c:if test='${role_id == 1 && admin_id != 1}'>
		               		<h2 class="role-title">Welcome Admin</h2>
		                </c:if>
		                <c:if test='${role_id == 2}'>
			               	<h2 class="role-title">Welcome Teacher</h2>
		                </c:if>
		                <c:if test='${role_id == 3}'>
			               	<h2 class="role-title">Welcome Student</h2>
		                </c:if>
	                    <p class="text-muted">
									<c:out value="${first_name} ${middle_name} ${last_name}" /> </p>
	                    <c:if test='${role_id == 1}'>
		                	<p>Full updates and changes can be made as per your requests.</p>
		                	<p>You have full access rights.</p>
	                	</c:if>
	                	<c:if test='${role_id == 2}'>
		                	<p>Partial updates and changes can be made as per your user-privilege rights.</p>
		                	<p>You have partial access rights.</p>
	                	</c:if>
	                	<c:if test='${role_id == 3}'>
		                	<p>Check out different school activities like assignments, courses and many more.</p>
		                	<p>You have minimum access rights.</p>
	                	</c:if>
	                </div>
	
	                <c:if test='${role_id == 1}'>
		                <img
									src="https://images.pexels.com/photos/4134787/pexels-photo-4134787.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
									alt="Original" />
	                </c:if>
	                <c:if test='${role_id == 2}'>
		                <img
									src="https://images.pexels.com/photos/5212361/pexels-photo-5212361.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
									alt="Original" />
	                </c:if>
	                <c:if test='${role_id == 3}'>
		                <img
									src="https://images.pexels.com/photos/1139244/pexels-photo-1139244.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
									alt="Original" />
	                </c:if>
	                
	            </div>
	        </div>
	
	        <div class="panel top">
	            <div class="content">
					<!-- <h1 class="xbootstrap header-title">Home Page</h1> -->
	                <div class="description">
	                    <h2>Explore Java Web Application</h2>
	                    <p>Join in for the interesting ways on tracking your school data and activities.</p>
	                    <p>Don't ever miss our updates as you will be participating/taking active role.</p>
	                </div>
	
	                <img
								src="https://images.pexels.com/photos/698928/pexels-photo-698928.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
								alt="Duotone">
	            </div>
	        </div>
	
	        <div class="handle"></div>
	      </div>
	    </div>
	    <div class="clearfix"></div>
      </c:if>

	  <script type="text/javascript">
				document
						.addEventListener(
								'DOMContentLoaded',
								function() {
									var parent = document
											.querySelector('.splitview'), topPanel = parent
											.querySelector('.top'), handle = parent
											.querySelector('.handle'), skewHack = 0, delta = 0;

									// If the parent has .skewed class, set the skewHack var.
									if (parent.className.indexOf('skewed') != -1) {
										skewHack = 1000;
									}

									parent
											.addEventListener(
													'mousemove',
													function(event) {
														// Get the delta between the mouse position and center point.
														delta = (event.clientX - window.innerWidth / 2) * 0.5;

														// Move the handle.
														handle.style.left = event.clientX
																+ delta + 'px';

														// Adjust the top panel width.
														topPanel.style.width = event.clientX
																+ skewHack
																+ delta + 'px';
													});
								});
			</script>
	</jsp:body>
</t:layout>
