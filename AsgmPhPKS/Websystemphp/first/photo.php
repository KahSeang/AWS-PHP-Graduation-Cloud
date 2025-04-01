<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/EmptyPHPWebPage.php to edit this template
-->
<html>
    <head>
    <style>
        .custom_nav-container {
            display: flex;
            align-items: center; /* Align items vertically in the center */
        }

        .navbar-brand {
            margin-right: auto; /* Pushes the logo to the left */
        }

        .navbar-nav {
            display: flex;
            align-items: center; /* Align items vertically in the center */
            list-style: none;
            float: left;
            color: black;
        }

        .navbar-nav .nav-item {
            margin-right: 15px; /* Adjust spacing between navigation items */
        }

        .btn-box {
            margin-left: 5px;
            display: flex;
            margin-top: 30px;
            box-sizing: border-box;
            border: 2px solid buttonshadow;
            transition: border-color 0.3s ease;
            background-color: buttonshadow;
            width: 150px;
            padding: 10px;
        }

        .btn-box:hover {
            border-color: #7abaff;
            background-color: #fcf8e3;
            transition: border-color 0.3s ease;
            padding: 20px 15px;
            -webkit-transition: all 0.3s;
        }


        footer {
            padding: 10px;
            width: 100%;
            height: 180px; 
            background-color: grey;
            text-align: center;
            bottom: 0;
        }

        .container2 {
            width: 100%;
            height: 100vh;
            display: flex;
            padding: 10px;
            box-sizing: border-box;
            position: relative;
        }

        .box {
            flex: 1;
            overflow: hidden;
            margin: 0% 1.3%;
            transition: .8s;
        }

        .box img {
            max-width: 100%;
            max-height: 300px; /* Adjust this value as needed */
            object-fit: cover;
            transition: .8s;
            opacity: 0.8;
            width: 100%;
        }

        .detail-box {
            margin-left: 200px;
            margin-top: 100px;
        }
    </style>
    
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Open+Sans:wght@300;400;600;700&display=swap");
body {
  font-family: "Open Sans", sans-serif;
  color: #0c0c0c;
  background-color: #ffffff;
  overflow-x: hidden;
}

.layout_padding {
  padding: 90px 0;
}

.layout_padding2 {
  padding: 75px 0;
}

.layout_padding2-top {
  padding-top: 75px;
}

.layout_padding2-bottom {
  padding-bottom: 75px;
}

.layout_padding-top {
  padding-top: 90px;
}

.layout_padding-bottom {
  padding-bottom: 90px;
}

.heading_container {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
  -webkit-box-align: start;
      -ms-flex-align: start;
          align-items: flex-start;
}

.heading_container h2 {
  position: relative;
  font-weight: bold;
  margin-bottom: 0;
}

.heading_container h2 span {
  color: #00bbf0;
}

.heading_container p {
  margin-top: 10px;
  margin-bottom: 0;
}

.heading_container.heading_center {
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  text-align: center;
}

a,
a:hover,
a:focus {
  text-decoration: none;
}

a:hover,
a:focus {
  color: initial;
}

.btn,
.btn:focus {
  outline: none !important;
  -webkit-box-shadow: none;
          box-shadow: none;
}

/*header section*/
.hero_area {
  position: relative;
  min-height: 100vh;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
}

.hero_area .hero_bg_box {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: end;
      -ms-flex-align: end;
          align-items: flex-end;
  overflow: hidden;
  z-index: -1;
}

.hero_area .hero_bg_box .bg_img_box {
  min-width: 100%;
  min-height: 100%;
}

.hero_area .hero_bg_box img {
  min-width: 100%;
  min-height: 100%;
}

