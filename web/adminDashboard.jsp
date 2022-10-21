<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns:jsp="http://www.w3.org/1999/html">
<head>
    <meta charset="ISO-8859-1">

    <title>Insert title here</title>
</head>
<body>
<h1>Dashboard !!!</h1>

<section>
<%
String utype=(String) session.getAttribute("utype");
if(utype.equalsIgnoreCase("superadmin"))
{
%>
    <jsp:include page="super.html"></jsp:include>
<%
    }
else
    {
%>
    <jsp:include page="base.html"></jsp:include>
  <%
      }
  %>

<%--<c:if test="${sessionScope.utype}=='superadmin'">


    </c:if>
--%>


    <div class="container">


        <h3 class="text-center text-primary  mt-5  mb-5" >Welcom:->${sessionScope.uname}</h3>

        <div class="row mb-5">

            <div class="col-md-4 ">

                <div class="card">
                    <div class="card-body">

                        <div class="text-center mt-2 mb-2">
                            <img  src="/adminDashboard_images/category.svg" height="70px" width="70px"/>

                        </div >


                        <div class="mt-4 mb-4 text-center">
                            <h5 class="card-title text-center">Create Category</h5>

                            <a href="categoryForm.jsp" class="btn btn-sm btn-primary">
                                <i class="fa fa-angle-double-right" style="font-size:14px"></i>
                                Create Category</a>

                        </div>

                    </div>
                </div>

            </div>

            <!-- ------------------------------------------------------------------------------------------ -->
            <div class="col-md-4">

                <div class="card">
                    <div class="card-body">

                        <div class="text-center mt-2 mb-2">
                            <img  alt="" src="adminDashboard_images/list.svg" height="70px" width="70px">
                        </div >

                        <div class="mt-4 mb-4 text-center">
                            <h5 class="card-title text-center">Create Sub Category</h5>

                            <a href="subCategoryForm.jsp" class="btn btn-sm btn-primary">
                                <i class="fa fa-angle-double-right" style="font-size:14px"></i>
                                Create sub Category</a>

                        </div>
                    </div>
                </div>

            </div>

            <!-- ------------------------------------------------------------------------------------------ -->

            <div class="col-md-4">

                <div class="card">
                    <div class="card-body">


                        <div class="text-center mt-2 mb-2">
                            <img  alt="" src="/adminDashboard_images/chapter.svg" height="70px" width="70px">
                        </div >

                        <div class="mt-4 mb-4 text-center">
                            <h5 class="card-title text-center">Create Product</h5>

                            <a href="addProduct.jsp" class="btn btn-sm btn-primary">
                                <i class="fa fa-angle-double-right" style="font-size:14px"></i>
                                Create Product</a>

                        </div>


                    </div>

                </div>

            </div>

            <!-- ------------------------------------------------------------------------------------------- -->

            <div class="col-md-4 mt-4">

                <div class="card">
                    <div class="card-body">


                        <div class="text-center mt-2 mb-2">
                            <img  alt="" src="/adminDashboard_images/images.svg" height="70px" width="70px">
                        </div >

                        <div class="mt-4 mb-4 text-center">
                            <h5 class="card-title text-center">Image HUB</h5>

                            <a href="/admin/adminpanel/imageHub'" class="btn btn-sm btn-primary">
                                <i class="fa fa-angle-double-right" style="font-size:14px"></i>
                                CLICK HERE</a>

                        </div>


                    </div>

                </div>

            </div>

            <!-- ------------------------------------------------------------------------------------------- -->


            <div class="col-md-4 mt-4">

                <div class="card">
                    <div class="card-body">


                        <div class="text-center mt-2 mb-2">
                            <img  alt="" src="/adminDashboard_images/exchange.svg" height="70px" width="70px">
                        </div >

                        <div class="mt-4 mb-4 text-center">
                            <h5 class="card-title text-center">Update  Category</h5>

                            <a href="categoryList.jsp" class="btn btn-sm btn-primary">
                                <i class="fa fa-angle-double-right" style="font-size:14px"></i>
                                CLICK HERE</a>

                        </div>


                    </div>

                </div>

            </div>

            <!-- ------------------------------------------------------------------------------------------- -->
            <div class="col-md-4 mt-4">

                <div class="card">
                    <div class="card-body">


                        <div class="text-center mt-2 mb-2">
                            <img  alt="" src="/adminDashboard_images/refresh.svg" height="70px" width="70px">
                        </div >

                        <div class="mt-4 mb-4 text-center">
                            <h5 class="card-title text-center">update sub Category</h5>

                            <a href="subCategoryList.jsp" class="btn btn-sm btn-primary">
                                <i class="fa fa-angle-double-right" style="font-size:14px"></i>
                                CLICK HERE</a>

                        </div>


                    </div>

                </div>

            </div>

            <!-- ------------------------------------------------------------------------------------------- -->


            <div class="col-md-4 mt-4">

                <div class="card">
                    <div class="card-body">


                        <div class="text-center mt-2 mb-2">
                            <img  alt="" src="/adminDashboard_images/document.svg" height="70px" width="70px">
                        </div >

                        <div class="mt-4 mb-4 text-center">
                            <h5 class="card-title text-center">Update Product</h5>

                            <a href="productList.jsp" class="btn btn-sm btn-primary">
                                <i class="fa fa-angle-double-right" style="font-size:14px"></i>
                                CLICK HERE</a>

                        </div>


                    </div>

                </div>

            </div>

            <!-- ------------------------------------------------------------------------------------------- -->


            <div class="col-md-4 mt-4">

                <div class="card">
                    <div class="card-body">


                        <div class="text-center mt-2 mb-2">
                            <img  alt="" src="/adminDashboard_images/query.svg" height="70px" width="70px">
                        </div >

                        <div class="mt-4 mb-4 text-center">
                            <h5 class="card-title text-center">Show Query</h5>

                            <a href="@{'~/admin/adminpanel/UsersQuery/0'}" class="btn btn-sm btn-primary">
                                <i class="fa fa-angle-double-right" style="font-size:14px"></i>
                                CLICK HERE</a>

                        </div>


                    </div>

                </div>

            </div>

            <!-- ------------------------------------------------------------------------------------------- -->

            <div class="col-md-4 mt-4">

                <div class="card">
                    <div class="card-body">


                        <div class="text-center mt-2 mb-2">
                            <img  alt="" src="/adminDashboard_images/message.svg" height="70px" width="70px">
                        </div >

                        <div class="mt-4 mb-4 text-center">
                            <h5 class="card-title text-center">contact Form Query</h5>

                            <a href="/admin/adminpanel/dataContactForm/0" class="btn btn-sm btn-primary">
                                <i class="fa fa-angle-double-right" style="font-size:14px"></i>
                                CLICK HERE</a>

                        </div>


                    </div>

                </div>

            </div>

            <!-- ------------------------------------------------------------------------------------------- -->







        </div>







    </div>



</section>











</body>
</html>
