<!DOCTYPE html>
<html >
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>


<section>
    <jsp:include page="base.html"></jsp:include>


    <div class="container-fuild mt-5">



        <!-- 					show message Box if data is available  -->
        <div   class="container">
            <div class="alert alert-primary text-center" role="alert">
                <span></span>
            </div>
            <span></span>
        </div>
        <!-- 					End show message Box if data is available  -->






        <div class="card p-4 mb-5" style="max-width: 35rem; margin: auto;">
            <div class="card-body">

                <h5 class="card-title text-center mb-4">Create Category</h5>


                <!-- FORM STARTNG... -->
                <form action="" method="post" enctype="multipart/form-data" >

                    <div class="form-group">
                        <label for="exampleFormControlInput1">category Name</label> <input
                            type="text" name="categoryName" class="form-control"
                            placeholder="category Name">
                    </div>



                    <div class="form-group">
                        <label for="exampleFormControlInput1">category Title</label> <input
                            type="text" name="categoryTitle" class="form-control"
                            placeholder="category Title">
                    </div>

                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">categoryDescription</label>
                        <textarea name="categoryDescription" class="form-control"
                                  id="exampleFormControlTextarea1" rows="3"></textarea>
                    </div>

                    <div class="form-group">
                        <label for="exampleFormControlInput1">category Keyword</label> <input
                            type="text" name="categoryKeyword" class="form-control"
                            placeholder="category Keyword">
                    </div>




                    <div class="form-group">
                        <label for="exampleFormControlInput1">category url</label> <input
                            type="text" name="category_url" class="form-control"
                            placeholder="category url">
                    </div>

                    <div class="form-group">
                        <label for="exampleFormControlSelect1">category status</label> <select
                            class="form-control" name="categoryStatus" >
                        <option value="show" >show</option>
                        <option value="hide"  >hide</option>

                    </select>
                    </div>

                    <div class="form-group">
                        <label for="exampleFormControlFile1">Root Category Image</label> <input
                            type="file" name="file" class="form-control-file"
                            id="exampleFormControlFile1">
                    </div>


                    <div class="text-center mt-4 " >
                        <button  type="submit" class="btn btn-primary btn-block">create category</button>
                    </div>



                </form>





            </div>
        </div>


    </div>


</section>


</body>
</html>