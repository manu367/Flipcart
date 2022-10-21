<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>

<section>

<jsp:include page="base.html"></jsp:include>

    <div class="container">



        <!-- 					show message Box if data is available  -->
        <div   class="container">
            <div   class="alert alert-primary text-center" role="alert">
                <span ></span>
            </div>
            <span></span>
        </div>
        <!-- 					End show message Box if data is available  -->





        <h4 class="text-center mt-4 mb-3">Sub Category List</h4>

        <table  style="font-size: 12px;" class="table">
            <thead class="thead-dark">
            <tr>
                <th scope="col">id</th>
                <th scope="col">Name</th>
                <th scope="col">description</th>
                <th scope="col">keywords</th>
                <th scope="col">status</th>
                <th scope="col">title</th>
                <th scope="col">URL</th>
                <th scope="col">update</th>
                <th scope="col">delete</th>

            </tr>
            </thead>
            <tbody>
          <%--  <tr th:each="subCategoryList : ${subCategorylist}" >

                <th  scope="row"><span th:text="${subCategoryList.subcatId}" ></span></th>


                <td><span th:text="${subCategoryList.subcatName}" ></span></td>


                <td><span th:text="${subCategoryList.subcatDescription}" ></span></td>


                <td><span th:text="${subCategoryList.subcatKeyword}" ></span></td>


                <td  th:if="${subCategoryList.subcatStatus == 'show'}">
                    <i class="fa fa-circle text-success" style="font-size:6px"></i>
                    <span  th:text="${subCategoryList.subcatStatus}" > </span>
                </td>

                <td  th:if="${subCategoryList.subcatStatus == 'hide'}">
                    <i class="fa fa-circle text-danger" style="font-size:6px"></i>
                    <span  th:text="${subCategoryList.subcatStatus}" > </span>
                </td>


                <td><span th:text="${subCategoryList.subcatTitle}" ></span></td>


                <td><span th:text="${subCategoryList.subcatUrl}" ></span></td>


                <td>
                    <a type="button" class="btn btn-sm btn-light"
                       th:href="@{'~/admin/adminpanel/updateSubCategoryForm/'+${subCategoryList.subcatId}}">
                        <!-- 								<i class="fas fa-pencil-alt text-primary" ></i> -->
                        update
                    </a>
                </td>



                <td>
                    <!-- Category Id and Url Pattern Name -->
                    <button th:onclick="|deleteCategoryOrChapter(${subCategoryList.subcatId},'deleteSubCategory')|" th:classappend="${subCategoryList.courseChapters.isEmpty ? ' ' :'disabled' }"
                            type="button" class="btn btn-sm btn-danger ">
                        <i class="fas fa-times"></i>
                        delete</button>
                </td>


            </tr>
--%>
            </tbody>
        </table>





        <!-- Pagination Start -->

        <nav aria-label="Page navigation example" class="mt-3" >

            <ul class="pagination justify-content-center" >

                <li th:if="${currentpage != 0}" class="page-item"><a class="page-link" th:href="@{'~/admin/adminpanel/getSubCatgoryList/'+${currentpage-1}}">Previous</a></li>

                <li><button type="button" class="btn btn-light " th:text="${currentpage+1}" ></button> </li>
                <li th:if="${currentpage+1 != totalPages}" class="page-item"><a class="page-link" th:href="@{'~/admin/adminpanel/getSubCatgoryList/'+${currentpage+1}}">Next</a></li>
            </ul>

        </nav>

        <!-- Pagination End!! -->















    </div>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</section>

</body>
</html>