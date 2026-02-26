    <%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="b.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style>
        /* ============================================== */
        /* DREAM DECOR — CONTACT PAGE                      */
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
            overflow-x: hidden;
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
        .contact-banner {
            width: 100%;
            height: 100vh;  /* Same as home page */
            background: url('https://i.pinimg.com/736x/3f/4c/e4/3f4ce4265b717aacce9b6b8378018292.jpg') no-repeat center center/cover;
            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
            animation: smoothZoom 8s infinite alternate ease-in-out;
        }

        /* Smooth Zoom Effect - Same as home page */
        @keyframes smoothZoom {
            0% { transform: scale(1); }
            100% { transform: scale(1.1); }
        }

        /* Light Overlay - same as home page */
        .contact-banner::before {
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

        /* ===== MAIN CONTACT SECTION ===== */
        .contact-main {
            padding: 80px 0;
            background-color: var(--light-gray);
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .contact-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 60px;
            align-items: start;
        }

        /* ===== CONTACT INFO SIDEBAR ===== */
        .contact-info {
            background: var(--card-bg);
            border-radius: 28px;
            padding: 45px;
            box-shadow: 0 12px 28px -6px rgba(120, 150, 160, 0.06);
            position: sticky;
            top: 100px;
            border: 1px solid var(--border-light);
            transition: all 0.3s ease;
        }

        .contact-info:hover {
            box-shadow: 0 22px 40px -10px rgba(95, 135, 145, 0.25);
            border-color: var(--gold-primary);
        }

        .contact-info h2 {
            font-size: 46px;
            margin-bottom: 35px;
            color: var(--pure-black);
            position: relative;
            padding-bottom: 15px;
        }

        .contact-info h2::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 80px;
            height: 4px;
            background: linear-gradient(90deg, var(--teal-primary), transparent);
        }

        .info-item {
            display: flex;
            align-items: flex-start;
            margin-bottom: 30px;
            padding-bottom: 30px;
            border-bottom: 1px solid var(--border-light);
            transition: all 0.3s ease;
        }

        .info-item:hover {
            transform: translateX(5px);
        }

        .info-item:last-child {
            margin-bottom: 0;
            padding-bottom: 0;
            border-bottom: none;
        }

        .info-icon {
            width: 50px;
            height: 50px;
            background-color: var(--teal-primary);
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 20px;
            color: var(--pure-white);
            font-size: 1.3rem;
            flex-shrink: 0;
            transition: all 0.3s ease;
        }

        .info-item:hover .info-icon {
            background-color: var(--gold-primary);
            transform: scale(1.1);
        }

        .info-content h3 {
            font-size: 20px;
            margin-bottom: 8px;
            color: var(--charcoal);
            font-weight: 600;
        }

        .info-content p {
            color: var(--text-light);
            line-height: 1.7;
            font-size: 15px;
            font-family: 'Poppins', sans-serif;
        }

        .info-content a {
            color: var(--teal-primary);
            text-decoration: none;
            transition: color 0.3s ease;
            font-weight: 500;
            font-size: 15px;
        }

        .info-content a:hover {
            color: var(--gold-primary);
        }

        /* ===== SOCIAL LINKS ===== */
        .social-links {
            display: flex;
            gap: 12px;
            margin-top: 40px;
            padding-top: 30px;
            border-top: 1px solid var(--border-light);
        }

        .social-link {
            width: 45px;
            height: 45px;
            background: linear-gradient(135deg, rgba(111, 143, 154, 0.1) 0%, rgba(111, 143, 154, 0.15) 100%);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--teal-primary);
            text-decoration: none;
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            font-size: 1.1rem;
            border: 1px solid rgba(111, 143, 154, 0.2);
        }

        .social-link:hover {
            background-color: var(--gold-primary);
            color: var(--pure-white);
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(212, 163, 115, 0.2);
            border-color: var(--gold-primary);
        }

        /* ===== CONTACT FORM ===== */
        .contact-form-container {
            background: var(--card-bg);
            border-radius: 28px;
            padding: 45px;
            box-shadow: 0 12px 28px -6px rgba(120, 150, 160, 0.06);
            border: 1px solid var(--border-light);
        }

        .form-header {
            margin-bottom: 35px;
            text-align: left;
        }

        .form-header h2 {
            font-size: 46px;
            color: var(--pure-black);
            margin-bottom: 10px;
            position: relative;
            padding-bottom: 15px;
        }

        .form-header h2::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 80px;
            height: 4px;
            background: linear-gradient(90deg, var(--teal-primary), transparent);
        }

        .form-header p {
            color: var(--text-light);
            font-size: 15px;
            font-family: 'Poppins', sans-serif;
        }

        /* ===== FORM GROUP STYLES ===== */
        .form-group {
            margin-bottom: 25px;
        }

        .form-label {
            display: block;
            margin-bottom: 8px;
            color: var(--charcoal);
            font-weight: 600;
            font-size: 14px;
            font-family: 'Poppins', sans-serif;
            letter-spacing: 1px;
            text-transform: uppercase;
        }

        .form-input {
            width: 100%;
            padding: 12px 18px;
            border: 1px solid var(--border-light);
            border-radius: 60px;
            font-size: 14px;
            color: var(--text-dark);
            background-color: var(--light-gray);
            transition: all 0.3s ease;
            font-family: 'Poppins', sans-serif;
        }

        .form-input:focus {
            outline: none;
            border-color: var(--teal-primary);
            box-shadow: 0 0 0 3px rgba(111, 143, 154, 0.1);
            background-color: var(--pure-white);
        }

        .form-input::placeholder {
            color: #999;
            font-size: 14px;
        }

        textarea.form-input {
            min-height: 150px;
            resize: vertical;
            border-radius: 28px;
        }

        /* ===== SELECT DROPDOWN STYLING ===== */
        select.form-input {
            appearance: none;
            background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='%236F8F9A' viewBox='0 0 16 16'%3E%3Cpath d='M7.247 11.14L2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z'/%3E%3C/svg%3E");
            background-repeat: no-repeat;
            background-position: right 15px center;
            background-size: 12px;
            padding-right: 40px;
            cursor: pointer;
        }

        /* ===== SUBMIT BUTTON (MATCHING HOME PAGE BUTTON STYLE) ===== */
        .submit-btn {
            width: 100%;
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
            position: relative;
            overflow: hidden;
        }

        .submit-btn:hover {
            background-color: var(--gold-primary);
            transform: translateY(-3px);
            box-shadow: 0 8px 25px rgba(44, 62, 79, 0.25);
        }

        .submit-btn:active {
            transform: scale(0.95);
            background-color: var(--gold-dark);
        }

        .submit-btn i {
            margin-right: 8px;
            transition: transform 0.3s ease;
        }

        .submit-btn:hover i {
            transform: translateX(6px);
        }

        /* ===== MAP SECTION ===== */
        .map-section {
            padding: 80px 0;
            background-color: var(--pure-white);
        }

        .section-title {
            text-align: center;
            margin-bottom: 50px;
        }

        .section-title h2 {
            font-size: 46px;
            margin-bottom: 15px;
            color: var(--pure-black);
        }

        .section-title p {
            font-size: 18px;
            color: var(--teal-primary);
            font-style: italic;
            max-width: 700px;
            margin: 0 auto;
            font-family: 'Playfair Display', serif;
        }

        .map-container {
            border-radius: 28px;
            overflow: hidden;
            box-shadow: 0 12px 28px -6px rgba(120, 150, 160, 0.06);
            height: 450px;
            border: 1px solid var(--border-light);
        }

        #map {
            width: 100%;
            height: 100%;
        }

        /* ===== WORKING HOURS SECTION ===== */
        .hours-section {
            padding: 80px 0;
            background-color: var(--light-gray);
        }

        .hours-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
            max-width: 1000px;
            margin: 0 auto;
        }

        .hours-card {
            background: var(--card-bg);
            border-radius: 28px;
            padding: 32px 20px;
            text-align: center;
            transition: all 0.3s ease;
            border: 1px solid var(--border-light);
            box-shadow: 0 12px 28px -6px rgba(120, 150, 160, 0.06);
        }

        .hours-card:hover {
            transform: translateY(-10px);
            border-color: var(--gold-primary);
            box-shadow: 0 22px 40px -10px rgba(95, 135, 145, 0.25);
        }

        .hours-icon {
            width: 70px;
            height: 70px;
            background: linear-gradient(135deg, rgba(111, 143, 154, 0.1) 0%, rgba(111, 143, 154, 0.15) 100%);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 16px;
            color: var(--teal-primary);
            font-size: 2rem;
            transition: all 0.3s ease;
            border: 1px solid rgba(111, 143, 154, 0.2);
        }

        .hours-card:hover .hours-icon {
            background-color: var(--gold-primary);
            color: var(--pure-white);
            transform: scale(1.1);
        }

        .hours-card h3 {
            font-size: 22px;
            margin-bottom: 20px;
            color: var(--charcoal);
        }

        .hours-list {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .hours-list li {
            padding: 10px 0;
            color: var(--text-light);
            border-bottom: 1px solid var(--border-light);
            font-family: 'Poppins', sans-serif;
            font-size: 15px;
        }

        .hours-list li:last-child {
            border-bottom: none;
        }

        .hours-list strong {
            color: var(--charcoal);
            font-weight: 600;
        }

        /* ===== FAQ SECTION ===== */
        .faq-section {
            padding: 80px 0;
            background-color: var(--pure-white);
        }

        .faq-container {
            max-width: 800px;
            margin: 0 auto;
        }

        .faq-item {
            background-color: var(--card-bg);
            border-radius: 28px;
            margin-bottom: 20px;
            box-shadow: 0 12px 28px -6px rgba(120, 150, 160, 0.06);
            overflow: hidden;
            border: 1px solid var(--border-light);
            transition: all 0.3s ease;
        }

        .faq-item:hover {
            box-shadow: 0 22px 40px -10px rgba(95, 135, 145, 0.25);
            border-color: var(--gold-primary);
        }

        .faq-question {
            padding: 22px 30px;
            cursor: pointer;
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: var(--card-bg);
        }

        .faq-question h3 {
            font-size: 20px;
            color: var(--charcoal);
            margin: 0;
            font-weight: 600;
        }

        .faq-toggle {
            color: var(--teal-primary);
            font-size: 1.5rem;
            transition: transform 0.3s ease;
        }

        .faq-item.active .faq-toggle {
            transform: rotate(45deg);
            color: var(--gold-primary);
        }

        .faq-answer {
            padding: 0 30px;
            max-height: 0;
            overflow: hidden;
            transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
        }

        .faq-item.active .faq-answer {
            padding: 0 30px 25px;
            max-height: 500px;
        }

        .faq-answer p {
            color: var(--text-light);
            line-height: 1.7;
            margin: 0;
            font-family: 'Poppins', sans-serif;
            font-size: 15px;
        }

        /* ===== FORM VALIDATION STYLES ===== */
        .form-input.error {
            border-color: #e74c3c;
            background-color: rgba(231, 76, 60, 0.05);
        }

        .error-message {
            color: #e74c3c;
            font-size: 13px;
            margin-top: 5px;
            display: none;
            font-family: 'Poppins', sans-serif;
        }

        .success-message {
            background: linear-gradient(135deg, rgba(111, 143, 154, 0.1) 0%, rgba(111, 143, 154, 0.15) 100%);
            border: 1px solid var(--teal-primary);
            color: var(--teal-darker);
            padding: 15px;
            border-radius: 60px;
            margin-bottom: 25px;
            text-align: center;
            display: none;
            font-family: 'Poppins', sans-serif;
            font-size: 15px;
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
            .contact-container {
                gap: 40px;
            }
            
            .banner-content h1 {
                font-size: 60px;
            }
        }

        @media (max-width: 992px) {
            .contact-container {
                grid-template-columns: 1fr;
                gap: 40px;
            }
            
            .contact-info {
                position: static;
            }
            
            .banner-content h1 {
                font-size: 55px;
            }
            
            .banner-content p {
                font-size: 20px;
            }
            
            h2 {
                font-size: 42px;
            }
        }

        @media (max-width: 768px) {
            .contact-banner {
                height: 100vh;
            }
            
            .banner-content h1 {
                font-size: 48px;
                letter-spacing: 3px;
            }
            
            .banner-content p {
                font-size: 18px;
            }
            
            .contact-info h2,
            .form-header h2,
            .section-title h2 {
                font-size: 38px;
            }
            
            .contact-info,
            .contact-form-container {
                padding: 30px;
            }
            
            .info-item {
                flex-direction: column;
                align-items: flex-start;
            }
            
            .info-icon {
                margin-right: 0;
                margin-bottom: 15px;
            }
            
            .map-container {
                height: 350px;
            }
        }

        @media (max-width: 576px) {
            .banner-content h1 {
                font-size: 40px;
                letter-spacing: 2px;
            }
            
            .banner-content p {
                font-size: 16px;
            }
            
            .contact-info h2,
            .form-header h2,
            .section-title h2 {
                font-size: 36px;
            }
            
            .section-title p {
                font-size: 16px;
            }
            
            .contact-info,
            .contact-form-container {
                padding: 25px 20px;
            }
            
            .hours-card h3 {
                font-size: 20px;
            }
            
            .faq-question {
                padding: 18px 20px;
            }
            
            .faq-question h3 {
                font-size: 18px;
            }
            
            .map-container {
                height: 300px;
            }
        }
    </style>
    
    <!-- Leaflet CSS for Map -->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!-- BANNER - EXACT SAME STYLE AS HOME PAGE -->
    <section class="contact-banner">
        <div class="banner-content">
            <h1>Contact Us</h1>
            <p>Get in touch with our team to discuss your dream event</p>
        </div>
    </section>
    
    <!-- Main Contact Section -->
    <section class="contact-main reveal">
        <div class="container">
            <div class="contact-container">
                
                <!-- Contact Information Sidebar -->
                <div class="contact-info">
                    <h2>Get In Touch</h2>
                    
                    <div class="info-item">
                        <div class="info-icon">
                            <i class="fas fa-map-marker-alt"></i>
                        </div>
                        <div class="info-content">
                            <h3>Our Location</h3>
                            <p>Dream Decor Studio<br>
                               123 Event Street, Celebration City<br>
                               Delhi, India - 110001</p>
                        </div>
                    </div>
                    
                    <div class="info-item">
                        <div class="info-icon">
                            <i class="fas fa-phone"></i>
                        </div>
                        <div class="info-content">
                            <h3>Phone Number</h3>
                            <p>
                                <a href="tel:+911234567890">+91 12345 67890</a><br>
                                <a href="tel:+919876543210">+91 98765 43210</a>
                            </p>
                        </div>
                    </div>
                    
                    <div class="info-item">
                        <div class="info-icon">
                            <i class="fas fa-envelope"></i>
                        </div>
                        <div class="info-content">
                            <h3>Email Address</h3>
                            <p>
                                <a href="mailto:info@dreamdecor.com">info@dreamdecor.com</a><br>
                                <a href="mailto:bookings@dreamdecor.com">bookings@dreamdecor.com</a>
                            </p>
                        </div>
                    </div>
                    
                    <div class="info-item">
                        <div class="info-icon">
                            <i class="fas fa-clock"></i>
                        </div>
                        <div class="info-content">
                            <h3>Business Hours</h3>
                            <p>
                                Monday - Friday: 9:00 AM - 7:00 PM<br>
                                Saturday: 10:00 AM - 6:00 PM<br>
                                Sunday: 10:00 AM - 4:00 PM
                            </p>
                        </div>
                    </div>
                    
                    <!-- Social Links -->
                    <div class="social-links">
                        <a href="https://facebook.com" class="social-link" target="_blank">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a href="https://instagram.com" class="social-link" target="_blank">
                            <i class="fab fa-instagram"></i>
                        </a>
                        <a href="https://twitter.com" class="social-link" target="_blank">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a href="https://pinterest.com" class="social-link" target="_blank">
                            <i class="fab fa-pinterest-p"></i>
                        </a>
                        <a href="https://whatsapp.com" class="social-link" target="_blank">
                            <i class="fab fa-whatsapp"></i>
                        </a>
                    </div>
                </div>
                
                <!-- Contact Form -->
                <div class="contact-form-container">
                    <div class="form-header">
                        <h2>Send Us a Message</h2>
                        <p>Fill out the form below and we'll get back to you within 24 hours</p>
                    </div>
                    
                    <!-- Success Message -->
                    <div class="success-message" id="successMessage">
                        <i class="fas fa-check-circle" style="margin-right: 8px;"></i>
                        Thank you! Your message has been sent successfully.
                    </div>
                    
                    <form id="contactForm">
                        <!-- Full Name -->
                        <div class="form-group">
                            <label class="form-label" for="fullName">Full Name *</label>
                            <input type="text" id="fullName" class="form-input" placeholder="Enter your full name" required>
                            <div class="error-message" id="fullNameError">Please enter your full name</div>
                        </div>
                        
                        <!-- Email Address -->
                        <div class="form-group">
                            <label class="form-label" for="email">Email Address *</label>
                            <input type="email" id="email" class="form-input" placeholder="Enter your email address" required>
                            <div class="error-message" id="emailError">Please enter a valid email address</div>
                        </div>
                        
                        <!-- Phone Number -->
                        <div class="form-group">
                            <label class="form-label" for="phone">Phone Number *</label>
                            <input type="tel" id="phone" class="form-input" placeholder="Enter your phone number" required>
                            <div class="error-message" id="phoneError">Please enter a valid phone number</div>
                        </div>
                        
                        <!-- Subject Dropdown -->
                        <div class="form-group">
                            <label class="form-label" for="subject">Subject *</label>
                            <select id="subject" class="form-input" required>
                                <option value="">Select a subject</option>
                                <option value="booking-inquiry">📅 Booking Inquiry</option>
                                <option value="package-information">📦 Package Information</option>
                                <option value="feedback">⭐ Feedback</option>
                                <option value="complaint">⚠️ Complaint</option>
                                <option value="general-inquiry">❓ General Inquiry</option>
                                <option value="custom-quote">💰 Custom Quote Request</option>
                                <option value="event-consultation">🎨 Event Consultation</option>
                                <option value="other">📝 Other</option>
                            </select>
                            <div class="error-message" id="subjectError">Please select a subject</div>
                        </div>
                        
                        <!-- Message -->
                        <div class="form-group">
                            <label class="form-label" for="message">Your Message *</label>
                            <textarea id="message" class="form-input" placeholder="Please provide details about your inquiry..." required></textarea>
                            <div class="error-message" id="messageError">Please enter your message</div>
                        </div>
                        
                        <!-- Submit Button -->
                        <button type="submit" class="submit-btn">
                            <i class="fas fa-paper-plane"></i>
                            Send Message
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Map Section -->
    <section class="map-section reveal">
        <div class="container">
            <div class="section-title">
                <h2>Find Us Here</h2>
                <p>Visit our studio to discuss your event in person</p>
            </div>
            
            <div class="map-container">
                <div id="map"></div>
            </div>
        </div>
    </section>
    
    <!-- Working Hours Section -->
    <section class="hours-section reveal">
        <div class="container">
            <div class="section-title">
                <h2>Working Hours</h2>
                <p>We're available to assist you during these hours</p>
            </div>
            
            <div class="hours-grid">
                <div class="hours-card">
                    <div class="hours-icon">
                        <i class="fas fa-calendar-alt"></i>
                    </div>
                    <h3>Regular Hours</h3>
                    <ul class="hours-list">
                        <li><strong>Monday - Friday:</strong> 9:00 AM - 7:00 PM</li>
                        <li><strong>Saturday:</strong> 10:00 AM - 6:00 PM</li>
                        <li><strong>Sunday:</strong> 10:00 AM - 4:00 PM</li>
                    </ul>
                </div>
                
                <div class="hours-card">
                    <div class="hours-icon">
                        <i class="fas fa-phone-volume"></i>
                    </div>
                    <h3>Emergency Support</h3>
                    <ul class="hours-list">
                        <li><strong>24/7 Support:</strong> For urgent event matters</li>
                        <li><strong>Phone:</strong> +91 98765 43210</li>
                        <li><strong>WhatsApp:</strong> Available 24/7</li>
                    </ul>
                </div>
                
                <div class="hours-card">
                    <div class="hours-icon">
                        <i class="fas fa-calendar-check"></i>
                    </div>
                    <h3>Appointment Hours</h3>
                    <ul class="hours-list">
                        <li><strong>Consultations:</strong> By appointment only</li>
                        <li><strong>Weekend Slots:</strong> Limited availability</li>
                        <li><strong>Book in advance:</strong> Recommended</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    
    <!-- FAQ Section -->
    <section class="faq-section reveal">
        <div class="container">
            <div class="section-title">
                <h2>Frequently Asked Questions</h2>
                <p>Quick answers to common questions</p>
            </div>
            
            <div class="faq-container">
                <div class="faq-item">
                    <div class="faq-question">
                        <h3>How soon should I book my event decoration?</h3>
                        <span class="faq-toggle">+</span>
                    </div>
                    <div class="faq-answer">
                        <p>We recommend booking at least 2-3 months in advance for weddings and 1-2 months for other events. For last-minute bookings (within 2 weeks), please contact us directly for availability.</p>
                    </div>
                </div>
                
                <div class="faq-item">
                    <div class="faq-question">
                        <h3>Do you provide decoration materials or do we need to arrange?</h3>
                        <span class="faq-toggle">+</span>
                    </div>
                    <div class="faq-answer">
                        <p>We provide all decoration materials as part of our service package. This includes flowers, props, lighting, fabrics, and all setup equipment. We use premium quality materials to ensure your event looks stunning.</p>
                    </div>
                </div>
                
                <div class="faq-item">
                    <div class="faq-question">
                        <h3>Can I customize the decoration package?</h3>
                        <span class="faq-toggle">+</span>
                    </div>
                    <div class="faq-answer">
                        <p>Absolutely! All our packages are fully customizable. We work with you to create a unique design that matches your vision, theme, and budget. During the consultation, we'll discuss your preferences and create a custom plan.</p>
                    </div>
                </div>
                
                <div class="faq-item">
                    <div class="faq-question">
                        <h3>What areas do you serve?</h3>
                        <span class="faq-toggle">+</span>
                    </div>
                    <div class="faq-answer">
                        <p>We primarily serve Delhi NCR and surrounding areas. For events outside this region, we charge an additional travel fee. Contact us with your location details for a custom quote.</p>
                    </div>
                </div>
                
                <div class="faq-item">
                    <div class="faq-question">
                        <h3>What is your cancellation policy?</h3>
                        <span class="faq-toggle">+</span>
                    </div>
                    <div class="faq-answer">
                        <p>Cancellations made 30+ days before the event receive a full refund. 15-30 days before: 50% refund. Less than 15 days: No refund, but we can reschedule based on availability. Please refer to our terms for complete details.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- JavaScript for Interactive Features -->
    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>
    <script>
        // Initialize Map
        function initMap() {
            // Coordinates for Delhi (example location)
            const delhiLocation = [28.6139, 77.2090];
            
            // Create map
            const map = L.map('map').setView(delhiLocation, 15);
            
            // Add OpenStreetMap tiles
            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                attribution: '© OpenStreetMap contributors'
            }).addTo(map);
            
            // Add custom marker
            const customIcon = L.divIcon({
                html: '<i class="fas fa-map-marker-alt" style="color: #d4a373; font-size: 40px;"></i>',
                iconSize: [40, 40],
                iconAnchor: [20, 40],
                popupAnchor: [0, -40]
            });
            
            // Add marker with popup
            const marker = L.marker(delhiLocation, { icon: customIcon }).addTo(map);
            marker.bindPopup(`
                <div style="text-align: center;">
                    <strong style="color: #d4a373; font-size: 16px;">Dream Decor Studio</strong><br>
                    <span style="color: #333; font-size: 14px;">
                        123 Event Street, Celebration City<br>
                        Ahmedabad, India - 380013
                    </span><br><br>
                    <a href="https://maps.google.com/?q=28.6139,77.2090" 
            target="_blank" 
            style="background: #d4a373; color: white; padding: 8px 15px; text-decoration: none; border-radius: 5px; display: inline-block; margin-top: 5px;">
            Get Directions
        </a>
    </div>
            `).openPopup();
            
            // Add custom controls
            L.control.zoom({
                position: 'topright'
            }).addTo(map);
        }
        
        // Initialize map when page loads
        document.addEventListener('DOMContentLoaded', function() {
            initMap();
            
            // REVEAL ON SCROLL - Same as home page
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
            
            // FAQ Toggle Functionality
            const faqItems = document.querySelectorAll('.faq-item');
            
            faqItems.forEach(item => {
                const question = item.querySelector('.faq-question');
                const toggle = item.querySelector('.faq-toggle');
                
            question.addEventListener('click', () => {
                // Close all other items
                faqItems.forEach(otherItem => {
                    if (otherItem !== item) {
                        otherItem.classList.remove('active');
        }
        });
                    
        // Toggle current item
        item.classList.toggle('active');
                    
        // Update toggle symbol
        if (item.classList.contains('active')) {
            toggle.textContent = '×';
        } else {
            toggle.textContent = '+';
        }
        });
        });
            
        // Form Validation and Submission
            const contactForm = document.getElementById('contactForm');
            const successMessage = document.getElementById('successMessage');
            
        if (contactForm) {
            contactForm.addEventListener('submit', function(e) {
                e.preventDefault();
                    
                // Reset previous errors
                document.querySelectorAll('.error-message').forEach(error => {
                    error.style.display = 'none';
            });
                    
            document.querySelectorAll('.form-input').forEach(input => {
                input.classList.remove('error');
        });
                    
        // Validate form
        let isValid = true;
                    
        // Validate Full Name
                    const fullName = document.getElementById('fullName');
        if (!fullName.value.trim()) {
            document.getElementById('fullNameError').style.display = 'block';
            fullName.classList.add('error');
            isValid = false;
        }
                    
        // Validate Email
                    const email = document.getElementById('email');
                    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!email.value.trim() || !emailRegex.test(email.value)) {
            document.getElementById('emailError').style.display = 'block';
            email.classList.add('error');
            isValid = false;
        }
                    
        // Validate Phone
                    const phone = document.getElementById('phone');
                    const phoneRegex = /^[0-9]{10}$/;
        if (!phone.value.trim() || !phoneRegex.test(phone.value.replace(/\D/g, ''))) {
            document.getElementById('phoneError').style.display = 'block';
            phone.classList.add('error');
            isValid = false;
        }
                    
        // Validate Subject
                    const subject = document.getElementById('subject');
        if (!subject.value) {
            document.getElementById('subjectError').style.display = 'block';
            subject.classList.add('error');
            isValid = false;
        }
                    
        // Validate Message
                    const message = document.getElementById('message');
        if (!message.value.trim()) {
            document.getElementById('messageError').style.display = 'block';
            message.classList.add('error');
            isValid = false;
        }
                    
        // If form is valid, show success message
        if (isValid) {
            // Show success message
            successMessage.style.display = 'block';
                        
            // Scroll to success message
            successMessage.scrollIntoView({
                behavior: 'smooth',
                block: 'center'
            });
                        
            // Reset form
            contactForm.reset();
                        
            // Hide success message after 5 seconds
            setTimeout(() => {
                successMessage.style.display = 'none';
        }, 5000);
        }
        });
        }
            
        // Real-time form validation
            const formInputs = document.querySelectorAll('.form-input');
        formInputs.forEach(input => {
            input.addEventListener('input', function() {
                this.classList.remove('error');
                const errorId = this.id + 'Error';
                const errorElement = document.getElementById(errorId);
                if (errorElement) {
                    errorElement.style.display = 'none';
                }
            });
        });
            
        // Phone number formatting
            const phoneInput = document.getElementById('phone');
        if (phoneInput) {
            phoneInput.addEventListener('input', function(e) {
                let value = e.target.value.replace(/\D/g, '');
                if (value.length > 10) {
                    value = value.substring(0, 10);
                }
                e.target.value = value;
            });
        }
        });
    </script>
</asp:Content>