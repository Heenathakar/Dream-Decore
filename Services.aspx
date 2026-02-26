<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="b.service" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<!-- Google Fonts & Font Awesome -->
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;700&family=Playfair+Display:ital,wght@0,400;0,600;0,700;1,400&family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

<style>
/* ============================================== */
/* DREAM DECOR — SERVICES PAGE                    */
/* SINGLE BANNER - EXACT SAME AS HOME PAGE        */
/* ============================================== */

@import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&family=Poppins:wght@300;400;500;600;700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;700&display=swap');

/* ===== CSS VARIABLES ===== */
:root {
    --teal-primary: #6F8F9A;      /* Main button color, accents */
    --teal-dark: #5A7A84;         /* Hover state for teal */
    --teal-darker: #4A656E;       /* Active/click state for teal */
    --gold-primary: #D4A373;       /* GOLDEN for hover/active states ONLY */
    --gold-dark: #B88D5E;          /* Darker gold for active */
    --charcoal: #2C3E4F;           /* Dark headings */
    --pure-white: #FFFFFF;          /* White */
    --light-gray: #f4f4f4;          /* Page background */
    --card-bg: #ffffff;              /* Card background */
    --text-dark: #2b3b41;           /* Body text */
    --text-light: #555;              /* Lighter text */
    --text-muted: #666;              /* Muted text */
    --badge-bg: rgba(111, 143, 154, 0.1);  /* Teal background for badges */
    --badge-color: #2C3E4F;          /* Dark text for badges */
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

/* ===== TYPOGRAPHY - SAME AS HOME PAGE ===== */
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
    letter-spacing: 1px;
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

/* ===== HEADER STYLES ===== */
header {
    position: absolute;
    top: 0;
    width: 100%;
    background: transparent;
    z-index: 1000;
    transition: all 0.3s ease;
}

header.scrolled {
    background: var(--charcoal);
    box-shadow: 0 5px 20px rgba(0,0,0,0.1);
    position: fixed;
}

/* ===== BANNER STYLES - EXACT SAME AS HOME PAGE ===== */
.services-banner {
    width: 100%;
    height: 100vh;  /* Same as home page */
    background: url('https://images.unsplash.com/photo-1464366400600-7168b8af9bc3?ixlib=rb-4.0.3&auto=format&fit=crop&w=2069&q=80') center/cover no-repeat;
    position: relative;
    display: flex;
    align-items: center;
    justify-content: center;
    overflow: hidden;
}

/* Zoom Effect - Same as home page */
.services-banner {
    animation: smoothZoom 8s infinite alternate ease-in-out;
}

@keyframes smoothZoom {
    0% { transform: scale(1); }
    100% { transform: scale(1.1); }
}

/* Light Overlay - Same as home page */
.services-banner::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(0, 0, 0, 0.15);  /* Same light overlay as home page */
    z-index: 2;
}

.banner-content {
    position: relative;
    text-align: center;
    color: #fff;
    z-index: 3;
    animation: fadeInUp 1.2s ease-out;
    max-width: 1000px;
    padding: 20px;
}

@keyframes fadeInUp {
    0% { opacity: 0; transform: translateY(40px); }
    100% { opacity: 1; transform: translateY(0); }
}

/* Banner heading - exact same as home page */
.banner-content h1 {
    font-family: 'Playfair Display', serif;
    font-size: 80px;  /* Same as home page */
    font-weight: 900;
    margin-bottom: 20px;
    letter-spacing: 4px;  /* Same as home page */
    color: var(--pure-white);
    text-shadow: 3px 3px 6px rgba(0,0,0,0.4);
    line-height: 1.1;
}

/* Banner paragraph - single line as requested */
.banner-content p {
    font-size: 22px;  /* Same as home page */
    font-weight: 400;
    color: var(--pure-white);
    max-width: 800px;
    margin: 0 auto;
    text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
    font-family: 'Poppins', sans-serif;
    line-height: 1.6;
}

