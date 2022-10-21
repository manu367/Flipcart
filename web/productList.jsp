<!DOCTYPE html>
<html >
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>


<section>


    <jsp:include page="base.html"></jsp:include>

    <div class="container">



        <!-- 					show message Box if data is available  -->
        <div  class="container">
            <div  class="alert alert-primary text-center" role="alert">
                <span></span>
            </div>
            <span></span>
        </div>
        <!-- 					End show message Box if data is available  -->





        <h4 class="text-center mt-4 mb-3">Product List</h4>

        <table  style="font-size: 12px;" class="table">
            <thead class="thead-dark">
            <tr>
                <th scope="col">id</th>
                <th scope="col">Content</th>
                <th scope="col">Name</th>
                <th scope="col">description</th>
                <th scope="col">keywords</th>
                <th scope="col">status</th>
                <th scope="col">title</th>
                <th scope="col">sub-title</th>
                <th scope="col">URL</th>
                <th scope="col">update</th>
                <th scope="col">delete</th>

            </tr>
            </thead>
            <tbody>
           <%-- <tr th:each="chapterList : ${courseCategorylist}" >

                <th  scope="row"><span th:text="${chapterList.chapterId}" ></span></th>

                <td><span th:text="${chapterList.chapterContent}" ></span></td>


                <td><span th:text="${chapterList.chapterName}" ></span></td>


                <td><span th:text="${chapterList.chapterDescription}" ></span></td>


                <td><span th:text="${chapterList.chapterKeywords}" ></span></td>


                <td  th:if="${chapterList.chapterStatus == 'show'}">
                    <i class="fa fa-circle text-success" style="font-size:6px"></i>
                    <span  th:text="${chapterList.chapterStatus}" > </span>
                </td>

                <td  th:if="${chapterList.chapterStatus == 'hide'}">
                    <i class="fa fa-circle text-danger" style="font-size:6px"></i>
                    <span  th:text="${chapterList.chapterStatus}" > </span>
                </td>


                <td><span th:text="${chapterList.chapterTitle}" ></span></td>

                <td><span th:text="${chapterList.chapterSubTitle}" ></span></td>


                <td><span th:text="${chapterList.chapterUrl}" ></span></td>


                <td>
                    <a type="button" class="btn btn-sm btn-light"
                       th:href="@{'~/admin/adminpanel/updateChapterForm/'+${chapterList.chapterId}}">
                        <!-- 								<i class="fas fa-pencil-alt text-primary" ></i> -->
                        update
                    </a>
                </td>



                <td>
                    <!-- Chapter Id and Url Pattern Name -->
                    <button th:onclick="|deleteCategoryOrChapter(${chapterList.chapterId},'deleteChapter')|"
                            type="button" class="btn btn-sm btn-danger ">
                        <i class="fas fa-times"></i>
                        delete</button>
                </td>


            </tr>--%>

            </tbody>
        </table>





        <!-- Pagination Start -->

        <nav aria-label="Page navigation example" class="mt-3" >

            <ul class="pagination justify-content-center" >

                <li th:if="${currentpage != 0}" class="page-item"><a class="page-link" th:href="@{'~/admin/adminpanel/getChapterList/'+${currentpage-1}}">Previous</a></li>

                <li><button type="button" class="btn btn-light " th:text="${currentpage+1}" ></button> </li>
                <li th:if="${currentpage+1 != totalPages}" class="page-item"><a class="page-link" th:href="@{'~/admin/adminpanel/getChapterList/'+${currentpage+1}}">Next</a></li>
            </ul>

        </nav>

        <!-- Pagination End!! -->







    </div>

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</section>

</body>
</html>