.sub_page .hero_area {
  min-height: auto;
  background: linear-gradient(130deg, #231a6f, #0f054c);
}

.sub_page .hero_area .hero_bg_box {
  display: none;
}

.header_section {
  padding: 15px 0;
}

.header_section .container-fluid {
  padding-right: 25px;
  padding-left: 25px;
}

.navbar-brand span {
  font-weight: bold;
  font-size: 24px;
  color: #f8f8f9;
}
.custom_nav-container {
  padding: 0;
}

.custom_nav-container .navbar-nav {
  margin-left: auto;
}

.custom_nav-container .navbar-nav .nav-item .nav-link {
  padding: 5px 20px;
  color: #ffffff;
  text-align: center;
  text-transform: uppercase;
  border-radius: 5px;
  -webkit-transition: all 0.3s;
  transition: all 0.3s;
}

.custom_nav-container .navbar-nav .nav-item:hover .nav-link, .custom_nav-container .navbar-nav .nav-item.active .nav-link {
  transition: all 0.5s ease-in-out;
    color: rgba(0, 0, 0, 0.8);
   
}



.custom_nav-container .navbar-nav .nav-item:hover .nav-link, .custom_nav-container .navbar-nav .nav-item.active .nav-link:hover, .btn:hover{
    color: #000000;
    font-weight: bold;
    text-decoration: none;
    font-size: 1.5em;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
    
}

.custom_nav-container .navbar-nav .nav-item.active .nav-link {
  font-weight: 600;
}

.custom_nav-container .nav_search-btn {
  width: 35px;
  height: 35px;
  padding: 0;
  border: none;
  color: #ffffff;
}

.custom_nav-container .nav_search-btn:hover {
  color: #00bbf0;
}

.custom_nav-container .navbar-toggler {
  outline: none;
}

.custom_nav-container .navbar-toggler {
  padding: 0;
  width: 37px;
  height: 42px;
  -webkit-transition: all 0.3s;
  transition: all 0.3s;
}

.custom_nav-container .navbar-toggler span {
  display: block;
  width: 35px;
  height: 4px;
  background-color: #ffffff;
  margin: 7px 0;
  -webkit-transition: all 0.3s;
  transition: all 0.3s;
  position: relative;
  border-radius: 5px;
  transition: all 0.3s;
}

.custom_nav-container .navbar-toggler span::before, .custom_nav-container .navbar-toggler span::after {
  content: "";
  position: absolute;
  left: 0;
  height: 100%;
  width: 100%;
  background-color: #ffffff;
  top: -10px;
  border-radius: 5px;
  -webkit-transition: all 0.3s;
  transition: all 0.3s;
}

.custom_nav-container .navbar-toggler span::after {
  top: 10px;
}

.custom_nav-container .navbar-toggler[aria-expanded="true"] {
  -webkit-transform: rotate(360deg);
          transform: rotate(360deg);
}

.custom_nav-container .navbar-toggler[aria-expanded="true"] span {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}

.custom_nav-container .navbar-toggler[aria-expanded="true"] span::before, .custom_nav-container .navbar-toggler[aria-expanded="true"] span::after {
  -webkit-transform: rotate(90deg);
          transform: rotate(90deg);
  top: 0;
}

/*end header section*/
/* slider section */
.slider_section {
  -webkit-box-flex: 1;
      -ms-flex: 1;
          flex: 1;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  position: relative;
  padding: 45px 0 145px 0;
}

.slider_section .row {
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
}

.slider_section #customCarousel1 {
  width: 100%;
  position: unset;
}

.slider_section .detail-box {
  color: #00204a;
}

.slider_section .detail-box h1 {
  font-size: 3rem;
  font-weight: bold;
  text-transform: uppercase;
  margin-bottom: 15px;
  color: #ffffff;
}

.slider_section .detail-box p {
  color: #fefefe;
  font-size: 14px;
}

.slider_section .detail-box .btn-box {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  margin: 0 -5px;
  margin-top: 25px;
}

.slider_section .detail-box .btn-box a {
  margin: 5px;
  text-align: center;
  width: 165px;
}

.slider_section .detail-box .btn-box .btn1 {
  display: inline-block;
  padding: 10px 15px;
  background-color: #00bbf0;
  color: #ffffff;
  border-radius: 0;
  -webkit-transition: all 0.3s;
  transition: all 0.3s;
  border: none;
}

.slider_section .detail-box .btn-box .btn1:hover {
  background-color: #007fa4;
}

.slider_section .detail-box .btn-box .btn2 {
  display: inline-block;
  padding: 10px 15px;
  background-color: #000000;
  color: #ffffff;
  border-radius: 0;
  -webkit-transition: all 0.3s;
  transition: all 0.3s;
  border: none;
}

.slider_section .detail-box .btn-box .btn2:hover {
  background-color: black;
}

.slider_section .img-box {
  margin: 45px 0;
}