/* ===== ATTRACTIVE SERVICE CARD STYLES ===== */
.main-container {
    max-width: 1400px;
    margin: 0 auto;
    padding: 0 40px;
}

.services-grid {
    padding: 60px 0 20px;
}

.service-section {
    padding: 80px 0;
    border-bottom: 1px solid rgba(212, 163, 115, 0.15);
    position: relative;
    overflow: hidden;
}

.service-section:last-child {
    border-bottom: none;
}

.service-section::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: radial-gradient(circle at 0% 50%, rgba(111, 143, 154, 0.03) 0%, transparent 50%);
    pointer-events: none;
}

.service-container {
    display: flex;
    align-items: center;
    gap: 80px;
    position: relative;
    z-index: 2;
}

/* ZIG ZAG PATTERN */
.service-section:nth-child(even) .service-container {
    flex-direction: row-reverse;
}

.service-image {
    flex: 1;
    max-width: 550px;
    aspect-ratio: 4 / 3;
    border-radius: 20px;
    overflow: hidden;
    box-shadow: 0 25px 40px -15px rgba(0,0,0,0.15);
    transition: all 0.5s ease;
    position: relative;
}

.service-image::after {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: linear-gradient(135deg, rgba(111, 143, 154, 0.1) 0%, transparent 100%);
    opacity: 0;
    transition: opacity 0.5s ease;
}

.service-image:hover::after {
    opacity: 1;
}

.service-image:hover {
    transform: translateY(-10px);
    box-shadow: 0 35px 50px -15px rgba(0,0,0,0.25);
}

.service-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    display: block;
    transition: transform 0.7s ease;
}

.service-image:hover img {
    transform: scale(1.08);
}

.service-content {
    flex: 1;
    max-width: 550px;
}

/* Service Badge - Attractive styling */
.service-badge {
    display: inline-block;
    background: linear-gradient(135deg, rgba(111, 143, 154, 0.1) 0%, rgba(111, 143, 154, 0.15) 100%);
    color: var(--charcoal);
    padding: 8px 22px;
    border-radius: 50px;
    font-weight: 600;
    margin-bottom: 20px;
    font-size: 0.85rem;
    letter-spacing: 1.5px;
    text-transform: uppercase;
    border: 1px solid rgba(111, 143, 154, 0.2);
    box-shadow: 0 4px 10px rgba(0,0,0,0.02);
}

.service-content h2 {
    font-size: 46px;
    margin-bottom: 25px;
    color: var(--charcoal);
    font-family: 'Playfair Display', serif;
    font-weight: 800;
    line-height: 1.2;
    position: relative;
    display: inline-block;
}

.service-content h2::after {
    content: '';
    position: absolute;
    bottom: -10px;
    left: 0;
    width: 80px;
    height: 3px;
    background: linear-gradient(90deg, var(--teal-primary), transparent);
    border-radius: 10px;
}

.service-section:nth-child(even) .service-content h2::after {
    left: auto;
    right: 0;
    background: linear-gradient(90deg, transparent, var(--teal-primary));
}

.service-content p {
    font-size: 15px;
    line-height: 1.8;
    color: var(--text-light);
    margin-bottom: 25px;
}

/* Features Heading - Attractive */
.features-heading {
    font-size: 1.25rem;
    color: var(--charcoal);
    margin-bottom: 20px;
    font-weight: 600;
    border-left: 4px solid var(--teal-primary);
    padding-left: 18px;
    font-family: 'Playfair Display', serif;
    font-style: italic;
    background: linear-gradient(90deg, rgba(111, 143, 154, 0.05) 0%, transparent 100%);
}

.features-list {
    margin: 30px 0;
}

.feature-item {
    display: flex;
    align-items: flex-start;
    margin-bottom: 16px;
    transition: all 0.3s ease;
    padding: 5px 10px;
    border-radius: 10px;
}

