<?php

include ("conn_theatre.php");


/*       //////////////////////////////////////////
            PRODUCTION NAME SEARCH SCRIPT START 
         ////////////////////////////////////////// */


if(isset($_POST['search_name'])){
    
    $name=$_POST['name'];
    
    
    
    $query="SELECT * FROM productions WHERE Production_Name LIKE '%$name%'";
    
    $result=mysqli_query($conn, $query);
    
       $rowcount=mysqli_num_rows($result);}
/*       //////////////////////////////////////////
            PRODUCTION NAME SEARCH SCRIPT END 
         ////////////////////////////////////////// */
    /*       //////////////////////////////////////////
            PRODUCTION DATE SEARCH SCRIPT START 
         ////////////////////////////////////////// */
if(isset($_POST['search_date'])){
    
    $date_start=$_POST['date_start'];
    $date_end=$_POST['date_end'];
    
    
    
    $query="SELECT * FROM productions WHERE Date BETWEEN '$date_start' AND '$date_end'";
    
    $result=mysqli_query($conn, $query);
    }
    /*       //////////////////////////////////////////
            PRODUCTION DATE SEARCH SCRIPT END 
         ////////////////////////////////////////// */
/*       //////////////////////////////////////////
            PRODUCTION GENRE SEARCH SCRIPT START 
         ////////////////////////////////////////// */
if(isset($_POST['search_upcoming'])){
    
    $genre=$_POST['genre'];
    
    
    
    $query="SELECT * FROM productions WHERE Genre = '$genre'";
    
    $result=mysqli_query($conn, $query);
}
/*       //////////////////////////////////////////
            PRODUCTION GENRE SEARCH SCRIPT END 
         ////////////////////////////////////////// */
    ?>

<!doctype html>

<html>

<head>
    <title>Page Title</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Crimson+Text" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Allerta+Stencil" rel="stylesheet">
</head>

<body>


    <!-- //////////////////////////////////////////
            HEADER START 
         //////////////////////////////////////////-->
    <?php
      include('header.php');
        ?>
    <!-- //////////////////////////////////////////
            HEADER END
         //////////////////////////////////////////-->

    <?php
    include('search_box.php');
    ?>




<div class="production_box">

        <?php 
        while ($row = mysqli_fetch_array($result)){
        $Production_Name=$row['Production_Name'];
        $Genre=$row['Genre'];
        $Date=$row['Date'];
        $start_time=$row['start_time'];
        $Price_Band=$row['Price_Band'];
        $Product_Image_Path=$row['Product_Image_Path'];
    
   
    
    echo 
        
    "<div class=\"single_production_wrap\">
    
    <div class=\"single_production\">
    
    <img src=\" " .$Product_Image_Path. " \"> 
    
    <div class=\"single_production_content\">
    
    
    <h2> " .$Production_Name. "</h2>
    <table> 
    <tr>
    <td>Genre: </td><td>" .$Genre. "</td>
    </tr>
    <tr>
    <td>Date: </td><td>" .$Date. "</td>
    </tr>
    <tr>
    <td>Start Time: </td><td>" .$start_time. "</td>
    </tr>
    <tr>
    <td>Price Band: </td><td>" .$Price_Band. "</td>
    </tr>
    </table>
    
    </div>
    </div>
    </div>"  ;
         }
        


    
    
    
    
    
    
    

    
    
    ?>

    </div>

</body>

</html>