.slider_section .img-box img {
  width: 100%;
  -webkit-animation: upDown 5s infinite;
          animation: upDown 5s infinite;
}

/*box*/
.container2 {
  display: flex;
  flex-direction: column;
}

.top_boxes,
.bottom_boxes {
  display: flex;
}

.box {
  flex: 1;
  margin: 5px;
}

@-webkit-keyframes upDown {
  0% {
    -webkit-transform: translateY(-45px);
            transform: translateY(-45px);
  }
  50% {
    -webkit-transform: translateY(45px);
            transform: translateY(45px);
  }
  100% {
    -webkit-transform: translateY(-45px);
            transform: translateY(-45px);
  }
}

@keyframes upDown {
  0% {
    -webkit-transform: translateY(-45px);
            transform: translateY(-45px);
  }
  50% {
    -webkit-transform: translateY(45px);
            transform: translateY(45px);
  }
  100% {
    -webkit-transform: translateY(-45px);
            transform: translateY(-45px);
  }
}


.slider_section .carousel-indicators {
  position: unset;
  margin: 0;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
}

.slider_section .carousel-indicators li {
  background-color: #ffffff;
  width: 12px;
  height: 12px;
  border-radius: 100%;
  opacity: 1;
}

.slider_section .carousel-indicators li.active {
  width: 20px;
  height: 20px;
  background-color: #00bbf0;
}

.service_section {
  position: relative;
}

.service_section .box {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  text-align: center;
  margin-top: 45px;
  background-color: #f8f8f9;
  padding: 20px;
  border-radius: 5px;
}

.service_section .box .img-box {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: start;
      -ms-flex-align: start;
          align-items: flex-start;
  width: 125px;
  min-width: 75px;
  height: 75px;
  margin-bottom: 15px;
}

.service_section .box .img-box img {
  max-width: 100%;
  max-height: 100%;
  -webkit-transition: all 0.3s;
  transition: all 0.3s;
}

.service_section .box .detail-box h5 {
  font-weight: bold;
  text-transform: uppercase;
}

.service_section .box .detail-box a {
  color: #00204a;
  font-weight: 600;
}

.service_section .box .detail-box a:hover {
  color: #00bbf0;
}

.service_section .btn-box {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  margin-top: 45px;
}

.service_section .btn-box a {
  display: inline-block;
  padding: 10px 45px;
  background-color: #00bbf0;
  color: #ffffff;
  border-radius: 0;
  -webkit-transition: all 0.3s;
  transition: all 0.3s;
  border: none;
}

.service_section .btn-box a:hover {
  background-color: #007fa4;
}

.about_section {
  background-color: #00204a;
  color: #ffffff;
}

.about_section .heading_container {
  margin-bottom: 45px;
}

.about_section .row {
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
}

.about_section .img-box img {
  max-width: 100%;
}

.about_section .detail-box h3 {
  font-weight: bold;
}

.about_section .detail-box p {
  margin-top: 15px;
}

.about_section .detail-box a {
  display: inline-block;
  padding: 10px 45px;
  background-color: #00bbf0;
  color: #ffffff;
  border-radius: 0px;
  -webkit-transition: all 0.3s;
  transition: all 0.3s;
  border: none;
  margin-top: 15px;
}

.about_section .detail-box a:hover {
  background-color: #007fa4;
}

.why_section .box {
  margin-top: 45px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  text-align: center;
}

.why_section .box .img-box {
  margin-bottom: 20px;
  width: 120px;
  height: 120px;
  min-width: 120px;
  min-height: 120px;
  border-radius: 100%;
  border: 5px solid #00204a;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
}

.why_section .box .img-box img {
  width: 55px;
  height: auto;
  fill: #00204a;
}

.why_section .box h5 {
  font-weight: bold;
  margin-bottom: 10px;
}

.why_section .box p {
  margin-bottom: 0;
}

.why_section .btn-box {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  margin-top: 45px;
}

.why_section .btn-box a {
  display: inline-block;
  padding: 10px 45px;
  background-color: #00bbf0;
  color: #ffffff;
  border-radius: 0;
  -webkit-transition: all 0.3s;
  transition: all 0.3s;
  border: none;
}

.why_section .btn-box a:hover {
  background-color: #007fa4;
}

/*team section */
.team_section {
  text-align: center;
  background-color: #00204a;
  color: #ffffff;
}