.feature-item:hover {
    background: rgba(111, 143, 154, 0.03);
    transform: translateX(5px);
}

.feature-icon {
    width: 24px;
    height: 24px;
    background: linear-gradient(135deg, var(--teal-primary) 0%, var(--teal-dark) 100%);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-right: 15px;
    margin-top: 2px;
    flex-shrink: 0;
    box-shadow: 0 4px 8px rgba(111, 143, 154, 0.2);
}

.feature-icon i {
    color: var(--pure-white);
    font-size: 0.7rem;
}

.feature-text {
    flex: 1;
    color: var(--text-muted);
    font-size: 1rem;
}

/* View Packages Button */
.view-packages-btn {
    display: inline-flex;
    align-items: center;
    gap: 12px;
    background-color: var(--teal-primary);
    color: var(--pure-white);
    padding: 14px 32px;
    border-radius: 50px;
    text-decoration: none;
    font-weight: 500;
    font-size: 14px;
    border: none;
    cursor: pointer;
    transition: all 0.3s ease;
    box-shadow: 0 4px 15px rgba(111, 143, 154, 0.25);
    margin-top: 20px;
    position: relative;
    overflow: hidden;
    font-family: 'Poppins', sans-serif;
    letter-spacing: 1px;
}

.view-packages-btn::before {
    content: '';
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 100%;
    background: linear-gradient(90deg, transparent, rgba(255,255,255,0.2), transparent);
    transition: left 0.5s ease;
}

.view-packages-btn:hover::before {
    left: 100%;
}

.view-packages-btn:hover {
    background-color: var(--gold-primary);
    color: var(--pure-white);
    transform: translateY(-3px);
    box-shadow: 0 8px 25px rgba(44, 62, 79, 0.3);
}

.view-packages-btn:active {
    transform: scale(0.95);
    background-color: var(--gold-dark);
    box-shadow: 0 2px 10px rgba(0,0,0,0.2);
    transition: 0.1s;
}

.view-packages-btn i {
    transition: transform 0.3s ease;
}

.view-packages-btn:hover i {
    transform: translateX(6px);
}

/* CTA Button */
.cta-btn {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    gap: 12px;
    background-color: var(--teal-primary);
    color: var(--pure-white);
    padding: 16px 42px;
    font-size: 15px;
    font-weight: 600;
    border-radius: 50px;
    text-decoration: none;
    transition: all 0.3s ease;
    border: none;
    position: relative;
    overflow: hidden;
    box-shadow: 0 4px 15px rgba(111, 143, 154, 0.25);
    font-family: 'Poppins', sans-serif;
    letter-spacing: 1px;
}

.cta-btn::before {
    content: '';
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 100%;
    background: linear-gradient(90deg, transparent, rgba(255,255,255,0.2), transparent);
    transition: left 0.5s ease;
}

.cta-btn:hover::before {
    left: 100%;
}

.cta-btn:hover {
    background-color: var(--gold-primary);
    color: var(--pure-white);
    transform: translateY(-3px);
    box-shadow: 0 8px 25px rgba(44, 62, 79, 0.3);
}

.cta-btn:active {
    transform: scale(0.95);
    background-color: var(--gold-dark);
    box-shadow: 0 2px 10px rgba(0,0,0,0.2);
    transition: 0.1s;
}

/* Request Custom Quote Button */
.btn-light {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    gap: 12px;
    background-color: var(--teal-primary);
    color: var(--pure-white);
    border: 2px solid var(--teal-primary);
    padding: 16px 42px;
    font-size: 15px;
    font-weight: 600;
    border-radius: 50px;
    text-decoration: none;
    transition: all 0.3s ease;
    position: relative;
    overflow: hidden;
    box-shadow: 0 4px 15px rgba(111, 143, 154, 0.25);
    font-family: 'Poppins', sans-serif;
    letter-spacing: 1px;
}

