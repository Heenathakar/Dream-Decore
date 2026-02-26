<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="anniversary.aspx.cs" Inherits="b.anniversary" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;800&display=swap" rel="stylesheet">

    <style>
        /* ============================================== */
        /* DREAM DECOR — BIRTHDAY PAGE                    */
        /* SINGLE BANNER - SAME STYLE AS HOME PAGE        */
        /* ============================================== */

        @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&family=Poppins:wght@300;400;500;600;700&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;700&display=swap');

        /* ===== CSS VARIABLES - SAME THEME ===== */
        :root {
            --teal-primary: #6F8F9A;      /* Main button color, accents */
            --teal-dark: #5A7A84;         /* Hover state for teal */
            --teal-darker: #4A656E;       /* Active/click state for teal */
            --gold-primary: #D4A373;       /* Golden for hover/active states */
            --gold-dark: #B88D5E;          /* Darker gold for active */
            --charcoal: #2C3E4F;           /* Dark headings */
            --pure-white: #FFFFFF;          /* White */
            --light-gray: #f4f4f4;          /* Page background */
            --card-bg: #ffffff;              /* Card background */
            --text-dark: #2b3b41;           /* Body text */
            --text-light: #555;              /* Lighter text */
            --text-muted: #666;              /* Muted text */
            --border-light: #ecf3f5;         /* Light border */
        }

        /* ===== GLOBAL STYLES ===== */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: var(--light-gray);
            color: var(--text-dark);
            line-height: 1.6;
            overflow-x: hidden;
        }

        /* ===== TYPOGRAPHY - SAME AS HOME/SERVICES ===== */
        h1, h2, h3, h4, h5, h6 {
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            color: var(--charcoal);
            line-height: 1.2;
        }

        h1 {
            font-size: 52px;
            font-weight: 800;
            letter-spacing: 2px;
        }

        h2 {
            font-size: 46px;
            font-weight: 800;
            color: #000000;
        }

        h3 {
            font-size: 22px;
            font-weight: 700;
        }

        h4 {
            font-size: 20px;
            font-weight: 700;
        }

        p {
            font-family: 'Poppins', sans-serif;
            font-size: 15px;
            font-weight: 400;
            color: var(--text-light);
            line-height: 1.7;
        }

        /* ===== BANNER - SINGLE IMAGE SAME STYLE AS HOME PAGE ===== */
        .page-banner {
            width: 100%;
            height: 100vh;
            background: url('images/ann banner.jpg') no-repeat center center/cover;
            position: relative;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
            overflow: hidden;
            animation: smoothZoom 8s infinite alternate ease-in-out;
        }

        /* Smooth Zoom Effect */
        @keyframes smoothZoom {
            0% { transform: scale(1); }
            100% { transform: scale(1.1); }
        }

        /* Light Overlay - same as home page */
        .page-banner::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.15);
            z-index: 2;
        }

        /* Banner Content */
        .banner-content {
            position: relative;
            z-index: 3;
            max-width: 1000px;
            padding: 20px;
            animation: fadeInUp 1.2s ease-out;
        }

        @keyframes fadeInUp {
            0% { opacity: 0; transform: translateY(40px); }
            100% { opacity: 1; transform: translateY(0); }
        }

        .banner-title {
            color: var(--pure-white);
            font-size: 80px;
            font-weight: 900;
            margin-bottom: 20px;
            letter-spacing: 4px;
            text-shadow: 3px 3px 6px rgba(0,0,0,0.4);
            font-family: 'Playfair Display', serif;
            line-height: 1.1;
        }

        .banner-subtitle {
            color: var(--pure-white);
            font-size: 22px;
            font-weight: 400;
            margin-bottom: 35px;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
            font-family: 'Poppins', sans-serif;
            max-width: 800px;
            margin-left: auto;
            margin-right: auto;
            line-height: 1.6;
        }

        /* ===== BUTTONS WITH DROPDOWN COLOR ICONS ===== */
        .banner-btns {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 40px;
            position: relative;
            z-index: 3;
        }

        .theme-btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            min-width: 200px;
            height: 60px;
            background-color: var(--teal-primary);
            color: var(--pure-white);
            border: 2px solid rgba(255,255,255,0.6);
            border-radius: 60px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 15px 30px rgba(111, 143, 154, 0.25);
            padding: 0 30px;
            font-family: 'Poppins', sans-serif;
            position: relative;
            overflow: hidden;
            margin: 10px;
        }

        /* Icon styling - matching dropdown colors */
        .theme-btn .btn-symbol {
            font-size: 22px;
            color: var(--gold-primary);
            transition: all 0.3s ease;
            filter: drop-shadow(0 0 5px rgba(212, 163, 115, 0.3));
        }

        .theme-btn:hover {
            background-color: var(--gold-primary);
            color: var(--pure-white);
            transform: translateY(-5px) scale(1.02);
            box-shadow: 0 20px 35px rgba(44, 62, 79, 0.4);
            border-color: rgba(255,255,255,0.9);
        }

        .theme-btn:hover .btn-symbol {
            color: var(--pure-white);
            transform: scale(1.2) rotate(5deg);
            filter: drop-shadow(0 0 8px rgba(255,255,255,0.5));
        }

        .theme-btn:active {
            transform: scale(0.95);
            background-color: var(--gold-dark);
            box-shadow: 0 2px 10px rgba(0,0,0,0.2);
            transition: 0.1s;
        }

        /* ===== SLIDER SECTION ===== */
    .slider-section-wrapper {
    padding: 60px 0;
    scroll-margin-top: 20px;
    }
     .decor-heading {
            text-align: center;
            font-size: 46px;
            font-weight: 800;
            color: #000000;
            margin-bottom: 50px;
            text-transform: uppercase;
            font-family: 'Playfair Display', serif;
            position: relative;
            display: inline-block;
            width: 100%;
        }

        .decor-heading:after {
            content: '';
            position: absolute;
            bottom: -15px;
            left: 50%;
            transform: translateX(-50%);
            width: 120px;
            height: 4px;
            background: linear-gradient(90deg, var(--teal-primary), var(--teal-primary));
            border-radius: 10px;
        }

        .slider-section {
            position: relative;
            width: 1180px;
            margin: 0 auto;
            overflow: visible;
        }

        .image-container {
            display: flex;
            flex-direction: column;
            gap: 25px;
            overflow: hidden;
            scroll-behavior: smooth;
            width: 100%;
        }

        .row-wrapper {
            display: flex;
            gap: 20px;
            width: max-content;
            padding: 10px 0;
        }

        /* ===== IMAGE CARDS ===== */
        .image-box {
            width: 380px;
            height: 280px;
            border-radius: 20px;
            overflow: hidden;
            background: var(--card-bg);
            flex-shrink: 0;
            border: 1px solid var(--border-light);
            transition: all 0.4s ease;
            box-shadow: 0 8px 20px rgba(0,0,0,0.04);
            animation: imageFadeIn 0.8s ease-out;
            animation-fill-mode: both;
        }

        .image-box:nth-child(1) { animation-delay: 0.1s; }
        .image-box:nth-child(2) { animation-delay: 0.2s; }
        .image-box:nth-child(3) { animation-delay: 0.3s; }
        .image-box:nth-child(4) { animation-delay: 0.4s; }
        .image-box:nth-child(5) { animation-delay: 0.5s; }
        .image-box:nth-child(6) { animation-delay: 0.6s; }

        @keyframes imageFadeIn {
            0% {
                opacity: 0;
                transform: scale(0.9) translateY(20px);
            }
            100% {
                opacity: 1;
                transform: scale(1) translateY(0);
            }
        }

        .image-box img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.6s ease;
        }

        .image-box:hover {
            transform: translateY(-10px) scale(1.02);
            box-shadow: 0 22px 40px -10px rgba(95, 135, 145, 0.25);
            border-color: var(--gold-primary);
        }

        .image-box:hover img {
            transform: scale(1.08);
        }

        /* ===== NAVIGATION ARROWS ===== */
        .nav-arrow {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            width: 60px;
            height: 60px;
            background: var(--teal-primary);
            color: var(--pure-white);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            z-index: 100;
            border: 2px solid var(--pure-white);
            font-size: 28px;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(111, 143, 154, 0.25);
        }

        .prev-arrow {
            left: -80px;
        }

        .next-arrow {
            right: -80px;
        }

        .nav-arrow:hover {
            background: var(--gold-primary);
            color: var(--pure-white);
            transform: translateY(-50%) scale(1.1);
            border-color: var(--pure-white);
            box-shadow: 0 8px 25px rgba(44, 62, 79, 0.3);
        }

        .nav-arrow:active {
            transform: translateY(-50%) scale(0.95);
            background: var(--gold-dark);
        }

        /* ===== RESPONSIVE DESIGN ===== */
        @media (max-width: 1400px) {
            .slider-section {
                width: 90%;
            }
            
            .image-box {
                width: 31%;
                height: auto;
                aspect-ratio: 380/280;
            }
            
            .prev-arrow {
                left: 5px;
            }
            
            .next-arrow {
                right: 5px;
            }
            
            .banner-title {
                font-size: 60px;
            }
            
            .banner-subtitle {
                font-size: 20px;
            }
            
            .theme-btn {
                min-width: 180px;
                height: 55px;
                font-size: 15px;
            }
        }

        @media (max-width: 768px) {
            .banner-title {
                font-size: 48px;
                letter-spacing: 3px;
            }
            
            .banner-subtitle {
                font-size: 18px;
            }
            
            .banner-btns {
                flex-direction: column;
                align-items: center;
                gap: 15px;
            }
            
            .theme-btn {
                width: 260px;
                height: 55px;
            }
            
            .decor-heading {
                font-size: 38px;
            }
            
            .nav-arrow {
                width: 45px;
                height: 45px;
                font-size: 22px;
            }
        }

        @media (max-width: 480px) {
            .banner-title {
                font-size: 40px;
                letter-spacing: 2px;
            }
            
            .banner-subtitle {
                font-size: 16px;
            }
            
            .decor-heading {
                font-size: 32px;
            }
            
            .decor-heading:after {
                width: 100px;
            }
            
            .theme-btn {
                width: 240px;
                height: 50px;
                font-size: 14px;
            }
        }

        /* SMOOTH SCROLL BEHAVIOR */
        html {
            scroll-behavior: smooth;
        }

    .bg-light {
    background-color: var(--light-gray);
    }

    .bg-white {
    background-color: var(--pure-white);
    }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       
    <!-- BANNER - SINGLE IMAGE SAME STYLE AS HOME PAGE -->
    <div class="page-banner" id="birthdayBanner">
        <!-- Banner Content -->
        <div class="banner-content">
            <h1 class="banner-title">Anniversary Celebration</h1>
            <p class="banner-subtitle">Make your birthday unforgettable with our stunning decorations</p>
            <div class="banner-btns">
                <button type="button" class="theme-btn" onclick="scrollToSec('car-sec')">
                    <span class="btn-symbol">🎈</span> BALOON DECORE
                </button>
                <button type="button" class="theme-btn" onclick="scrollToSec('balloon-sec')">
                    <span class="btn-symbol">👑</span> LUXURY ANNIVERSARY SETUP
                </button>
                <button type="button" class="theme-btn" onclick="scrollToSec('kids-sec')">
                    <span class="btn-symbol">🌹</span> SILVER JUBLLY SETUP
                </button>
            </div>
        </div>
    </div>

    <!-- =====  Balloon Decoration SECTION ===== -->
    <div id="Div1" class="slider-section-wrapper  bg-light">
        <h2 class="decor-heading"> Balloon Decoration</h2>
        <div class="slider-section">
            <button type="button" class="nav-arrow prev-arrow" onclick="moveSlider(this, -1)">❮</button>
            <div class="image-container">
                <div class="row-wrapper">
                     <div class="image-box"><img src="images/anniversary/baloon.1.jpg" alt="Ring Ceremony 1"></div>
                    <div class="image-box"><img src="images/anniversary/baloon.2.jpg" alt="Ring Ceremony 2"></div>
                    <div class="image-box"><img src="images/anniversary/baloon.3.jpg" alt="Ring Ceremony 3"></div>     
                    <div class="image-box"><img src="images/anniversary/baloon.4.jpg" alt="Ring Ceremony 4"></div>
                    <div class="image-box"><img src="images/anniversary/baloon.5.jpg" alt="Ring Ceremony 5"></div>
                    <div class="image-box"><img src="images/anniversary/baloon.6.jpg" alt="Ring Ceremony 6"></div>
                </div>
                <div class="row-wrapper">
                    <div class="image-box"><img src="images/anniversary/baloon.7.jpg" alt="Ring Ceremony 7"></div>
                    <div class="image-box"><img src="images/anniversary/baloon.8.jpg" alt="Ring Ceremony 8"></div>
                    <div class="image-box"><img src="images/anniversary/bloontheam.jpg" alt="Ring Ceremony 9"></div>
                    <div class="image-box"><img src="images/anniversary/baloon.10.jpg" alt="Ring Ceremony 10"></div>
                    <div class="image-box"><img src="images/anniversary/baloon.11.jpg" alt="Ring Ceremony 11"></div>
                    <div class="image-box"><img src="images/anniversary/baloon.13.jpg" alt="Ring Ceremony 12"></div>
                </div>
            </div>
            <button type="button" class="nav-arrow next-arrow" onclick="moveSlider(this, 1)">❯</button>
        </div>
    </div>

    <!-- ===== Luxury Anniversary Setup ===== -->
  <div id="balloon-sec" class="slider-section-wrapper bg-white">
        <h2 class="decor-heading">Luxury Anniversary Setup</h2>
        <div class="slider-section">
            <button type="button" class="nav-arrow prev-arrow" onclick="moveSlider(this, -1)">❮</button>
            <div class="image-container">
                <div class="row-wrapper">
                   <div class="image-box"><img src="images/anniversary/luxury.1.jpg" alt="Royal Palace 1"></div>
                    <div class="image-box"><img src="images/anniversary/luxury.2.jpg" alt="Royal Palace 2"></div>
                    <div class="image-box"><img src="images/anniversary/luxury.3.jpg" alt="Royal Palace 3"></div>     
                    <div class="image-box"><img src="images/anniversary/luxury.4.jpg" alt="Royal Palace 4"></div>
                    <div class="image-box"><img src="images/anniversary/luxury.5.jpg" alt="Royal Palace 5"></div>
                    <div class="image-box"><img src="images/anniversary/luxury.6.jpg" alt="Royal Palace 6"></div>
                </div>
                <div class="row-wrapper">
                    <div class="image-box"><img src="images/anniversary/luxury.7.jpg" alt="Royal Palace 7"></div>
                    <div class="image-box"><img src="images/anniversary/luxury.8.jpg" alt="Royal Palace 8"></div>
                    <div class="image-box"><img src="images/anniversary/luxury.9.jpg" alt="Royal Palace 9"></div>
                    <div class="image-box"><img src="images/anniversary/luxury.10.jpg" alt="Royal Palace 10"></div>
                    <div class="image-box"><img src="images/anniversary/luxury.11.jpg" alt="Royal Palace 11"></div>
                    <div class="image-box"><img src="images/anniversary/luxury.12.jpg" alt="Royal Palace 12"></div>
                </div>
            </div>
            <button type="button" class="nav-arrow next-arrow" onclick="moveSlider(this, 1)">❯</button>
        </div>
    </div>

    <!-- ===== Silver/Golden Jubilee ===== -->
    <div id="Div3" class="slider-section-wrapper  bg-light">
        <h2 class="decor-heading">Silver/Golden Jubilee</h2>
        <div class="slider-section">
            <button type="button" class="nav-arrow prev-arrow" onclick="moveSlider(this, -1)">❮</button>
            <div class="image-container">
                <div class="row-wrapper">
                    <div class="image-box"><img src="images/anniversary/25th.1.jpg" alt="Floral Decor 1"></div>
                    <div class="image-box"><img src="images/anniversary/25th.2.jpg" alt="Floral Decor 2"></div>
                    <div class="image-box"><img src="images/anniversary/25th.3.jpg" alt="Floral Decor 3"></div>     
                    <div class="image-box"><img src="images/anniversary/25th.4.jpg" alt="Floral Decor 4"></div>
                    <div class="image-box"><img src="images/anniversary/25th.5.jpg" alt="Floral Decor 5"></div>
                    <div class="image-box"><img src="images/anniversary/25th.6.jpg" alt="Floral Decor 6"></div>
                </div>
                <div class="row-wrapper">
                    <div class="image-box"><img src="images/anniversary/25th.7.jpg" alt="Floral Decor 7"></div>
                    <div class="image-box"><img src="images/anniversary/25th.8.jpg" alt="Floral Decor 8"></div>
                    <div class="image-box"><img src="images/anniversary/25th.9.jpg" alt="Floral Decor 9"></div>
                    <div class="image-box"><img src="images/anniversary/25th.10.jpg" alt="Floral Decor 10"></div>
                    <div class="image-box"><img src="images/anniversary/25th.11.jpg" alt="Floral Decor 11"></div>
                    <div class="image-box"><img src="images/anniversary/25th.12.jpg" alt="Floral Decor 12"></div>
                </div>
            </div>
            <button type="button" class="nav-arrow next-arrow" onclick="moveSlider(this, 1)">❯</button>
        </div>
    </div>

    <script>
        function moveSlider(btn, direction) {
            const container = btn.parentElement.querySelector('.image-container');
            container.scrollBy({ left: direction * 1200, behavior: 'smooth' });
        }

        function scrollToSec(sectionId) {
            const element = document.getElementById(sectionId);
            if (element) {
                window.scrollTo({
                    top: element.offsetTop - 30,
                    behavior: 'smooth'
                });
            }
        }
    </script>
</asp:Content>