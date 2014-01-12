<!DOCTYPE html>
<html>
<head>
   <?php include_once('php/Projects.php');
   include_once('php/Users.php');
   $projects=new Projects();
   $users=new Users();

   ?>

    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script type="text/javascript">
        function toggle(control) {
            var elem = document.getElementById(control);

            if (elem.style.display == "none") {
                elem.style.display = "block";
            } else {
                elem.style.display = "none";
            }
        }
    </script>
    <title>Search</title>
</head>
<body>
<header class="header">
    <p>Advisor Matcher</p>

    <div class="logindata"><p><?php echo 'User: ' ;?></p></div>
</header>
<div class="wrapper">
    <div class="nav">
        <a href="home.html">Home</a>
        <a href="#">Search</a>
        <a href="browse.php">Browse</a>
        <a href="news.html">News</a>
        <a href="contact.html">Contact</a>
        <a href="../index.html">Logout</a>

    </div>

    <div class="content">

        <form method="post" action="#">
            <div class="searchtitle"><h2>Search by Projecttitle</h2></div>
            <div class="search">

                <input type="text" name="search" class="textfield">
                <br>
                <input type="submit" name="search_submit" class="button" value="Search">
            </div>
        </form>
        <h2>Results</h2>

        <?php if($_POST['search_submit']){?>
        <table class="inst">
            <tr style="text-align: left;">
                <th>Date</th>
                <th>Project</th>
                <th>Contact person</th>
            </tr>
            <?php
            $pro=$projects->getProjects();
                for($i=0; $i<count($pro);$i++){
                    if($_POST['search']==""||strpos($pro[$i][1],$_POST['search'])!==false){
                    if($i%2==0){
                        echo '<tr>
                <td>' . $pro[$i][7] . '</td>
                <td><a href="#">'. $pro[$i][1] . '</a></td>
                <td>Muster</td>
                     </tr>';
                    }

                    else{
                        echo '<tr class="even">
                <td>'. $pro[$i][7] . '</td>
                <td><a href="#">'. $pro[$i][1] . '</a></td>
                <td>Berger</td>
                     </tr>';
                    }
                    }
                }
            }?>




        </table>

    </div>
</div>
</body>
</html>