.btn-light::before {
    content: '';
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 100%;
    background: linear-gradient(90deg, transparent, rgba(255,255,255,0.2), transparent);
    transition: left 0.5s ease;
}

.btn-light:hover::before {
    left: 100%;
}

.btn-light:hover {
    background-color: var(--gold-primary);
    color: var(--pure-white);
    transform: translateY(-3px);
    box-shadow: 0 8px 25px rgba(44, 62, 79, 0.3);
    border-color: var(--gold-primary);
}

.btn-light:active {
    transform: scale(0.95);
    background-color: var(--gold-dark);
    border-color: var(--gold-dark);
    box-shadow: 0 2px 10px rgba(0,0,0,0.2);
    transition: 0.1s;
}

/* ===== PACKAGES CTA SECTION ===== */
.packages-cta {
    background: var(--light-gray);
    padding: 100px 0;
    text-align: center;
    color: var(--charcoal);
    margin: 40px 0 0;
    position: relative;
    overflow: hidden;
}

.packages-cta::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-image: url("data:image/svg+xml,%3Csvg width='100' height='100' viewBox='0 0 100 100' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M11 18c3.866 0 7-3.134 7-7s-3.134-7-7-7-7 3.134-7 7 3.134 7 7 7zm48 25c3.866 0 7-3.134 7-7s-3.134-7-7-7-7 3.134-7 7 3.134 7 7 7zm-43-7c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zm63 31c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zM34 90c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zm56-76c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zM12 86c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm28-65c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm23-11c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm-6 60c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm29 22c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zM32 63c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm57-13c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm-9-21c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM60 91c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM35 41c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM12 60c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2z' fill='%23d4a373' fill-opacity='0.05' fill-rule='evenodd'/%3E%3C/svg%3E");
    opacity: 0.5;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
    position: relative;
    z-index: 2;
}

.cta-content h2 {
    font-size: 46px;
    margin-bottom: 20px;
    color: var(--charcoal);
    font-family: 'Playfair Display', serif;
    font-weight: 800;
}

.cta-content p {
    font-size: 15px;
    margin-bottom: 40px;
    color: var(--text-light);
    line-height: 1.8;
    max-width: 800px;
    margin-left: auto;
    margin-right: auto;
}

.cta-buttons {
    display: flex;
    gap: 25px;
    justify-content: center;
    flex-wrap: wrap;
}

/* ===== FAQ SECTION ===== */
.faq-section {
    padding: 100px 0;
    background-color: var(--light-gray);
}

.section-title {
    text-align: center;
    margin-bottom: 60px;
}

.section-title h2 {
    font-family: 'Playfair Display', serif;
    font-size: 46px;
    color: var(--charcoal);
    margin-bottom: 15px;
    font-weight: 800;
}

.section-title p {
    font-family: 'Playfair Display', serif;
    font-size: 18px;
    color: var(--teal-primary);
    font-style: italic;
}

.faq-container {
    max-width: 900px;
    margin: 0 auto;
}

.faq-item {
    background-color: var(--pure-white);
    border-radius: 12px;
    margin-bottom: 20px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.04);
    overflow: hidden;
    border: 1px solid rgba(111, 143, 154, 0.1);
    transition: all 0.3s ease;
}

.faq-item:hover {
    box-shadow: 0 12px 30px rgba(0,0,0,0.08);
    transform: translateY(-2px);
}

.faq-question {
    padding: 22px 30px;
    font-size: 16px;
    font-weight: 600;
    color: var(--charcoal);
    cursor: pointer;
    display: flex;
    justify-content: space-between;
    align-items: center;
    transition: all 0.3s ease;
}

.faq-question:hover {
    color: var(--gold-primary);
    background-color: rgba(212, 163, 115, 0.03);
}

.faq-question.active {
    color: var(--gold-primary);
    border-bottom: 1px solid rgba(212, 163, 115, 0.1);
}

