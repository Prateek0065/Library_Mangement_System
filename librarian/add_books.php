<?php
session_start();
include "header.php";
include "connection.php";
?>

        <!-- page content area main -->
        <div class="right_col" role="main">
            <div class="">
                <div class="page-title">
                    <div class="title_left">
                        <h3> </h3>
                    </div>

                    <div class="title_right">
                        <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="clearfix"></div>
                <div class="row" style="min-height:500px">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Add Books Info</h2>

                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <form name="form1" action="" method="post" class="col-lg-6" enctype="multipart/form-data">
                                    <table class="table table-bordered">
                                        <tr>
                                            <td>
                                                <input type="text" class="form-control" placeholder="books name" name="booksname"required="">
                                                
                                            </td>
                                        </tr>
                                         <tr>
                                            <td>
                                                books image
                                                <input type="file" name="f1"required="">
                                                
                                            </td>
                                        </tr>
                                         <tr>
                                            <td>
                                                <input type="text" class="form-control" placeholder="books author name" name="bauthor"required="">
                                                
                                            </td>
                                        </tr>
                                         <tr>
                                            <td>
                                                <input type="text" class="form-control" placeholder="books publication name" name="pname"required="">
                                                
                                            </td>
                                        </tr>
                                         <tr>
                                            <td>
                                                <input type="text" class="form-control" placeholder="books purchase date" name="pdate"required="">
                                                
                                            </td>
                                        </tr>
                                         <tr>
                                            <td>
                                                <input type="text" class="form-control" placeholder="books price" name="price"required="">
                                                
                                            </td>
                                        </tr>
                                         <tr>
                                            <td>
                                                <input type="text" class="form-control" placeholder="books quantity" name="quantity"required="">
                                                
                                            </td>
                                        </tr>
                                         <tr>
                                            <td>
                                                <input type="text" class="form-control" placeholder="available quantity" name="aquantity"required="">
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="submit" name="submit1" class="btn btn-default submit" value="insert books details" style="background-color: blue;color:white">
                                                
                                            </td>
                                        </tr>
                                        
                                    </table>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /page content -->

<?php
if(isset($_POST["submit1"]))
{
    $tm=md5(time());
    $fnm=$_FILES["f1"]["name"];
    $dst="./books_image/".$tm.$fnm;
    $dst1="books_image/".$tm.$fnm;
    move_uploaded_file($_FILES["f1"]["tmp_name"],$dst);
    mysqli_query($link,"insert into add_books values('','$_POST[booksname]','$dst1','$_POST[bauthor]','$_POST[pname]','$_POST[pdate]','$_POST[price]','$_POST[quantity]','$_POST[aquantity]','$_SESSION[librarian]')");
    ?>
<script type="text/javascript">
    alert("books inserted Successfully");
</script>
<?php
    
}
?>

        <!-- footer content -->
        <footer>
            <div class="pull-right">
                Library Management System
            </div>
            <div class="clearfix"></div>
        </footer>
        

  <?php
include "footer.php"
?>