<?php 
session_start();
include('cekadmin.php');
?>
<!DOCTYPE html>
<html>
    <head>
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/core.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
        <style>
        
            /* HTML5 display-role reset for older browsers */
            article, aside, details, figcaption, figure, 
            footer, header, hgroup, menu, nav, section {
                display: block;
            }
            body {
                line-height: 1;
            }
            ol {
                list-style: none;
            }
            blockquote, q {
                quotes: none;
            }
            blockquote:before, blockquote:after,
            q:before, q:after {
                content: '';
                content: none;
            }


            /* CSS Reset End */
            body {
                background: #22242A;
            }
            span{
                color: #4CCEE8;
            }
            ul li a{
              background: #fff;
              color: #000;
              display: block;
              margin: 0 10px;
              font-size: 18px;
              width: 34px;
              height: 34px;
              line-height: 35px;
              text-align: center;
              border-radius: 50%;
              transition: 0.3s;
              transition-property: background, color;
            }
            .judul {
                color: #778899;
                font-family:Quicksand, sans-serif;
                font-size: 35px;
                margin-top: 10px;
                margin-left: -35px;
            }
            .logout{
                float: right;
                font-size: 35px;
                margin-top: 10px;
            }
            li {
              display: inline-block;
              margin-right: 10px;
            }
        </style>
    </head>
    <body>
        <ul>
          <li class="judul">Halaman <span>Administrator</span></li>
          <li class="logout"><a href="logout.php" target=_top class="waves-effect"><i class="fa fa-sign-out"></i></a></li>
        </ul>
</body>
</html>