.faq-question i {
    transition: transform 0.4s ease;
    color: var(--teal-primary);
}

.faq-question.active i {
    transform: rotate(180deg);
    color: var(--gold-primary);
}

.faq-answer {
    padding: 0 30px;
    max-height: 0;
    overflow: hidden;
    transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
}

.faq-answer p {
    padding: 0 0 25px;
    color: var(--text-light);
    line-height: 1.7;
    font-size: 15px;
}

/* ===== REVEAL ANIMATION ===== */
.reveal {
    opacity: 0;
    transform: translateY(30px);
    transition: all 0.9s cubic-bezier(0.23, 1, 0.32, 1);
}

.reveal.active {
    opacity: 1;
    transform: translateY(0);
}

/* Smooth scroll */
html {
    scroll-behavior: smooth;
}

/* ===== RESPONSIVE DESIGN ===== */
@media (max-width: 1100px) {
    .service-container, 
    .service-section:nth-child(even) .service-container {
        flex-direction: column;
        gap: 40px;
    }
    
    .service-image, 
    .service-content {
        max-width: 100%;
        width: 100%;
    }
    
    .service-content h2 {
        font-size: 38px;
    }
    
    h1 { font-size: 52px; }
    .banner-content h1 { font-size: 60px; }
    .banner-content p { font-size: 20px; }
}

@media (max-width: 768px) {
    .services-banner {
        height: 100vh; /* Keep full height on mobile */
    }
    
    .banner-content h1 {
        font-size: 48px;
        letter-spacing: 3px;
    }
    
    .banner-content p {
        font-size: 18px;
    }
    
    .service-content h2 {
        font-size: 32px;
    }
    
    .cta-content h2 {
        font-size: 38px;
    }
    
    .section-title h2 {
        font-size: 38px;
    }
    
    .cta-buttons {
        flex-direction: column;
        align-items: center;
        gap: 15px;
    }
    
    .cta-btn, .btn-light {
        width: 100%;
        max-width: 300px;
        text-align: center;
    }
    
    .main-container {
        padding: 0 25px;
    }
    
    h1 { font-size: 42px; }
    h2 { font-size: 38px; }
}

@media (max-width: 480px) {
    .banner-content h1 {
        font-size: 40px;
        letter-spacing: 2px;
    }
    
    .banner-content p {
        font-size: 16px;
    }
    
    .service-content h2 {
        font-size: 28px;
    }
    
    .service-badge {
        font-size: 0.75rem;
        padding: 6px 16px;
    }
    
    .view-packages-btn {
        padding: 12px 24px;
        width: 100%;
        justify-content: center;
    }
    
    .faq-question {
        padding: 18px 20px;
        font-size: 15px;
    }
    
    h1 { font-size: 36px; }
    h2 { font-size: 32px; }
}
</style>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<script>
    // Header scroll effect
    window.addEventListener("scroll", function () {
        const header = document.querySelector("header");
        if (window.scrollY > 100) {
            header.classList.add("scrolled");
        } else {
            header.classList.remove("scrolled");
        }
    });
</script>

<!-- SERVICES BANNER - SINGLE IMAGE EXACT SAME AS HOME PAGE -->
<section class="services-banner" id="servicesBanner">
    <!-- Banner Content - Same style as home page -->
    <div class="banner-content">
        <h1>Our Services</h1>
        <p>Elegant decorations for every celebration</p>
    </div>
</section>

