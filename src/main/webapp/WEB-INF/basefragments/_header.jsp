<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html;charset=UTF-8"%>
<!-- NAVBAR -->
<nav class="navbar navbar-default navbar-fixed-top">
   <div class="brand">
      <a href="index.html"><img src="<c:url value="/resources/assets/img/react.png" />" alt="Klorofil Logo" class="img-responsive logo"></a>
   </div>
   <div class="container-fluid">
      <div class="navbar-btn">
         <button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
      </div>
      <div id="navbar-menu">
         <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
               <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span>Opções</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
               <ul class="dropdown-menu">
                  <li><a href="/logout"><i class="lnr lnr-exit"></i> <span>Logout</span></a></li>
               </ul>
            </li>
         </ul>
      </div>
   </div>
</nav>
<!-- END NAVBAR -->