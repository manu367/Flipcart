<!DOCTYPE html>
<html   >
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>


<section>

<jsp:include page="base.html"></jsp:include>

    <div class="container-fuild mt-5">



        <!-- 					show message Box if data is available  -->
        <div  >
            <div  class="alert alert-primary text-center" role="alert">
                <span ></span>
            </div>
            <span></span>
        </div>
        <!-- 					End show message Box if data is available  -->






        <div class="card p-4 mb-5" style="max-width: 45rem; margin: auto;">
            <div class="card-body">

                <h5 class="card-title text-center mb-4">Create Product</h5>


                <!-- FORM STARTNG... -->
                <form th:action="" method="post"  >


                    <div class="form-group">
                        <label for="exampleFormControlSelect1">Select Category</label>
                        <select name="subCategoryId" class="form-control ">
                            <option></option>
                            <option >
                            </option>
                        </select>
                    </div>


                    <div class="form-group">
                        <label for="exampleFormControlInput1">Product Name</label> <input
                            type="text" name="chapterName" class="form-control"
                            placeholder="chapter Name">
                    </div>



                    <div class="form-group">
                        <label for="exampleFormControlInput1">Product Price</label> <input
                            type="text" name="chapterTitle" class="form-control"
                            placeholder="chapter Title">
                    </div>

                    <div class="form-group">
                        <label for="exampleFormControlInput1">Product sub-title</label> <input
                            type="text" name="chapterSubTitle" class="form-control"
                            placeholder="chapter sub-Title">
                    </div>

                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Product Description</label>
                        <textarea name="chapterDescription" class="form-control"
                                  id="exampleFormControlTextarea1" rows="3"></textarea>
                    </div>


                    <!-- CONTENT -->

                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Product Content</label>
                        <textarea name="chapterContent" class="form-control"
                                  rows="3"></textarea>
                        <script>
                            CKEDITOR.replace( 'chapterContent' );
                        </script>
                    </div>



                    <div class="form-group">
                        <label for="exampleFormControlInput1">Product Keywords</label> <input
                            type="text" name="chapterKeywords" class="form-control"
                            placeholder="chapter Keywords">
                    </div>



                    <div class="form-group">
                        <label for="exampleFormControlInput1">Product Url (LIKE java,phyton,c++)</label> <input
                            type="text" name="chapterUrl" class="form-control"
                            placeholder="category url">
                    </div>

                    <div class="form-group">
                        <label for="exampleFormControlSelect1">sub category status</label> <select
                            class="form-control" name="chapterStatus" >
                        <option value="show" >show</option>
                        <option value="hide"  >hide</option>

                    </select>
                    </div>

                    <!-- 						<div class="form-group"> -->
                    <!-- 							<label for="exampleFormControlFile1">chapter Image</label> <input -->
                    <!-- 								type="file" name="file" class="form-control-file" -->
                    <!-- 								id="exampleFormControlFile1"> -->
                    <!-- 						</div> -->


                    <div class="text-center mt-4 " >
                        <button  type="submit" class="btn btn-primary btn-block">create Product</button>
                    </div>



                </form>





            </div>
        </div>


    </div>




</section>


</body>
</html>