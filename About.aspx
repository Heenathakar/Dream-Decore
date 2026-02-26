<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="b.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        /* ============================================== */
        /* DREAM DECOR — ABOUT PAGE                        */
        /* EXACT SAME BANNER STYLE AS HOME PAGE            */
        /* FONTS EXACTLY MATCHING HOME PAGE                 */
        /* ============================================== */

        @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&family=Poppins:wght@300;400;500;600;700&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;700&display=swap');

        /* ===== CSS VARIABLES (SAME AS HOME PAGE) ===== */
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
    }

        /* ===== TYPOGRAPHY - EXACT SAME AS HOME PAGE ===== */
        h1, h2, h3, h4, h5, h6 {
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            color: var(--pure-black);
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

        /* ===== BANNER - EXACT SAME STYLE AS HOME PAGE ===== */
        .page-banner {
            width: 100%;
            height: 100vh;
            background: url('https://images.unsplash.com/photo-1583939003579-730e3918a45a?ixlib=rb-4.0.3&auto=format&fit=crop&w=2069&q=80') no-repeat center center/cover;
            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
            animation: smoothZoom 8s infinite alternate ease-in-out;
        }

        @keyframes smoothZoom {
            0% { transform: scale(1); }
            100% { transform: scale(1.1); }
        }

        .page-banner::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.15);
            z-index: 1;
        }

        .banner-content {
            position: relative;
            text-align: center;
            color: white;
            max-width: 1000px;
            padding: 20px;
            z-index: 2;
            animation: fadeInUp 1.2s ease-out;
        }

        @keyframes fadeInUp {
            0% { opacity: 0; transform: translateY(40px); }
            100% { opacity: 1; transform: translateY(0); }
        }

        .banner-content h1 {
            font-family: 'Playfair Display', serif;
            font-size: 80px;
            font-weight: 900;
            margin-bottom: 20px;
            letter-spacing: 4px;
            color: var(--pure-white);
            text-shadow: 3px 3px 6px rgba(0,0,0,0.4);
            line-height: 1.1;
        }

        .banner-content p {
            font-size: 22px;
            font-weight: 400;
            color: var(--pure-white);
            max-width: 800px;
            margin: 0 auto;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
            font-family: 'Poppins', sans-serif;
            line-height: 1.4;
        }

        /* ===== STORY SECTION ===== */
        .story-section {
            padding: 80px 0;
            background-color: var(--light-gray);
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .story-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 60px;
            align-items: center;
        }

        .story-image {
            border-radius: 140px 140px 30px 30px;
            overflow: hidden;
            box-shadow: 0 18px 40px -8px rgba(100, 130, 140, 0.08);
            position: relative;
            transition: all 0.4s ease;
            border: 1px solid rgba(210, 225, 230, 0.6);
        }

        .story-image:hover {
            transform: translateY(-16px);
            box-shadow: 0 32px 55px -8px rgba(90, 130, 140, 0.15);
            border-color: var(--gold-primary);
        }

        .story-image img {
            width: 100%;
            height: auto;
            display: block;
            transition: transform 0.6s ease;
        }

        .story-image:hover img {
            transform: scale(1.07);
        }

        .story-content h2 {
            font-size: 46px;
            margin-bottom: 25px;
            color: #000000;
            position: relative;
            padding-bottom: 15px;
        }

        .story-content h2::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 80px;
            height: 4px;
            background: linear-gradient(90deg, var(--teal-primary), transparent);
        }

        .story-content p {
            font-size: 15px;
            line-height: 1.7;
            color: var(--text-light);
            margin-bottom: 20px;
            font-family: 'Poppins', sans-serif;
        }

        .story-stats {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
            margin-top: 40px;
        }

        .stat-item {
            text-align: center;
            padding: 32px 20px;
            background-color: var(--card-bg);
            border-radius: 28px;
            box-shadow: 0 12px 28px -6px rgba(120, 150, 160, 0.06);
            border: 1px solid var(--border-light);
            transition: all 0.3s ease;
        }

        .stat-item:hover {
            transform: translateY(-10px);
            border-color: var(--gold-primary);
            box-shadow: 0 32px 55px -8px rgba(90, 130, 140, 0.15);
        }

        .stat-number {
            font-size: 42px;
            font-weight: 700;
            color: var(--teal-primary);
            margin-bottom: 8px;
            font-family: 'Playfair Display', serif;
        }

        .stat-item:hover .stat-number {
            color: var(--gold-primary);
        }

        .stat-label {
            font-size: 15px;
            color: #1a3e49;
            font-weight: 500;
            font-family: 'Poppins', sans-serif;
        }

        .stat-item:hover .stat-label {
            color: var(--gold-primary);
        }

        /* ===== MISSION & VALUES SECTION ===== */
        .mission-section {
            padding: 80px 0;
            background-color: var(--pure-white);
        }

        .section-title {
            text-align: center;
            margin-bottom: 60px;
        }

        .section-title h2 {
            font-size: 46px;
            color: #000000;
            margin-bottom: 15px;
        }

        .section-title p {
            font-size: 15px;
            color: var(--teal-primary);
            font-style: italic;
            max-width: 700px;
            margin: 0 auto;
            font-family: 'Playfair Display', serif;
        }

        .mission-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .mission-card {
            background-color: var(--card-bg);
            padding: 32px 20px;
            border-radius: 28px;
            text-align: center;
            transition: all 0.3s ease;
            border: 1px solid var(--border-light);
            box-shadow: 0 12px 28px -6px rgba(120, 150, 160, 0.06);
        }

        .mission-card:hover {
            transform: translateY(-10px);
            border-color: var(--gold-primary);
            box-shadow: 0 32px 55px -8px rgba(90, 130, 140, 0.15);
        }

        .mission-icon {
            width: 80px;
            height: 80px;
            background: linear-gradient(135deg, rgba(111, 143, 154, 0.1) 0%, rgba(111, 143, 154, 0.15) 100%);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 16px;
            color: var(--teal-primary);
            font-size: 48px;
            transition: all 0.3s ease;
            border: 1px solid rgba(111, 143, 154, 0.2);
        }

        .mission-card:hover .mission-icon {
            background-color: var(--gold-primary);
            color: var(--pure-white);
            transform: scale(1.1);
        }

        .mission-card h3 {
            font-size: 22px;
            margin-bottom: 12px;
            color: #1a3e49;
            font-family: 'Playfair Display', serif;
            font-weight: 700;
        }

        .mission-card:hover h3 {
            color: var(--gold-primary);
        }

        .mission-card p {
            font-size: 15px;
            color: #54707a;
            line-height: 1.7;
            font-family: 'Poppins', sans-serif;
        }

        .mission-card:hover p {
            color: var(--gold-primary);
        }

        /* ===== ACHIEVEMENTS SECTION ===== */
        .achievements-section {
            padding: 80px 0;
            background-color: var(--light-gray);
        }

        .achievements-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
        }

        .achievement-item {
            text-align: center;
            padding: 32px 20px;
            background-color: var(--card-bg);
            border-radius: 28px;
            position: relative;
            overflow: hidden;
            border: 1px solid var(--border-light);
            transition: all 0.3s ease;
        }

        .achievement-item:hover {
            transform: translateY(-10px);
            border-color: var(--gold-primary);
            box-shadow: 0 32px 55px -8px rgba(90, 130, 140, 0.15);
        }

        .achievement-item::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 4px;
            background: linear-gradient(90deg, var(--teal-primary) 0%, var(--gold-primary) 100%);
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        .achievement-item:hover::before {
            opacity: 1;
        }

        .achievement-icon {
            font-size: 48px;
            color: var(--teal-primary);
            margin-bottom: 16px;
            transition: all 0.3s ease;
        }

        .achievement-item:hover .achievement-icon {
            color: var(--gold-primary);
            transform: scale(1.1);
        }

        .achievement-item h3 {
            font-size: 22px;
            margin-bottom: 12px;
            color: #1a3e49;
            font-family: 'Playfair Display', serif;
            font-weight: 700;
        }

        .achievement-item:hover h3 {
            color: var(--gold-primary);
        }

        .achievement-item p {
            font-size: 15px;
            color: #54707a;
            line-height: 1.7;
            font-family: 'Poppins', sans-serif;
        }

        .achievement-item:hover p {
            color: var(--gold-primary);
        }

        /* ===== CTA SECTION ===== */
        .about-cta {
            padding: 80px 0;
            background: var(--light-gray);
            text-align: center;
            border-top: 1px solid var(--border-light);
            border-bottom: 1px solid var(--border-light);
            position: relative;
            overflow: hidden;
        }

        .about-cta::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: url("data:image/svg+xml,%3Csvg width='100' height='100' viewBox='0 0 100 100' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M11 18c3.866 0 7-3.134 7-7s-3.134-7-7-7-7 3.134-7 7 3.134 7 7 7zm48 25c3.866 0 7-3.134 7-7s-3.134-7-7-7-7 3.134-7 7 3.134 7 7 7zm-43-7c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zm63 31c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zM34 90c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zm56-76c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zM12 86c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm28-65c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm23-11c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm-6 60c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm29 22c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zM32 63c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm57-13c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm-9-21c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM60 91c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM35 41c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM12 60c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2z' fill='%23d4a373' fill-opacity='0.05' fill-rule='evenodd'/%3E%3C/svg%3E");
            opacity: 0.5;
        }

        .about-cta-content {
            position: relative;
            z-index: 2;
        }

        .about-cta h2 {
            font-size: 46px;
            margin-bottom: 20px;
            color: #000000;
        }

        .about-cta p {
            font-size: 15px;
            max-width: 700px;
            margin: 0 auto 40px;
            color: var(--text-light);
            line-height: 1.7;
            font-family: 'Poppins', sans-serif;
        }

        .cta-buttons {
            display: flex;
            gap: 25px;
            justify-content: center;
            flex-wrap: wrap;
        }

        .hero-btn {
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
            margin: 0 10px;
            text-decoration: none;
        }

        .hero-btn:hover {
            background-color: var(--gold-primary);
            transform: translateY(-3px);
            box-shadow: 0 8px 25px rgba(44, 62, 79, 0.25);
        }

        .hero-btn:active {
            transform: scale(0.95);
            background-color: var(--gold-dark);
        }

        .btn-primary, .btn-secondary {
            background-color: var(--teal-primary);
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

        /* ===== RESPONSIVE DESIGN ===== */
        @media (max-width: 1100px) {
            .banner-content h1 {
                font-size: 60px;
            }
            
            .story-stats {
                grid-template-columns: repeat(2, 1fr);
            }
            
            h2 {
                font-size: 42px;
            }
        }

        @media (max-width: 800px) {
            .banner-content h1 {
                font-size: 48px;
            }
            
            .banner-content p {
                font-size: 18px;
            }
            
            .story-content h2,
            .section-title h2,
            .about-cta h2 {
                font-size: 38px;
            }
            
            .story-stats {
                grid-template-columns: 1fr;
                gap: 20px;
            }
            
            .mission-grid {
                grid-template-columns: 1fr;
                gap: 25px;
            }
            
            .achievements-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 20px;
            }
            
            .cta-buttons {
                flex-direction: column;
                align-items: center;
                gap: 15px;
            }
            
            .hero-btn {
                width: 100%;
                max-width: 280px;
                text-align: center;
            }
        }

        @media (max-width: 600px) {
            .banner-content h1 {
                font-size: 40px;
            }
            
            .banner-content p {
                font-size: 16px;
            }
            
            .story-content h2,
            .section-title h2,
            .about-cta h2 {
                font-size: 36px;
            }
            
            .section-title p {
                font-size: 14px;
            }
            
            .about-cta p {
                font-size: 14px;
            }
            
            .mission-card {
                padding: 30px 20px;
            }
            
            .achievements-grid {
                grid-template-columns: 1fr;
                gap: 20px;
            }
            
            .achievement-item {
                padding: 30px 20px;
            }
            
            .stat-number {
                font-size: 36px;
            }
        }

        /* SMOOTH SCROLL BEHAVIOR */
        html {
            scroll-behavior: smooth;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!-- BANNER - EXACT SAME STYLE AS HOME PAGE -->
    <section class="page-banner">
        <div class="banner-content">
            <h1>Our Story</h1>
            <p>Discover the passion, creativity, and dedication behind Dream Decor</p>
        </div>
    </section>
    
    <!-- Our Story Section -->
    <section class="story-section reveal">
        <div class="container">
            <div class="story-container">
                <div class="story-image">
                    <img src="https://i.pinimg.com/1200x/4d/87/a3/4d87a325b7970005026f6ebf783054d9.jpg" alt="Dream Decor Team Creating Magic" />
                </div>
                <div class="story-content">
                    <h2>Crafting Dreams Since 2015</h2>
                    <p>Dream Decor began with a simple vision: to transform ordinary celebrations into extraordinary memories. Founded by Priya Sharma, our journey started in a small studio with big dreams. What began as a passion project has now blossomed into one of the most trusted names in event decoration.</p>
                    <p>Today, with a team of 25+ creative professionals and state-of-the-art facilities, we continue to push the boundaries of event design while staying true to our core values of creativity, quality, and client satisfaction.</p>
                    
                    <div class="story-stats">
                        <div class="stat-item">
                            <div class="stat-number">850+</div>
                            <div class="stat-label">Events Decorated</div>
                        </div>
                        <div class="stat-item">
                            <div class="stat-number">98%</div>
                            <div class="stat-label">Client Satisfaction</div>
                        </div>
                        <div class="stat-item">
                            <div class="stat-number">25+</div>
                            <div class="stat-label">Creative Experts</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Mission & Values -->
    <section class="mission-section reveal">
        <div class="container">
            <div class="section-title">
                <h2>Our Mission & Values</h2>
                <p>These principles guide everything we do, from initial design concepts to final execution</p>
            </div>
            
            <div class="mission-grid">
                <div class="mission-card">
                    <div class="mission-icon">
                        <i class="fas fa-lightbulb"></i>
                    </div>
                    <h3>Creative Excellence</h3>
                    <p>We believe in pushing creative boundaries while maintaining timeless elegance. Every design is a unique masterpiece.</p>
                </div>
                
                <div class="mission-card">
                    <div class="mission-icon">
                        <i class="fas fa-heart"></i>
                    </div>
                    <h3>Passionate Service</h3>
                    <p>We pour our hearts into every project, treating each event as if it were our own special celebration.</p>
                </div>
                
                <div class="mission-card">
                    <div class="mission-icon">
                        <i class="fas fa-star"></i>
                    </div>
                    <h3>Uncompromising Quality</h3>
                    <p>From materials to execution, we maintain the highest standards to ensure your event exceeds expectations.</p>
                </div>
                
                <div class="mission-card">
                    <div class="mission-icon">
                        <i class="fas fa-users"></i>
                    </div>
                    <h3>Collaborative Approach</h3>
                    <p>We work closely with you throughout the process, ensuring your vision is brought to life exactly as imagined.</p>
                </div>
                
                <div class="mission-card">
                    <div class="mission-icon">
                        <i class="fas fa-clock"></i>
                    </div>
                    <h3>Timely Execution</h3>
                    <p>We respect your time and schedule, ensuring flawless setup and dismantling within agreed timelines.</p>
                </div>
                
                <div class="mission-card">
                    <div class="mission-icon">
                        <i class="fas fa-leaf"></i>
                    </div>
                    <h3>Sustainable Practices</h3>
                    <p>We prioritize eco-friendly materials and reusable elements to create beautiful, responsible celebrations.</p>
                </div>
            </div>
        </div>
    </section>
  
    <!-- Achievements -->
    <section class="achievements-section reveal">
        <div class="container">
            <div class="section-title">
                <h2>Our Achievements</h2>
                <p>Recognition and milestones that mark our journey of excellence</p>
            </div>
            
            <div class="achievements-grid">
                <div class="achievement-item">
                    <div class="achievement-icon">
                        <i class="fas fa-award"></i>
                    </div>
                    <h3>Best Event Decorator 2023</h3>
                    <p>Awarded by Events & Weddings Association of India for outstanding creativity and service.</p>
                </div>
                
                <div class="achievement-item">
                    <div class="achievement-icon">
                        <i class="fas fa-medal"></i>
                    </div>
                    <h3>Excellence in Design</h3>
                    <p>Recognized by Design Excellence Awards for innovative event decoration concepts.</p>
                </div>
                
                <div class="achievement-item">
                    <div class="achievement-icon">
                        <i class="fas fa-trophy"></i>
                    </div>
                    <h3>Customer Choice Award</h3>
                    <p>Voted #1 Event Decorator by clients for three consecutive years (2021-2023).</p>
                </div>
                
                <div class="achievement-item">
                    <div class="achievement-icon">
                        <i class="fas fa-star"></i>
                    </div>
                    <h3>Featured in Publications</h3>
                    <p>Featured in Vogue Weddings, Wedding Sutra, and other leading lifestyle magazines.</p>
                </div>
            </div>
        </div>
    </section>
    
    <!-- CTA Section -->
    <section class="about-cta reveal">
        <div class="container">
            <div class="about-cta-content">
                <h2>Ready to Create Magic Together?</h2>
                <p>Join the hundreds of clients who have trusted us with their most precious celebrations. Let's work together to create an unforgettable experience that exceeds your expectations.</p>
                
                <div class="cta-buttons">
                    <a href="Contact.aspx" class="hero-btn btn-primary">Get In Touch</a>
                    <a href="Gallery.aspx" class="hero-btn btn-secondary">View Our Work</a>
                </div>
            </div>
        </div>
    </section>
    
    <script>
        // Reveal on scroll - Same as home page
        document.addEventListener('DOMContentLoaded', function() {
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
            
            // Animation for stat counters
            const statNumbers = document.querySelectorAll('.stat-number');
            
            function animateNumbers() {
                statNumbers.forEach(stat => {
                    const target = parseInt(stat.textContent);
                let current = 0;
                    const increment = target / 50;
                    const timer = setInterval(() => {
                        current += increment;
                if (current >= target) {
                    current = target;
                    clearInterval(timer);
                }
                stat.textContent = Math.floor(current) + (stat.textContent.includes('%') ? '%' : '+');
            }, 30);
        });
        }
            
            const observer = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        animateNumbers();
        observer.unobserve(entry.target);
        }
        });
        }, { threshold: 0.5 });
            
            const storySection = document.querySelector('.story-section');
        if (storySection) {
            observer.observe(storySection);
        }
        });
    </script>
</asp:Content>