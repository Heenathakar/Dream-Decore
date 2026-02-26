<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="b.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
/* ============================================== */
/* DREAM DECOR — HOME PAGE WITH 3-IMAGE AUTO BANNER */
/* SHINY FONT & LIGHTER TRANSPARENT OVERLAY       */
/* BOOK NOW BUTTON SCROLLS TO GALLERY              */
/* ============================================== */

@import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&family=Poppins:wght@300;400;500;600;700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;700&display=swap');

/* ===== CSS VARIABLES ===== */
:root {
    --teal-primary: #6F8F9A;
    --teal-dark: #5A7A84;
    --teal-darker: #4A656E;
    --gold-primary: #D4A373;
    --gold-dark: #B88D5E;
    --charcoal: #2C3E4F;
    --pure-white: #FFFFFF;
    --light-gray: #f4f4f4;
    --card-bg: #ffffff;
    --text-dark: #2b3b41;
    --text-light: #555;
    --border-light: #ecf3f5;
    --pure-black: #000000;
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

/* ===== TYPOGRAPHY ===== */
h1, h2, h3, h4, h5, h6 {
    font-family: 'Playfair Display', serif;
    font-weight: 700;
    color: var(--pure-black);
    line-height: 1.2;
}

p {
    font-family: 'Poppins', sans-serif;
    font-size: 15px;
    font-weight: 400;
    color: var(--text-light);
    line-height: 1.7;
}

/* ===== AUTO-CHANGE HERO BANNER ===== */
.hero {
    width: 100%;
    height: 100vh;
    position: relative;
    display: flex;
    align-items: center;
    justify-content: center;
    overflow: hidden;
}

/* Banner Slides - 3 Attractive Images */
.banner-slide {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    opacity: 0;
    transition: opacity 1.2s ease-in-out;
    z-index: 0;
}

.banner-slide.active {
    opacity: 1;
    z-index: 1;
}

/* 3 Premium Event Images */
.banner-slide:nth-child(1) {
    background-image: url('https://images.unsplash.com/photo-1511795409834-ef04bbd61622?ixlib=rb-4.0.3&auto=format&fit=crop&w=2069&q=80');
}

.banner-slide:nth-child(2) {
    background-image: url('https://images.unsplash.com/photo-1519225421980-715cb0215aed?ixlib=rb-4.0.3&auto=format&fit=crop&w=2070&q=80');
}

.banner-slide:nth-child(3) {
    background-image: url('https://images.unsplash.com/photo-1522673607200-164d1b6ce486?ixlib=rb-4.0.3&auto=format&fit=crop&w=2070&q=80');
}

/* Smooth Zoom Effect */
.banner-slide.active {
    animation: smoothZoom 8s infinite alternate ease-in-out;
}

@keyframes smoothZoom {
    0% { transform: scale(1); }
    100% { transform: scale(1.1); }
}

/* ===== LIGHT TRANSPARENT OVERLAY ===== */
.hero::before {
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
.hero-content {
    position: relative;
    text-align: center;
    color: white;
    max-width: 1000px;
    padding: 20px;
    z-index: 3;
    animation: fadeInUp 1.2s ease-out;
}

@keyframes fadeInUp {
    0% { opacity: 0; transform: translateY(40px); }
    100% { opacity: 1; transform: translateY(0); }
}

/* ===== BANNER HEADING - FOREVER TOGETHER STYLE ===== */
.hero-content h1 {
    font-family: 'Playfair Display', serif;
    font-size: 80px;
    font-weight: 900;
    margin-bottom: 20px;
    letter-spacing: 4px;
    color: var(--pure-white);
    text-shadow: 3px 3px 6px rgba(0,0,0,0.4);
    position: relative;
    animation: fadeInUp 1.2s ease-out;
    line-height: 1.1;
}

/* ===== BANNER PARAGRAPH - TWO LINES WITH SMALLER FONT ===== */
.hero-content p {
    font-size: 22px;
    font-weight: 400;
    margin-bottom: 35px;
    color: var(--pure-white);
    max-width: 800px;
    margin: 0 auto 35px;
    text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
    font-family: 'Poppins', sans-serif;
    animation: fadeInUp 1.2s ease-out 0.2s backwards;
    line-height: 1.4; /* Reduced line height for better spacing */
}

.hero-content p span {
    display: block;
    margin-bottom: 5px; /* Add small gap between lines */
}

.hero-content p span:last-child {
    margin-bottom: 0;
}

/* Navigation Dots */
.banner-dots {
    position: absolute;
    bottom: 30px;
    left: 50%;
    transform: translateX(-50%);
    display: flex;
    gap: 16px;
    z-index: 4;
}

.dot {
    width: 15px;
    height: 15px;
    border-radius: 50%;
    background: rgba(255, 255, 255, 0.7);
    cursor: pointer;
    transition: all 0.4s ease;
    border: 2px solid rgba(255, 255, 255, 0.4);
}

.dot.active {
    background: var(--gold-primary);
    transform: scale(1.4);
    box-shadow: 0 0 25px rgba(212, 163, 115, 0.7);
    border-color: white;
}

/* ===== BUTTONS ===== */
.hero-btn {
    display: inline-block;
    padding: 18px 60px;
    background-color: var(--teal-primary);
    color: var(--pure-white);
    font-size: 20px;
    font-weight: 600;
    letter-spacing: 2.5px;
    text-transform: uppercase;
    text-decoration: none;
    border-radius: 60px;
    box-shadow: 0 15px 30px rgba(111, 143, 154, 0.25);
    transition: all 0.3s ease;
    border: 2px solid rgba(255,255,255,0.7);
    cursor: pointer;
    font-family: 'Poppins', sans-serif;
    position: relative;
    z-index: 10;
}

.hero-btn:hover {
    background-color: var(--gold-primary);
    transform: translateY(-5px) scale(1.02);
    box-shadow: 0 20px 35px rgba(44, 62, 79, 0.3);
}

.hero-btn:active {
    transform: scale(0.95);
    background-color: var(--gold-dark);
}

.book-now-btn {
    display: inline-block;
    padding: 12px 34px;
    background-color: var(--teal-primary);
    color: var(--pure-white);
    font-family: 'Poppins', sans-serif;
    font-size: 14px;
    font-weight: 600;
    letter-spacing: 2px;
    text-transform: uppercase;
    border: none;
    border-radius: 60px;
    box-shadow: 0 7px 18px rgba(111, 143, 154, 0.2);
    cursor: pointer;
    transition: all 0.3s ease;
    border: 1px solid rgba(255,255,255,0.6);
    margin-top: 15px;
}

.book-now-btn:hover {
    background-color: var(--gold-primary);
    transform: translateY(-3px);
    box-shadow: 0 8px 25px rgba(44, 62, 79, 0.25);
}

/* ===== GALLERY SECTION ===== */
.gallery-section {
    background: var(--light-gray);
    padding: 90px 40px;
    text-align: center;
    scroll-margin-top: 20px;
}

.gallery-title {
    font-family: 'Playfair Display', serif;
    font-size: 52px;
    font-weight: 800;
    letter-spacing: 5px;
    margin-bottom: 20px;
    color: #000000;
    text-transform: uppercase;
    position: relative;
    display: inline-block;
}

.gallery-title:after {
    content: '';
    position: absolute;
    bottom: -18px;
    left: 50%;
    transform: translateX(-50%);
    width: 120px;
    height: 4px;
    background: var(--teal-primary);
    border-radius: 10px;
}

.gallery-grid {
    display: flex;
    justify-content: center;
    gap: 35px;
    flex-wrap: wrap;
    margin-top: 70px;
}

/* Card Styles */
.card {
    background: var(--card-bg);
    width: 270px;
    border-radius: 140px 140px 30px 30px;
    overflow: hidden;
    padding-bottom: 28px;
    box-shadow: 0 18px 40px -8px rgba(100, 130, 140, 0.08);
    transition: all 0.4s ease;
    border: 1px solid rgba(210, 225, 230, 0.6);
}

.card:hover {
    transform: translateY(-16px);
    box-shadow: 0 32px 55px -8px rgba(90, 130, 140, 0.15);
    border-color: var(--gold-primary);
}

.card-img {
    width: 100%;
    height: 230px;
    object-fit: cover;
    border-radius: 140px 140px 40px 40px;
    transition: transform 0.6s ease;
}

.card:hover .card-img {
    transform: scale(1.07);
}

.card h3 {
    font-size: 22px;
    margin: 18px 0 8px;
    color: #1c3c47;
    font-family: 'Playfair Display', serif;
    font-weight: 700;
}

.card p {
    color: #55707a;
    padding: 0 20px;
    margin-bottom: 15px;
    font-family: 'Poppins', sans-serif;
    font-size: 15px;
    line-height: 1.7;
}

/* ===== WHY CHOOSE US SECTION ===== */
.why-choose { 
    padding: 80px 0 90px; 
    background: var(--light-gray); 
    text-align: center; 
}

.container { 
    width: 90%; 
    max-width: 1300px; 
    margin: 0 auto; 
}

.section-title { 
    font-size: 46px;
    font-weight: 800; 
    margin-bottom: 60px; 
    font-family: 'Playfair Display', serif; 
    color: #000000; 
    position: relative; 
    display: inline-block; 
}

.section-title:after { 
    content: ''; 
    position: absolute; 
    bottom: -20px; 
    left: 50%; 
    transform: translateX(-50%); 
    width: 130px; 
    height: 4px; 
    background: var(--teal-primary); 
    border-radius: 10px;
}

.why-grid { 
    display: grid; 
    grid-template-columns: repeat(4, 1fr); 
    gap: 30px; 
}

.why-card { 
    background: var(--card-bg); 
    padding: 32px 20px; 
    border-radius: 28px; 
    box-shadow: 0 12px 28px -6px rgba(120, 150, 160, 0.06); 
    transition: all 0.3s ease; 
    border: 1px solid var(--border-light); 
}

.why-card:hover { 
    transform: translateY(-10px); 
    border-color: var(--gold-primary); 
}

.why-card .icon { 
    font-size: 48px; 
    margin-bottom: 16px; 
    color: var(--teal-primary); 
}

.why-card:hover .icon { 
    color: var(--gold-primary); 
}

.why-card h3 { 
    font-size: 20px; 
    margin-bottom: 12px; 
    color: #1a3e49; 
    font-family: 'Playfair Display', serif;
    font-weight: 700;
}

.why-card:hover h3 { 
    color: var(--gold-primary); 
}

.why-card p { 
    color: #54707a; 
    font-family: 'Poppins', sans-serif;
    font-size: 15px;
    line-height: 1.7;
}

.why-card:hover p { 
    color: var(--gold-primary); 
}

/* ===== REVIEWS SECTION ===== */
.review-section { 
    background: var(--light-gray); 
    padding: 80px 10%; 
    border-radius: 70px; 
    margin: 70px 5%; 
    text-align: center; 
    border: 1px solid #f0eae5; 
}

.review-section h2 { 
    font-size: 46px;
    margin-bottom: 60px; 
    color: #000000; 
    position: relative; 
    display: inline-block; 
    font-family: 'Playfair Display', serif;
    font-weight: 800;
    letter-spacing: 1px;
}

.review-section h2:after { 
    content: ''; 
    position: absolute; 
    bottom: -18px; 
    left: 50%; 
    transform: translateX(-50%); 
    width: 130px;
    height: 4px;
    background: var(--teal-primary); 
    border-radius: 10px;
}

.reviews { 
    display: flex; 
    justify-content: center; 
    gap: 35px; 
    flex-wrap: wrap; 
}

.review-card { 
    background: var(--card-bg); 
    padding: 35px 25px; 
    border-radius: 40px; 
    width: 30%; 
    min-width: 260px; 
    transition: 0.25s ease; 
    border: 1px solid #f2f1ef; 
}

.review-card:hover { 
    transform: translateY(-10px); 
    border-color: var(--gold-primary); 
}

.review-card img { 
    width: 85px; 
    height: 85px; 
    border-radius: 50%; 
    margin-bottom: 16px; 
    border: 4px solid white; 
}

.review-card h4 { 
    font-size: 22px; 
    margin-bottom: 5px; 
    color: #1a404b; 
    font-family: 'Playfair Display', serif;
    font-weight: 700;
}

.review-card:hover h4 { 
    color: var(--gold-primary); 
}

.review-card span { 
    font-size: 13px; 
    color: var(--teal-primary); 
    font-weight: 600; 
    text-transform: uppercase; 
    font-family: 'Poppins', sans-serif;
    letter-spacing: 1px;
}

.review-card:hover span { 
    color: var(--gold-primary); 
}

.review-card p { 
    font-size: 15px;
    margin-top: 18px; 
    color: #4d6a73; 
    font-style: italic; 
    font-family: 'Poppins', sans-serif;
    line-height: 1.8;
}

.review-card:hover p { 
    color: var(--gold-primary); 
}

/* ===== RESPONSIVE ===== */
@media (max-width: 1100px) { 
    .why-grid { grid-template-columns: repeat(2, 1fr); } 
    .hero-content h1 { font-size: 60px; } 
    .gallery-title { font-size: 46px; }
    .section-title { font-size: 42px; }
    .review-section h2 { font-size: 42px; }
}

@media (max-width: 800px) { 
    .hero-content h1 { font-size: 48px; } 
    .hero-content p { font-size: 18px; } 
    .gallery-title { font-size: 40px; } 
    .section-title { font-size: 38px; }
    .review-section h2 { font-size: 38px; }
}

@media (max-width: 600px) { 
    .why-grid { grid-template-columns: 1fr; } 
    .hero-content h1 { font-size: 40px; } 
    .hero-content p { font-size: 16px; } 
    .hero-btn { padding: 15px 45px; font-size: 16px; } 
    .gallery-section { padding: 60px 20px; } 
    .review-section { padding: 60px 20px; } 
    .gallery-title { font-size: 36px; }
    .section-title { font-size: 34px; }
    .review-section h2 { font-size: 34px; }
}

/* ===== REVEAL ANIMATION ===== */
.reveal { 
    opacity: 0; 
    transform: translateY(30px); 
    transition: all 0.9s ease; 
}

.reveal.active { 
    opacity: 1; 
    transform: translateY(0); 
}

html { 
    scroll-behavior: smooth; 
}

/* ===== CUSTOM SCROLLBAR ===== */
::-webkit-scrollbar {
    width: 12px;
}

::-webkit-scrollbar-track {
    background: var(--light-gray);
}

::-webkit-scrollbar-thumb {
    background: linear-gradient(135deg, var(--teal-primary), var(--gold-primary));
    border-radius: 6px;
}

::-webkit-scrollbar-thumb:hover {
    background: linear-gradient(135deg, var(--gold-primary), var(--teal-primary));
}
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- AUTO-CHANGE HERO BANNER - FOREVER TOGETHER STYLE -->
    <section class="hero" id="heroSection">
        <!-- 3 Banner Images -->
        <div class="banner-slide active"></div>
        <div class="banner-slide"></div>
        <div class="banner-slide"></div>
        
        <!-- Banner Content with Forever Together Style -->
        <div class="hero-content">
            <h1>Make Your Dream Event Beautiful</h1>
            <p>
                <span>Premium decoration services for birthdays,</span>
                <span>weddings and special celebrations.</span>
            </p>
            <!-- Book Now button with scroll to gallery -->
            <a href="#" class="hero-btn" id="bookNowBtn">Book Now</a>
        </div>

        <!-- Navigation Dots -->
        <div class="banner-dots" id="bannerDots">
            <span class="dot active" onclick="currentSlide(0)"></span>
            <span class="dot" onclick="currentSlide(1)"></span>
            <span class="dot" onclick="currentSlide(2)"></span>
        </div>
    </section>

    <!-- GALLERY SECTION -->
    <div class="gallery-section reveal" id="gallerySection">
        <h1 class="gallery-title">SERVICES</h1>
        <div class="gallery-grid">
            <div class="card reveal">
                <img src="https://i.pinimg.com/1200x/ec/f7/ef/ecf7ef8d4d1694790ebde9ff80652fa4.jpg" class="card-img" alt="Birthday" />
                <h3>Birthday theme</h3>
                <p>Beautiful birthday decorations for your special day.</p>
                <asp:Button ID="btnBook1" runat="server" Text="EXPLORE" CssClass="book-now-btn" OnClientClick="window.location='brithday.aspx'; return false;" />
            </div>
            <div class="card reveal">
                <img src="https://i.pinimg.com/1200x/d9/df/5c/d9df5cf3a2439bc4d40e00ff753cd1d9.jpg" class="card-img" alt="Anniversary" />
                <h3>Anniversary</h3>
                <p>Elegant anniversary setups for lasting memories.</p>
                <asp:Button ID="btnBook2" runat="server" Text="EXPLORE" CssClass="book-now-btn" OnClientClick="window.location='anniversary.aspx'; return false;" />
            </div>
            <div class="card reveal">
                <img src="https://i.pinimg.com/736x/6b/da/1c/6bda1c91548e73e74475d63cde54fdc7.jpg" class="card-img" alt="Engagement" />
                <h3>Engagement</h3>
                <p>Make your engagement magical with our themes.</p>
                <asp:Button ID="btnBook3" runat="server" Text="EXPLORE" CssClass="book-now-btn" OnClientClick="window.location='engagement.aspx'; return false;" />
            </div>
            <div class="card reveal">
                <img src="https://i.pinimg.com/1200x/e8/9c/d2/e89cd20edd22d2644d0beea5a0e5c730.jpg" class="card-img" alt="Baby Shower" />
                <h3>Baby Shower</h3>
                <p>Sweet and cozy themes for your new arrival.</p>
                <asp:Button ID="btnBook4" runat="server" Text="EXPLORE" CssClass="book-now-btn" OnClientClick="window.location='babyshower.aspx'; return false;" />
            </div>
        </div>
    </div>

    <!-- REVIEWS SECTION -->
    <section class="review-section reveal">
        <h2>What Our Clients Say</h2>
        <div class="reviews">
            <div class="review-card reveal">
                <img src="https://randomuser.me/api/portraits/women/44.jpg" alt="client">
                <h4>Lisa Clariton</h4>
                <span>NEW YORK, USA</span>
                <p>"We selected Dream Decor because of their rigorous design background & education. Absolutely stunning work."</p>
            </div>
            <div class="review-card reveal">
                <img src="https://randomuser.me/api/portraits/men/32.jpg" alt="client">
                <h4>David Knight</h4>
                <span>SYDNEY, AUS</span>
                <p>"The team exceeded our expectations and emerged as leaders of our project. Every detail was perfect."</p>
            </div>
            <div class="review-card reveal">
                <img src="https://randomuser.me/api/portraits/women/68.jpg" alt="client">
                <h4>Sophie Moreau</h4>
                <span>PARIS, FR</span>
                <p>"They balanced the architectural vision and the project realities beautifully. Truly a dream come true."</p>
            </div>
        </div>
    </section>

    <!-- WHY CHOOSE US SECTION -->
    <section class="why-choose reveal">
        <div class="container">
            <h2 class="section-title">Why Choose Us?</h2>
            <div class="why-grid">
                <div class="why-card reveal">
                    <div class="icon">🎨</div>
                    <h3>Premium Quality</h3>
                    <p>We use high-end decorations, elegant fabrics, and premium props to make your event luxurious and unforgettable.</p>
                </div>
                <div class="why-card reveal">
                    <div class="icon">✨</div>
                    <h3>Custom Themes</h3>
                    <p>From kids' birthdays to romantic weddings, we design unique themes tailored exactly to your vision.</p>
                </div>
                <div class="why-card reveal">
                    <div class="icon">💰</div>
                    <h3>Affordable Luxury</h3>
                    <p>We offer budget-friendly packages without compromising on style, creativity, or quality. True value.</p>
                </div>
                <div class="why-card reveal">
                    <div class="icon">⏰</div>
                    <h3>On-Time Setup</h3>
                    <p>Professional team ensuring timely setup & smooth execution — you enjoy your day stress-free.</p>
                </div>
            </div>
        </div>
    </section>

    <script>
        // Banner Auto-Change JavaScript
        document.addEventListener('DOMContentLoaded', function() {
            const slides = document.querySelectorAll('.banner-slide');
            const dots = document.querySelectorAll('.dot');
            
            if (slides.length === 0) return;
            
            let currentIndex = 0;
            let intervalTime = 4000;
            let slideInterval;
            let isTransitioning = false;

            function showSlide(index) {
                if (isTransitioning) return;
                
                isTransitioning = true;
                
                for (let i = 0; i < slides.length; i++) {
                    slides[i].classList.remove('active');
                    if (dots[i]) dots[i].classList.remove('active');
                }
                
                setTimeout(() => {
                    slides[index].classList.add('active');
                if (dots[index]) dots[index].classList.add('active');
                currentIndex = index;
                    
                setTimeout(() => {
                    isTransitioning = false;
            }, 1500);
        }, 50);
        }

        window.currentSlide = function(index) {
            if (index === currentIndex) return;
            showSlide(index);
            resetInterval();
            return false;
        };

        function nextSlide() {
            let nextIndex = currentIndex + 1;
            if (nextIndex >= slides.length) {
                nextIndex = 0;
            }
            showSlide(nextIndex);
        }

        function startAutoPlay() {
            if (slideInterval) clearInterval(slideInterval);
            slideInterval = setInterval(nextSlide, intervalTime);
        }

        function resetInterval() {
            if (slideInterval) {
                clearInterval(slideInterval);
            }
            startAutoPlay();
        }

        startAutoPlay();

            const heroSection = document.getElementById('heroSection');
        if (heroSection) {
            heroSection.addEventListener('mouseenter', function() {
                if (slideInterval) {
                    clearInterval(slideInterval);
                }
            });
                
            heroSection.addEventListener('mouseleave', function() {
                startAutoPlay();
            });
        }

        // ===== BOOK NOW BUTTON SCROLL TO GALLERY =====
            const bookNowBtn = document.getElementById('bookNowBtn');
            const gallerySection = document.getElementById('gallerySection');
            
        if (bookNowBtn && gallerySection) {
            bookNowBtn.addEventListener('click', function(e) {
                e.preventDefault();
                    
                gallerySection.scrollIntoView({ 
                    behavior: 'smooth',
                    block: 'start'
                });
            });
        }

        // Reveal on scroll
            const reveals = document.querySelectorAll('.reveal');
            
        function checkReveal() {
            for (let i = 0; i < reveals.length; i++) {
                const windowHeight = window.innerHeight;
                const revealTop = reveals[i].getBoundingClientRect().top;
                const revealPoint = 150;
                    
                if (revealTop < windowHeight - revealPoint) {
                    reveals[i].classList.add('active');
            }
        }
        }
            
        window.addEventListener('scroll', checkReveal);
        window.addEventListener('resize', checkReveal);
        checkReveal();
        });
    </script>
</asp:Content>