<!-- MAIN SERVICES CONTENT - ZIG ZAG PATTERN -->
<div class="main-container">
    <div class="services-grid">
        
        <!-- Birthday Party Service -->
        <div id="birthday" class="service-section reveal">
            <div class="service-container">
                <div class="service-image">
                    <img src="https://i.pinimg.com/736x/1a/34/a2/1a34a275904e6be713377ac4e953299b.jpg" alt="Birthday Party Decoration" onerror="this.src='https://images.unsplash.com/photo-1530103862676-de8c9debad1d?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80'" />
                </div>
                <div class="service-content">
                    <span class="service-badge">⭐ MOST POPULAR</span>
                    <h2>Birthday Decoration</h2>
                    <p>Create magical birthday celebrations with our vibrant and thematic decorations. Whether it's a child's first birthday, a sweet sixteen, or a milestone celebration, we design immersive environments that reflect personality and create lasting memories.</p>
                    
                    <div class="features-heading">Decoration Features:</div>
                    <div class="features-list">
                        <div class="feature-item">
                            <div class="feature-icon"><i class="fas fa-check"></i></div>
                            <div class="feature-text">Balloon Decoration (Arches, columns, sculptures)</div>
                        </div>
                        <div class="feature-item">
                            <div class="feature-icon"><i class="fas fa-palette"></i></div>
                            <div class="feature-text">Theme-Based Decoration (Princess, Superhero, Jungle)</div>
                        </div>
                        <div class="feature-item">
                            <div class="feature-icon"><i class="fas fa-spa"></i></div>
                            <div class="feature-text">Floral Decoration (Fresh flower arrangements)</div>
                        </div>
                        <div class="feature-item">
                            <div class="feature-icon"><i class="fas fa-lightbulb"></i></div>
                            <div class="feature-text">Lighting Decoration (Fairy lights, LED effects)</div>
                        </div>
                        <div class="feature-item">
                            <div class="feature-icon"><i class="fas fa-theater-masks"></i></div>
                            <div class="feature-text">Stage Decoration (Backdrop, photo booth, theme stage)</div>
                        </div>
                    </div>
                    
                    <a href="brithday.aspx" class="view-packages-btn">
                        View Package <i class="fas fa-arrow-right"></i>
                    </a>
                </div>
            </div>
        </div>
        
        <!-- Anniversary Service -->
        <div id="anniversary" class="service-section reveal">
            <div class="service-container">
                <div class="service-image">
                    <img src="https://i.pinimg.com/736x/95/31/bf/9531bf728ae47a166ad27cc89a60de00.jpg" alt="Anniversary Decoration" onerror="this.src='https://images.unsplash.com/photo-1519741497674-611481863552?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80'" />
                </div>
                <div class="service-content">
                    <span class="service-badge">❤️ ROMANTIC ELEGANCE</span>
                    <h2>Anniversary Decoration</h2>
                    <p>Celebrate milestones with elegant and romantic decorations that reflect your journey together. We create intimate atmospheres that honor relationships and create new memories to cherish for years to come.</p>
                    
                    <div class="features-heading">Decoration Features:</div>
                    <div class="features-list">
                        <div class="feature-item">
                            <div class="feature-icon"><i class="fas fa-check"></i></div>
                            <div class="feature-text">Balloon Decoration (Elegant installations, columns)</div>
                        </div>
                        <div class="feature-item">
                            <div class="feature-icon"><i class="fas fa-palette"></i></div>
                            <div class="feature-text">Theme-Based Decoration (Romantic, Vintage, Golden)</div>
                        </div>
                        <div class="feature-item">
                            <div class="feature-icon"><i class="fas fa-spa"></i></div>
                            <div class="feature-text">Floral Decoration (Premium floral arrangements)</div>
                        </div>
                        <div class="feature-item">
                            <div class="feature-icon"><i class="fas fa-lightbulb"></i></div>
                            <div class="feature-text">Lighting Decoration (Candle lighting, romantic ambiance)</div>
                        </div>
                        <div class="feature-item">
                            <div class="feature-icon"><i class="fas fa-theater-masks"></i></div>
                            <div class="feature-text">Stage Decoration (Memory wall, couple's stage)</div>
                        </div>
                    </div>
                    
                    <a href="anniversary.aspx" class="view-packages-btn">
                        View Packages <i class="fas fa-arrow-right"></i>
                    </a>
                </div>
            </div>
        </div>
        
        <!-- Baby Shower Service -->
        <div id="babyshower" class="service-section reveal">
            <div class="service-container">
                <div class="service-image">
                    <img src="https://i.pinimg.com/1200x/33/73/d7/3373d77ea07a18bedd43267ad8bc35fe.jpg" alt="Baby Shower Decoration" onerror="this.src='https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80'" />
                </div>
                <div class="service-content">
                    <span class="service-badge">👶 ADORABLE & HEARTWARMING</span>
                    <h2>Baby Shower Decoration</h2>
                    <p>Welcome the new arrival with heartwarming and adorable decoration themes. We design sweet, whimsical environments that celebrate the upcoming addition to your family with warmth and joy.</p>
                    
                    <div class="features-heading">Decoration Features:</div>
                    <div class="features-list">
                        <div class="feature-item">
                            <div class="feature-icon"><i class="fas fa-check"></i></div>
                            <div class="feature-text">Balloon Decoration (Baby-themed sculptures, garlands)</div>
                        </div>
                        <div class="feature-item">
                            <div class="feature-icon"><i class="fas fa-palette"></i></div>
                            <div class="feature-text">Theme-Based Decoration (Woodland, Storybook, Celestial)</div>
                        </div>
                        <div class="feature-item">
                            <div class="feature-icon"><i class="fas fa-spa"></i></div>
                            <div class="feature-text">Floral Decoration (Soft floral, baby's breath)</div>
                        </div>
                        <div class="feature-item">
                            <div class="feature-icon"><i class="fas fa-lightbulb"></i></div>
                            <div class="feature-text">Lighting Decoration (Soft glow, star effects)</div>
                        </div>
                        <div class="feature-item">
                            <div class="feature-icon"><i class="fas fa-theater-masks"></i></div>
                            <div class="feature-text">Stage Decoration (Diaper cake display, gift table)</div>
                        </div>
                    </div>
                    
                    <a href="babyshower.aspx" class="view-packages-btn">
                        View Packages <i class="fas fa-arrow-right"></i>
                    </a>
                </div>
            </div>
        </div>
        
        <!-- Engagement Service -->
        <div id="engagement" class="service-section reveal">
            <div class="service-container">
                <div class="service-image">
                    <img src="https://i.pinimg.com/736x/ff/98/ba/ff98ba310e0ff0aa925371285eeb3cf1.jpg" alt="Engagement Decoration" />
                </div>
                <div class="service-content">
                    <span class="service-badge">💍 ELEGANT & SOPHISTICATED</span>
                    <h2>Engagement Decoration</h2>
                    <p>Mark the beginning of your forever with sophisticated and memorable decoration setups. From intimate proposals to grand engagement parties, we create environments that celebrate love in its most beautiful forms.</p>
                    
                    <div class="features-heading">Decoration Features:</div>
                    <div class="features-list">
                        <div class="feature-item">
                            <div class="feature-icon"><i class="fas fa-check"></i></div>
                            <div class="feature-text">Balloon Decoration (Luxury designs, geometric installations)</div>
                        </div>
                        <div class="feature-item">
                            <div class="feature-icon"><i class="fas fa-palette"></i></div>
                            <div class="feature-text">Theme-Based Decoration (Modern, Traditional, Bohemian)</div>
                        </div>
                        <div class="feature-item">
                            <div class="feature-icon"><i class="fas fa-spa"></i></div>
                            <div class="feature-text">Floral Decoration (Exotic flowers, premium blooms)</div>
                        </div>
                        <div class="feature-item">
                            <div class="feature-icon"><i class="fas fa-lightbulb"></i></div>
                            <div class="feature-text">Lighting Decoration (Chandelier effects, mood lighting)</div>
                        </div>
                        <div class="feature-item">
                            <div class="feature-icon"><i class="fas fa-theater-masks"></i></div>
                            <div class="feature-text">Stage Decoration (Ring display, proposal setup)</div>
                        </div>
                    </div>
                    
                    <a href="engagement.aspx" class="view-packages-btn">
                        View Packages <i class="fas fa-arrow-right"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- PACKAGES CTA -->
<section class="packages-cta reveal">
    <div class="container">
        <div class="cta-content">
            <h2>Ready to Plan Your Event?</h2>
            <p>Choose from our carefully crafted packages designed to fit different needs and budgets. Whether you're looking for a simple setup or a full luxury experience, we have the perfect package for your celebration.</p>
            <div class="cta-buttons">
                <a href="Packages.aspx" class="cta-btn">View All Packages</a>
                <a href="Contact.aspx" class="btn-light">Request Custom Quote</a>
            </div>
        </div>
    </div>
</section>

<!-- FAQ SECTION -->
<section class="faq-section reveal">
    <div class="container">
        <div class="section-title">
            <h2>Frequently Asked Questions</h2>
            <p>Find answers to common questions about our services</p>
        </div>
        
        <div class="faq-container">
            <div class="faq-item">
                <div class="faq-question">
                    <span>What decoration services do you offer?</span>
                    <i class="fas fa-chevron-down"></i>
                </div>
                <div class="faq-answer">
                    <p>We offer comprehensive decoration services including balloon decoration, theme-based setups, floral arrangements, lighting effects, and stage decoration for birthday parties, anniversaries, baby showers, and engagement ceremonies.</p>
                </div>
            </div>
            
            <div class="faq-item">
                <div class="faq-question">
                    <span>Can I customize the decoration themes?</span>
                    <i class="fas fa-chevron-down"></i>
                </div>
                <div class="faq-answer">
                    <p>Absolutely! We work closely with you to create custom themes that reflect your personal style and preferences. Our designers can adapt any theme to match your vision and incorporate specific elements you want.</p>
                </div>
            </div>
            
            <div class="faq-item">
                <div class="faq-question">
                    <span>Do you provide setup and dismantling?</span>
                    <i class="fas fa-chevron-down"></i>
                </div>
                <div class="faq-answer">
                    <p>Yes, our professional team handles complete setup before your event and dismantling after the celebration, ensuring a hassle-free experience for you. We arrive well in advance and clean up after the event.</p>
                </div>
            </div>
            
            <div class="faq-item">
                <div class="faq-question">
                    <span>What materials do you use for decorations?</span>
                    <i class="fas fa-chevron-down"></i>
                </div>
                <div class="faq-answer">
                    <p>We use premium quality balloons (latex and foil), fresh flowers, eco-friendly materials, and professional lighting equipment to ensure beautiful, safe, and durable decorations that last throughout your event.</p>
                </div>
            </div>
            
            <div class="faq-item">
                <div class="faq-question">
                    <span>How do I view your package options?</span>
                    <i class="fas fa-chevron-down"></i>
                </div>
                <div class="faq-answer">
                    <p>You can view our curated packages by clicking the "View All Packages" button or "View Packages" button under each service. Each package includes different features and pricing options to suit various budgets.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        // FAQ Accordion
        const faqQuestions = document.querySelectorAll('.faq-question');
        
        faqQuestions.forEach((question, index) => {
            question.addEventListener('click', function() {
                const answer = this.nextElementSibling;
                const isActive = this.classList.contains('active');
                
                // Close all
                faqQuestions.forEach(q => {
                    q.classList.remove('active');
                q.nextElementSibling.style.maxHeight = null;
            });
                
        // Open current if it wasn't active
        if (!isActive) {
            this.classList.add('active');
            answer.style.maxHeight = answer.scrollHeight + 'px';
        }
    });
    });
        
    // Open first FAQ by default
    if (faqQuestions.length > 0) {
        faqQuestions[0].classList.add('active');
        faqQuestions[0].nextElementSibling.style.maxHeight = 
            faqQuestions[0].nextElementSibling.scrollHeight + 'px';
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