.team_section .heading_container {
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
}

.team_section .team_container {
  padding: 0 15px;
}

.team_section .team_container .box {
  padding: 35px 0 0 0;
  border-radius: 5px;
  overflow: hidden;
  -webkit-transition: all .1s;
  transition: all .1s;
  margin-top: 45px;
  background: -webkit-gradient(linear, left top, left bottom, from(#002759), to(#002b64));
  background: linear-gradient(to bottom, #002759, #002b64);
}

.team_section .team_container .box .img-box {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
}

.team_section .team_container .box .img-box img {
  width: 120px;
  border-radius: 100%;
  border: 5px solid #ffffff;
}

.team_section .team_container .box .detail-box {
  margin: 25px 0;
}

.team_section .team_container .box .detail-box h5 {
  color: #00bbf0;
  font-weight: 600;
  position: relative;
}

.team_section .team_container .box .social_box {
  padding: 10px 45px 20px 45px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: justify;
      -ms-flex-pack: justify;
          justify-content: space-between;
}

.team_section .team_container .box .social_box a {
  color: #ffffff;
  font-size: 22px;
}

.team_section .team_container .box .social_box a:hover {
  color: #00bbf0;
}

/*team section end*/
/* client section start */
.client_section .heading_container {
  margin-bottom: 30px;
}

.client_section .box {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
  margin: 15px;
}

.client_section .box .img-box {
  position: relative;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  width: 100px;
  margin-bottom: -50px;
  margin-left: 25px;
  position: relative;
}

.client_section .box .img-box img {
  border-radius: 100%;
}

.client_section .box .client_id {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: justify;
      -ms-flex-pack: justify;
          justify-content: space-between;
}

.client_section .box .client_id .client_info h6 {
  font-weight: 600;
  margin-bottom: 5px;
}

.client_section .box .client_id .client_info p {
  margin-bottom: 0;
  font-size: 15px;
  font-size: 14px;
  margin-bottom: 10px;
}

.client_section .box .detail-box {
  background-color: #ffffff;
  -webkit-box-shadow: 0 0 15px 0 rgba(0, 0, 0, 0.15);
          box-shadow: 0 0 15px 0 rgba(0, 0, 0, 0.15);
  padding: 75px 25px 25px 25px;
}

.client_section .box .detail-box i {
  color: #00204a;
  margin-bottom: 10px;
}

.client_section .owl-carousel .owl-nav {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  margin-top: 45px;
}

.client_section .owl-carousel .owl-nav .owl-prev,
.client_section .owl-carousel .owl-nav .owl-next {
  width: 55px;
  height: 55px;
  background-color: #ffffff;
  color: #000000;
  outline: none;
  bottom: 0px;
  font-size: 24px;
  -webkit-box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.25);
          box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.25);
}

.client_section .owl-carousel .owl-nav .owl-prev:hover,
.client_section .owl-carousel .owl-nav .owl-next:hover {
  color: #00204a;
}

/* client section end */
.info_section {
  background-color: #00204a;
  color: #ffffff;
  padding: 45px 0 15px 0;
}

.info_section h4 {
  font-weight: 600;
  margin-bottom: 20px;
}

.info_section .info_col {
  margin-bottom: 30px;
}

.info_section .info_contact .contact_link_box {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
}

.info_section .info_contact .contact_link_box a {
  margin: 5px 0;
  color: #ffffff;
}

.info_section .info_contact .contact_link_box a i {
  margin-right: 5px;
}

.info_section .info_contact .contact_link_box a:hover {
  color: #00bbf0;
}

.info_section .info_social {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  margin-top: 20px;
  margin-bottom: 10px;
}

.info_section .info_social a {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  color: #ffffff;
  border-radius: 100%;
  margin-right: 10px;
  font-size: 24px;
}

.info_section .info_social a:hover {
  color: #00bbf0;
}

.info_section .info_links {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
  -ms-flex-wrap: wrap;
      flex-wrap: wrap;
}

.info_section .info_links a {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  margin-bottom: 15px;
  color: #ffffff;
}

.info_section .info_links a:hover {
  color: #00bbf0;
}

.info_section form input {
  border: none;
  border-bottom: 1px solid #ffffff;
  background-color: transparent;
  width: 100%;
  height: 45px;
  color: #ffffff;
  outline: none;
}

.info_section form input::-webkit-input-placeholder {
  color: #ffffff;
}

.info_section form input:-ms-input-placeholder {
  color: #ffffff;
}

.info_section form input::-ms-input-placeholder {
  color: #ffffff;
}

.info_section form input::placeholder {
  color: #ffffff;
}

.info_section form button {
  width: 100%;
  text-align: center;
  display: inline-block;
  padding: 10px 55px;
  background-color: #00bbf0;
  color: #ffffff;
  border-radius: 0;
  -webkit-transition: all 0.3s;
  transition: all 0.3s;
  border: none;
  margin-top: 15px;
}

.info_section form button:hover {
  background-color: #007fa4;
}

/* footer section*/
/*.footer_section {
  position: relative;
  background-color: #ffffff;
  text-align: center;
}

.footer_section p {
  color: #00204a;
  padding: 25px 0;
  margin: 0;
}

.footer_section p a {
  color: inherit;
}*/
/*# sourceMappingURL=style.css.map */
    </style>
    
    <style>
.box {
  position: relative;
}

.text-overlay {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  background-color: rgba(0, 0, 0, 0.7);
  color: #fff;
  padding: 10px;
  text-align: center;
}

.text-overlay p {
  margin: 0;
}


    </style>
    
    <style>
        .learn-more-button {
  display: inline-block;
  background-color: #007bff; 
  color: #fff; 
  padding: 10px 20px; 
  border-radius: 5px; 
  text-decoration: none; 
  transition: background-color 0.3s ease; 
  margin: 10px;
}

.learn-more-button:hover {
  background-color: #0056b3; 
}

    </style>
        
        
        
        <meta charset="UTF-8">
        <title>Photography</title>
    </head>
    <body>
            <div class="hero_area">

        <div class="hero_bg_box">
            <div class="bg_img_box">
                <img src="posterhome.jpg" alt="" style="width: 100%;opacity: 1.5;">
            </div>
        </div>
        

        <header class="header_section">
    <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container">
            <a class="navbar-brand" href="index.html">
                <span>
                    <img class="logo" src="oklogo.png" alt="logo" style="width:150px;height:150px;">
                </span>
            </a>

            
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="home.php">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.html"> About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="service.html">Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="why.html">Why Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="team.html">Team</a>
                    </li>
                    <button class="btn">Login</button>
                </ul>
                
            </div>
        </nav>
            
            <div class="detail-box">
                                        <h1 style="font-weight:bold;font-size:55px;color:white;">
                                            Welcome to <br>
                                            OK Society
                                        </h1>
                                        <p style="color:white;">
                                            The concept of society is fundamental to our understanding of human civilization <br> and social interaction. At its core, society refers to a group of individuals who share <br> a common culture, territory, and identity, and who interact with one another within <br> a structured framework of norms, values, and institutions.
                                        </p>
                                        <div class="btn-box" style="font-size:18px;">
                                            <a href="" class="btn1" style="color:black;">
                                                Read More
                                            </a>
                                        </div>
                                    </div>
    </div>
</header>
                
                <!-- content -->
<div>
    <h1>Photography</h1>
</div>





            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            <footer>
                <div class="footer-content">
                <a href="https://www.instagram.com/tarumt_penang/" target="_blank"><ion-icon id="insta" name="logo-instagram"></ion-icon></a>
                <a href="https://www.facebook.com/tarumtpenang/?locale=ms_MY" target="_blank"><ion-icon name="logo-facebook"></ion-icon></a>
                <a href="https://twitter.com/KlTaruc" target="_blank"><ion-icon name="logo-twitter"></ion-icon></a>
                <p>77, Lorong Lembah Permai Tiga,<br>
                    TARUMT PHARMACY<br>
                    11200 Tanjong Bungah,<br>
                    Pulau Pinang, Malaysia.<br>
                    Tel: <a href="tel:(6)04-8995230" style="color:black;">(6)04-8995230</a><br>
                    Whatsapp: <a href="phone:+6011 1082 5618 /+60 13-898 8408" style="color:black;">+6011 1082 5618 /+60 13-898 8408</a><br>
                    Email: <a href="mailto:penang@tarc.edu.my" style="color:black;">penang@tarc.edu.my</a><br></p>
            </div>
            </footer>

</body>


</html>
        


