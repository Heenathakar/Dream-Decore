<%@ Page Title="Gallery" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="b.Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style>
        /* ============================================== */
        /* DREAM DECOR — GALLERY PAGE                      */
        /* MATCHING SERVICES PAGE COLOR SCHEME & STYLING   */
        /* ============================================== */

        /* ===== CSS VARIABLES (MATCHING SERVICES PAGE) ===== */
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
            --cream-beige: #faf7f2;          /* Light cream background */
        }

        /* ===== PAGE HEADER - UPDATED TO MATCH HOME PAGE BANNER ===== */
        .page-header {
            width: 100%;
            height: 100vh;  /* Same as home page */
            background: url('images/h.png') no-repeat center center/cover;
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
        .page-header::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.15);
            z-index: 1;
        }

        .page-header .banner-content {
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

        .page-header .banner-content h1 {
            font-family: 'Playfair Display', serif;
            font-size: 80px;
            font-weight: 900;
            margin-bottom: 20px;
            letter-spacing: 4px;
            color: var(--pure-white);
            text-shadow: 3px 3px 6px rgba(0,0,0,0.4);
            line-height: 1.1;
        }

        .page-header .banner-content p {
            font-size: 22px;
            font-weight: 400;
            color: var(--pure-white);
            max-width: 800px;
            margin: 0 auto;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
            font-family: 'Poppins', sans-serif;
            line-height: 1.4;
        }

        /* ===== GALLERY INTRO SECTION ===== */
        .gallery-intro {
            padding: 80px 0;
            background-color: var(--light-gray);
            text-align: center;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .gallery-intro h2 {
            font-size: 2.8rem;
            margin-bottom: 20px;
            color: var(--charcoal);
            font-family: 'Playfair Display', serif;
            font-weight: 700;
        }

        .gallery-intro p {
            font-size: 1.1rem;
            max-width: 800px;
            margin: 0 auto 40px;
            color: var(--text-muted);
            line-height: 1.8;
            font-family: 'Poppins', sans-serif;
        }

        /* ===== GALLERY FILTER (MATCHING SERVICES STYLE) ===== */
        .gallery-filter {
            background-color: var(--card-bg);
            padding: 35px;
            border-radius: 20px;
            box-shadow: 0 25px 40px -15px rgba(0,0,0,0.1);
            margin-bottom: 50px;
            border: 1px solid rgba(111, 143, 154, 0.1);
        }

        .filter-tabs {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 15px;
        }

        .filter-btn {
            padding: 14px 32px;
            background-color: var(--teal-primary);
            border: 2px solid var(--teal-primary);
            border-radius: 50px;
            color: var(--pure-white);
            font-weight: 500;
            font-size: 1rem;
            cursor: pointer;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            gap: 8px;
            position: relative;
            overflow: hidden;
            font-family: 'Poppins', sans-serif;
            letter-spacing: 1px;
        }

        .filter-btn i {
            font-size: 1.1rem;
        }

        .filter-btn:hover {
            background-color: var(--gold-primary);
            border-color: var(--gold-primary);
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(212, 163, 115, 0.3);
        }

        .filter-btn.active {
            background-color: var(--gold-primary);
            border-color: var(--gold-primary);
            box-shadow: 0 5px 15px rgba(212, 163, 115, 0.3);
        }

        .filter-btn:active {
            transform: scale(0.95);
            transition: 0.1s;
        }

        /* ===== GALLERY GRID ===== */
        .gallery-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
            gap: 30px;
            margin-bottom: 60px;
        }

        .gallery-item {
            border-radius: 15px;
            overflow: hidden;
            position: relative;
            cursor: pointer;
            height: 320px;
            box-shadow: 0 15px 35px -10px rgba(0,0,0,0.1);
            transition: all 0.5s ease;
            opacity: 1;
            transform: scale(1);
            display: block;
            visibility: visible;
            border: 1px solid rgba(111, 143, 154, 0.1);
        }

        .gallery-item.hidden {
            opacity: 0;
            transform: scale(0.9);
            height: 0 !important;
            margin: 0 !important;
            padding: 0 !important;
            visibility: hidden;
            position: absolute;
            pointer-events: none;
            transition: all 0.4s ease;
        }

        .gallery-item:not(.hidden) {
            opacity: 1;
            transform: scale(1);
            height: 320px;
            visibility: visible;
            position: relative;
            pointer-events: auto;
        }

        .gallery-item:hover {
            transform: translateY(-10px) scale(1.02);
            box-shadow: 0 25px 45px -10px rgba(212, 163, 115, 0.2);
        }

        .gallery-img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.7s ease;
        }

        .gallery-item:hover .gallery-img {
            transform: scale(1.1);
        }

        .gallery-overlay {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            background: linear-gradient(to top, var(--charcoal) 0%, transparent 100%);
            padding: 30px 25px 25px;
            color: var(--pure-white);
            transform: translateY(100%);
            transition: transform 0.4s ease;
        }

        .gallery-item:hover .gallery-overlay {
            transform: translateY(0);
        }

        .gallery-category {
            display: inline-block;
            background-color: var(--teal-primary);
            color: var(--pure-white);
            padding: 6px 16px;
            border-radius: 50px;
            font-size: 0.8rem;
            font-weight: 500;
            margin-bottom: 12px;
            text-transform: uppercase;
            letter-spacing: 1px;
            font-family: 'Poppins', sans-serif;
        }

        .gallery-overlay h3 {
            font-size: 1.3rem;
            margin-bottom: 8px;
            font-family: 'Playfair Display', serif;
            color: var(--pure-white);
        }

        .gallery-overlay p {
            font-size: 0.9rem;
            opacity: 0.9;
            margin-bottom: 0;
            font-family: 'Poppins', sans-serif;
        }

        /* ===== VIDEO SECTION ===== */
        .video-section {
            padding: 80px 0;
            background-color: var(--pure-white);
        }

        .video-section h2 {
            text-align: center;
            font-size: 2.8rem;
            margin-bottom: 50px;
            color: var(--charcoal);
            font-family: 'Playfair Display', serif;
        }

        .video-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 30px;
        }

        .video-item {
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 15px 35px -10px rgba(0,0,0,0.1);
            position: relative;
            cursor: pointer;
            height: 250px;
            border: 1px solid rgba(111, 143, 154, 0.1);
        }

        .video-thumbnail {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .video-play {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 70px;
            height: 70px;
            background-color: var(--teal-primary);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--pure-white);
            font-size: 1.5rem;
            transition: all 0.3s ease;
            box-shadow: 0 5px 20px rgba(0,0,0,0.3);
        }

        .video-item:hover .video-play {
            background-color: var(--gold-primary);
            transform: translate(-50%, -50%) scale(1.1);
            box-shadow: 0 10px 30px rgba(212, 163, 115, 0.4);
        }

        .video-info {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            background: linear-gradient(to top, var(--charcoal) 0%, transparent 100%);
            padding: 20px;
            color: var(--pure-white);
        }

        .video-info h3 {
            font-size: 1.2rem;
            margin-bottom: 5px;
            font-family: 'Playfair Display', serif;
            color: var(--pure-white);
        }

        .video-info p {
            font-family: 'Poppins', sans-serif;
            font-size: 0.9rem;
            opacity: 0.9;
        }

        /* ===== TESTIMONIAL SECTION ===== */
        .testimonial-section {
            padding: 80px 0;
            background-color: var(--light-gray);
        }

        .testimonial-section h2 {
            text-align: center;
            font-size: 2.8rem;
            margin-bottom: 50px;
            color: var(--charcoal);
            font-family: 'Playfair Display', serif;
        }

        .testimonial-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .testimonial-card {
            background-color: var(--card-bg);
            padding: 40px 35px;
            border-radius: 20px;
            box-shadow: 0 15px 35px -10px rgba(0,0,0,0.1);
            position: relative;
            border: 1px solid rgba(111, 143, 154, 0.1);
            transition: all 0.3s ease;
        }

        .testimonial-card:hover {
            transform: translateY(-8px);
            border-color: var(--gold-primary);
            box-shadow: 0 25px 45px -10px rgba(212, 163, 115, 0.15);
        }

        .testimonial-card::before {
            content: '"';
            position: absolute;
            top: 20px;
            left: 25px;
            font-size: 4rem;
            color: rgba(111, 143, 154, 0.2);
            font-family: 'Playfair Display', serif;
            line-height: 1;
        }

        .testimonial-text {
            font-size: 1.05rem;
            color: var(--text-muted);
            line-height: 1.8;
            margin-bottom: 25px;
            font-style: italic;
            position: relative;
            z-index: 1;
            font-family: 'Poppins', sans-serif;
        }

        .testimonial-author {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .author-image {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            overflow: hidden;
            border: 3px solid var(--teal-primary);
        }

        .author-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .author-info h4 {
            font-size: 1.1rem;
            color: var(--charcoal);
            margin-bottom: 5px;
            font-family: 'Playfair Display', serif;
        }

        .author-info p {
            color: var(--teal-primary);
            font-size: 0.9rem;
            font-family: 'Poppins', sans-serif;
        }

        /* ===== LIGHTBOX STYLES ===== */
        .lightbox {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(44, 62, 79, 0.95);
            z-index: 10000;
            justify-content: center;
            align-items: center;
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        .lightbox.active {
            display: flex;
            opacity: 1;
        }

        .lightbox-content {
            max-width: 90%;
            max-height: 90%;
            position: relative;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .lightbox-img {
            max-width: 100%;
            max-height: 70vh;
            border-radius: 15px;
            box-shadow: 0 20px 60px rgba(0,0,0,0.5);
            object-fit: contain;
        }

        .lightbox-info {
            text-align: center;
            color: var(--pure-white);
            margin-top: 20px;
            width: 100%;
        }

        .lightbox-info h3 {
            font-size: 1.8rem;
            margin-bottom: 10px;
            font-family: 'Playfair Display', serif;
            color: var(--gold-primary);
        }

        .lightbox-info p {
            color: #ddd;
            font-size: 1.1rem;
            font-family: 'Poppins', sans-serif;
        }

        .lightbox-close {
            position: absolute;
            top: 20px;
            right: 20px;
            background-color: var(--teal-primary);
            border: none;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            color: var(--pure-white);
            font-size: 1.8rem;
            cursor: pointer;
            transition: all 0.3s ease;
            z-index: 10001;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .lightbox-close:hover {
            background-color: var(--gold-primary);
            transform: scale(1.1) rotate(90deg);
        }

        .lightbox-nav {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            width: 100%;
            display: flex;
            justify-content: space-between;
            padding: 0 20px;
            z-index: 10001;
        }

        .lightbox-btn {
            background-color: var(--teal-primary);
            border: none;
            width: 60px;
            height: 60px;
            border-radius: 50%;
            color: var(--pure-white);
            font-size: 1.5rem;
            cursor: pointer;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .lightbox-btn:hover {
            background-color: var(--gold-primary);
            transform: scale(1.1);
        }

        /* ===== CTA SECTION (MATCHING SERVICES BUTTONS) ===== */
        .booking-cta {
            padding: 80px 0;
            background-color: var(--light-gray);
            text-align: center;
            border-top: 1px solid rgba(111, 143, 154, 0.1);
            border-bottom: 1px solid rgba(111, 143, 154, 0.1);
            position: relative;
            overflow: hidden;
        }

        .booking-cta::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: url("data:image/svg+xml,%3Csvg width='100' height='100' viewBox='0 0 100 100' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M11 18c3.866 0 7-3.134 7-7s-3.134-7-7-7-7 3.134-7 7 3.134 7 7 7zm48 25c3.866 0 7-3.134 7-7s-3.134-7-7-7-7 3.134-7 7 3.134 7 7 7zm-43-7c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zm63 31c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zM34 90c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zm56-76c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zM12 86c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm28-65c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm23-11c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm-6 60c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm29 22c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zM32 63c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm57-13c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm-9-21c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM60 91c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM35 41c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM12 60c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2z' fill='%23d4a373' fill-opacity='0.05' fill-rule='evenodd'/%3E%3C/svg%3E");
            opacity: 0.5;
        }

        .booking-cta-content {
            position: relative;
            z-index: 2;
        }

        .booking-cta h2 {
            font-size: 3rem;
            margin-bottom: 20px;
            color: var(--charcoal);
            font-family: 'Playfair Display', serif;
        }

        .booking-cta p {
            font-size: 1.1rem;
            max-width: 600px;
            margin: 0 auto 40px;
            color: var(--text-muted);
            line-height: 1.8;
            font-family: 'Poppins', sans-serif;
        }

        .cta-buttons {
            display: flex;
            gap: 25px;
            justify-content: center;
            flex-wrap: wrap;
        }

        .hero-btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 12px;
            padding: 16px 42px;
            font-size: 1.1rem;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
            border: none;
            cursor: pointer;
            font-family: 'Poppins', sans-serif;
            letter-spacing: 1px;
            animation: softPulse 3s infinite;
        }

        .btn-primary {
            background-color: var(--teal-primary);
            color: var(--pure-white);
            box-shadow: 0 4px 15px rgba(111, 143, 154, 0.25);
        }

        .btn-secondary {
            background-color: var(--teal-primary);
            color: var(--pure-white);
            border: 2px solid var(--teal-primary);
            box-shadow: 0 4px 15px rgba(111, 143, 154, 0.25);
        }

        .hero-btn:hover {
            background-color: var(--gold-primary);
            color: var(--pure-white);
            transform: translateY(-3px);
            box-shadow: 0 8px 25px rgba(44, 62, 79, 0.3);
        }

        .btn-secondary:hover {
            background-color: var(--gold-primary);
            border-color: var(--gold-primary);
        }

        .hero-btn:active {
            transform: scale(0.95);
            background-color: var(--gold-dark);
            box-shadow: 0 2px 10px rgba(0,0,0,0.2);
            transition: 0.1s;
        }

        .hero-btn i {
            transition: transform 0.3s ease;
        }

        .hero-btn:hover i {
            transform: translateX(6px);
        }

        @keyframes softPulse {
            0% { box-shadow: 0 4px 15px rgba(111, 143, 154, 0.15); }
            50% { box-shadow: 0 8px 22px rgba(111, 143, 154, 0.25); }
            100% { box-shadow: 0 4px 15px rgba(111, 143, 154, 0.15); }
        }

        /* ===== ANIMATIONS ===== */
        @keyframes fadeIn {
            0% { opacity: 0; transform: translateY(30px); }
            100% { opacity: 1; transform: translateY(0); }
        }

        /* ===== RESPONSIVE DESIGN ===== */
        @media (max-width: 1200px) {
            .gallery-grid {
                grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            }
            
            .page-header .banner-content h1 {
                font-size: 60px;
            }
        }

        @media (max-width: 992px) {
            .page-header .banner-content h1 {
                font-size: 55px;
            }
            
            .page-header .banner-content p {
                font-size: 20px;
            }
            
            .gallery-item {
                height: 300px;
            }
            
            .gallery-item.hidden {
                height: 0 !important;
            }
            
            .filter-tabs {
                justify-content: center;
            }
            
            .video-grid {
                grid-template-columns: repeat(2, 1fr);
            }
            
            .testimonial-grid {
                grid-template-columns: repeat(2, 1fr);
            }
            
            .booking-cta h2 {
                font-size: 2.8rem;
            }
        }

        @media (max-width: 768px) {
            .page-header {
                height: 100vh;
            }
            
            .page-header .banner-content h1 {
                font-size: 48px;
                letter-spacing: 3px;
            }
            
            .page-header .banner-content p {
                font-size: 18px;
            }
            
            .gallery-intro h2 {
                font-size: 2.5rem;
            }
            
            .filter-tabs {
                flex-direction: column;
                align-items: center;
            }
            
            .filter-btn {
                width: 100%;
                max-width: 300px;
                justify-content: center;
            }
            
            .gallery-grid {
                grid-template-columns: 1fr;
                gap: 25px;
            }
            
            .gallery-item {
                height: 280px;
            }
            
            .video-grid {
                grid-template-columns: 1fr;
            }
            
            .testimonial-grid {
                grid-template-columns: 1fr;
            }
            
            .testimonial-section h2,
            .video-section h2 {
                font-size: 2.5rem;
            }
            
            .booking-cta h2 {
                font-size: 2.5rem;
            }
            
            .cta-buttons {
                flex-direction: column;
                align-items: center;
                gap: 15px;
            }
            
            .hero-btn {
                width: 100%;
                max-width: 300px;
                text-align: center;
            }
            
            .lightbox-btn {
                width: 50px;
                height: 50px;
                font-size: 1.2rem;
            }
            
            .lightbox-nav {
                padding: 0 10px;
            }
        }

        @media (max-width: 576px) {
            .page-header .banner-content h1 {
                font-size: 40px;
                letter-spacing: 2px;
            }
            
            .page-header .banner-content p {
                font-size: 16px;
            }
            
            .gallery-intro h2 {
                font-size: 2rem;
            }
            
            .gallery-intro p {
                font-size: 1rem;
            }
            
            .gallery-item {
                height: 250px;
            }
            
            .testimonial-section h2,
            .video-section h2 {
                font-size: 2rem;
            }
            
            .booking-cta h2 {
                font-size: 2.2rem;
            }
            
            .booking-cta p {
                font-size: 1rem;
            }
            
            .gallery-filter {
                padding: 25px;
            }
            
            .filter-btn {
                padding: 12px 24px;
                font-size: 0.9rem;
            }
            
            .testimonial-card {
                padding: 30px 25px;
            }
            
            .lightbox-nav {
                padding: 0 5px;
            }
            
            .lightbox-btn {
                width: 40px;
                height: 40px;
                font-size: 1rem;
            }
            
            .lightbox-close {
                width: 40px;
                height: 40px;
                font-size: 1.5rem;
                top: 10px;
                right: 10px;
            }
            
            .lightbox-info h3 {
                font-size: 1.4rem;
            }
            
            .lightbox-info p {
                font-size: 0.95rem;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!-- Page Header - UPDATED TO MATCH HOME PAGE BANNER -->
    <section class="page-header">
        <div class="banner-content">
            <h1>Our Gallery</h1>
            <p>Explore our portfolio of breathtaking event decorations</p>
        </div>
    </section>
    
    <!-- Gallery Intro -->
    <section class="gallery-intro">
        <div class="container">
            <h2>Visual Journey of Our Work</h2>
            <p>Browse through our collection of beautifully decorated events. Click on any image to view it in full detail and get inspired for your own celebration.</p>
            
            <!-- Gallery Filter -->
            <div class="gallery-filter">
                <div class="filter-tabs">
                    <button class="filter-btn active" data-filter="all">
                        <i class="fas fa-th"></i> All Photos
                    </button>
                    <button class="filter-btn" data-filter="birthday">
                        <i class="fas fa-birthday-cake"></i> Birthday
                    </button>
                    <button class="filter-btn" data-filter="anniversary">
                        <i class="fas fa-heart"></i> Anniversary
                    </button>
                    <button class="filter-btn" data-filter="babyshower">
                        <i class="fas fa-baby"></i> Baby Shower
                    </button>
                    <button class="filter-btn" data-filter="engagement">
                        <i class="fas fa-gem"></i> Engagement
                    </button>
                </div>
            </div>
            
            <!-- Gallery Grid -->
            <div class="gallery-grid" id="galleryContainer">
                <!-- Birthday Photos -->
                <div class="gallery-item" data-category="birthday" data-index="0">
                    <img src="images/download (4).jpg" alt="Princess Birthday Party" class="gallery-img" onerror="this.src='https://images.unsplash.com/photo-1530103862676-de8c9debad1d?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80'">
                    <div class="gallery-overlay">
                        <span class="gallery-category">Birthday</span>
                        <h3>Princess Castle Theme</h3>
                        <p>Magical fairy tale celebration for 5th birthday</p>
                    </div>
                </div>
                
                <div class="gallery-item" data-category="birthday" data-index="1">
                    <img src="images/download (3).jpg" alt="Superhero Birthday Party" class="gallery-img">
                    <div class="gallery-overlay">
                        <span class="gallery-category">Birthday</span>
                        <h3>Superhero Adventure</h3>
                        <p>Action-packed celebration for 8th birthday</p>
                    </div>
                </div>
                
                <!-- Anniversary Photos -->
                <div class="gallery-item" data-category="anniversary" data-index="2">
                    <img src="images/download (8).jpg" alt="Golden Anniversary" class="gallery-img">
                    <div class="gallery-overlay">
                        <span class="gallery-category">Anniversary</span>
                        <h3>Golden Anniversary</h3>
                        <p>50 years of love celebrated in golden elegance</p>
                    </div>
                </div>
                
                <div class="gallery-item" data-category="anniversary" data-index="3">
                    <img src="images/download (6).jpg" alt="Romantic Anniversary Dinner" class="gallery-img">
                    <div class="gallery-overlay">
                        <span class="gallery-category">Anniversary</span>
                        <h3>Romantic Garden Dinner</h3>
                        <p>Intimate celebration for 10th anniversary</p>
                    </div>
                </div>
                
                <!-- Baby Shower Photos -->
                <div class="gallery-item" data-category="babyshower" data-index="4">
                    <img src="images/14.jpg" alt="Woodland Baby Shower" class="gallery-img">
                    <div class="gallery-overlay">
                        <span class="gallery-category">Baby Shower</span>
                        <h3>Woodland Creatures Theme</h3>
                        <p>Nature-inspired baby shower celebration</p>
                    </div>
                </div>
                
                <div class="gallery-item" data-category="babyshower" data-index="5">
                    <img src="images/download (19).jpg" alt="Twinkle Twinkle Baby Shower" class="gallery-img">
                    <div class="gallery-overlay">
                        <span class="gallery-category">Baby Shower</span>
                        <h3>Twinkle Twinkle Theme</h3>
                        <p>Celestial themed baby shower with stars</p>
                    </div>
                </div>
                
                <!-- Engagement Photos -->
                <div class="gallery-item" data-category="engagement" data-index="6">
                    <img src="images/t.jpg" alt="Modern Engagement Party" class="gallery-img">
                    <div class="gallery-overlay">
                        <span class="gallery-category">Engagement</span>
                        <h3>Modern Romance Setup</h3>
                        <p>Contemporary engagement party decor</p>
                    </div>
                </div>
                
                <div class="gallery-item" data-category="engagement" data-index="7">
                    <img src="images/Minimal Engagement Party Decor.jpg" alt="Bohemian Engagement" class="gallery-img">
                    <div class="gallery-overlay">
                        <span class="gallery-category">Engagement</span>
                        <h3>Bohemian Dream Setup</h3>
                        <p>Free-spirited engagement celebration</p>
                    </div>
                </div>
                
                <!-- Additional Birthday Photos -->
                <div class="gallery-item" data-category="birthday" data-index="8">
                    <img src="images/download (2).jpg" alt="Jungle Safari Birthday" class="gallery-img">
                    <div class="gallery-overlay">
                        <span class="gallery-category">Birthday</span>
                        <h3>Jungle Safari Theme</h3>
                        <p>Wild adventure for 3rd birthday celebration</p>
                    </div>
                </div>
                
                <!-- Additional Anniversary Photos -->
                <div class="gallery-item" data-category="anniversary" data-index="9">
                    <img src="images/India's Top Party Supplies & Balloon Decoration Store.jpg" alt="Vintage Anniversary" class="gallery-img">
                    <div class="gallery-overlay">
                        <span class="gallery-category">Anniversary</span>
                        <h3>Vintage Romance Setup</h3>
                        <p>25th anniversary with antique decor</p>
                    </div>
                </div>
                
                <!-- Additional Engagement Photos -->
                <div class="gallery-item" data-category="engagement" data-index="10">
                    <img src="images/download (20).jpg" alt="Traditional Engagement" class="gallery-img">
                    <div class="gallery-overlay">
                        <span class="gallery-category">Engagement</span>
                        <h3>Traditional Engagement Setup</h3>
                        <p>Classic engagement decor with modern touches</p>
                    </div>
                </div>
                
                <!-- Additional Baby Shower Photos -->
                <div class="gallery-item" data-category="babyshower" data-index="11">
                    <img src="images/download (18).jpg" alt="Rainbow Baby Shower" class="gallery-img">
                    <div class="gallery-overlay">
                        <span class="gallery-category">Baby Shower</span>
                        <h3>Rainbow Baby Shower</h3>
                        <p>Colorful celebration with rainbow theme</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Video Gallery -->
    <section class="video-section">
        <div class="container">
            <h2>Event Highlights Videos</h2>
            <div class="video-grid">
                <div class="video-item" data-video="https://www.youtube.com/embed/dQw4w9WgXcQ">
                    <img src="https://images.unsplash.com/photo-1511795409834-ef04bbd61622?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Birthday Decoration Process" class="video-thumbnail">
                    <div class="video-play">
                        <i class="fas fa-play"></i>
                    </div>
                    <div class="video-info">
                        <h3>Princess Birthday Setup</h3>
                        <p>Watch our team create magic</p>
                    </div>
                </div>
                
                <div class="video-item" data-video="https://www.youtube.com/embed/dQw4w9WgXcQ">
                    <img src="https://images.unsplash.com/photo-1530103862676-de8c9debad1d?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Birthday Party Transformation" class="video-thumbnail">
                    <div class="video-play">
                        <i class="fas fa-play"></i>
                    </div>
                    <div class="video-info">
                        <h3>Superhero Party Transformation</h3>
                        <p>Before & after showcase</p>
                    </div>
                </div>
                
                <div class="video-item" data-video="https://www.youtube.com/embed/dQw4w9WgXcQ">
                    <img src="https://images.unsplash.com/photo-1519225421980-715cb0215aed?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Client Testimonials" class="video-thumbnail">
                    <div class="video-play">
                        <i class="fas fa-play"></i>
                    </div>
                    <div class="video-info">
                        <h3>Client Experiences</h3>
                        <p>Hear from our happy clients</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Client Testimonials -->
    <section class="testimonial-section">
        <div class="container">
            <h2>What Our Clients Say</h2>
            <div class="testimonial-grid">
                <div class="testimonial-card">
                    <p class="testimonial-text">"Dream Decor transformed my daughter's birthday party into a fairy tale! Their attention to detail was incredible. All the kids couldn't stop talking about the beautiful decorations."</p>
                    <div class="testimonial-author">
                        <div class="author-image">
                            <img src="https://randomuser.me/api/portraits/women/32.jpg" alt="Sarah Johnson">
                        </div>
                        <div class="author-info">
                            <h4>Sarah Johnson</h4>
                            <p>Birthday Party Client</p>
                        </div>
                    </div>
                </div>
                
                <div class="testimonial-card">
                    <p class="testimonial-text">"Our daughter's princess birthday party was absolutely magical! The team captured her dream perfectly and made the day so special. Highly recommend!"</p>
                    <div class="testimonial-author">
                        <div class="author-image">
                            <img src="https://randomuser.me/api/portraits/men/54.jpg" alt="Michael Chen">
                        </div>
                        <div class="author-info">
                            <h4>Michael Chen</h4>
                            <p>Birthday Party Client</p>
                        </div>
                    </div>
                </div>
                
                <div class="testimonial-card">
                    <p class="testimonial-text">"The baby shower decor was beyond our expectations! The woodland theme was executed perfectly. Thank you for making our special day so memorable."</p>
                    <div class="testimonial-author">
                        <div class="author-image">
                            <img src="https://randomuser.me/api/portraits/women/67.jpg" alt="Priya Sharma">
                        </div>
                        <div class="author-info">
                            <h4>Priya Sharma</h4>
                            <p>Baby Shower Client</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Booking CTA -->
    <section class="booking-cta">
        <div class="container">
            <div class="booking-cta-content">
                <h2>Inspired by Our Work?</h2>
                <p>Let us create similar magic for your special celebration. Contact us today to discuss your vision and get a personalized quote.</p>
                
                <div class="cta-buttons">
                    <a href="BookEvent.aspx" class="hero-btn btn-primary">Book Your Event</a>
                    <a href="Contact.aspx" class="hero-btn btn-secondary">Contact Us</a>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Lightbox -->
    <div class="lightbox" id="lightbox">
        <button class="lightbox-close" id="lightboxClose">
            <i class="fas fa-times"></i>
        </button>
        <div class="lightbox-content">
            <img id="lightboxImage" src="" alt="" class="lightbox-img">
            <div class="lightbox-info">
                <h3 id="lightboxTitle"></h3>
                <p id="lightboxDescription"></p>
            </div>
        </div>
        <div class="lightbox-nav">
            <button class="lightbox-btn" id="prevBtn">
                <i class="fas fa-chevron-left"></i>
            </button>
            <button class="lightbox-btn" id="nextBtn">
                <i class="fas fa-chevron-right"></i>
            </button>
        </div>
    </div>
    
    <!-- Video Modal -->
    <div class="lightbox" id="videoModal">
        <button class="lightbox-close" id="videoClose">
            <i class="fas fa-times"></i>
        </button>
        <div class="lightbox-content">
            <iframe id="videoPlayer" width="800" height="450" frameborder="0" allowfullscreen></iframe>
        </div>
    </div>
    
    <!-- FIXED JAVASCRIPT CODE -->
    <script>
        // COMPLETELY FIXED GALLERY CODE
        document.addEventListener('DOMContentLoaded', function() {
            console.log('Gallery page loaded - initializing...');
            
            // 1. GALLERY FILTERING - FIXED
            const filterButtons = document.querySelectorAll('.filter-btn');
            const galleryItems = document.querySelectorAll('.gallery-item');
            
            console.log('Found filter buttons:', filterButtons.length);
            console.log('Found gallery items:', galleryItems.length);
            
            // Store all gallery items initially
            let allGalleryItems = Array.from(galleryItems);
            
            // Filter function
            function filterGallery(filterValue) {
                console.log('Filtering by:', filterValue);
                
                galleryItems.forEach(item => {
                    const category = item.getAttribute('data-category');
                    
                if (filterValue === 'all' || category === filterValue) {
                    // Show item
                    item.classList.remove('hidden');
                    setTimeout(() => {
                        item.style.opacity = '1';
                    item.style.transform = 'scale(1)';
                }, 10);
            } else {
            // Hide item
                        item.style.opacity = '0';
            item.style.transform = 'scale(0.9)';
            setTimeout(() => {
                item.classList.add('hidden');
        }, 300);
        }
        });
                
        // Update visible items for lightbox
        updateVisibleItems();
        }
            
        // Add click event to filter buttons
        filterButtons.forEach(button => {
            button.addEventListener('click', function(e) {
                e.preventDefault();
                    
                // Remove active class from all buttons
                filterButtons.forEach(btn => {
                    btn.classList.remove('active');
            });
                    
        // Add active class to clicked button
        this.classList.add('active');
                    
                    const filterValue = this.getAttribute('data-filter');
        filterGallery(filterValue);
        });
        });
            
        // 2. LIGHTBOX FUNCTIONALITY - COMPLETELY FIXED
            const lightbox = document.getElementById('lightbox');
            const lightboxImage = document.getElementById('lightboxImage');
            const lightboxTitle = document.getElementById('lightboxTitle');
            const lightboxDescription = document.getElementById('lightboxDescription');
            const lightboxClose = document.getElementById('lightboxClose');
            const prevBtn = document.getElementById('prevBtn');
            const nextBtn = document.getElementById('nextBtn');
            
        let currentIndex = 0;
        let currentVisibleItems = [];
            
        // Function to update visible items for lightbox
        function updateVisibleItems() {
            const activeFilter = document.querySelector('.filter-btn.active').getAttribute('data-filter');
                
            if (activeFilter === 'all') {
                currentVisibleItems = Array.from(galleryItems).filter(item => 
                    !item.classList.contains('hidden')
                );
            } else {
                currentVisibleItems = Array.from(galleryItems).filter(item => 
                    item.getAttribute('data-category') === activeFilter && 
                    !item.classList.contains('hidden')
                );
            }
                
            console.log('Visible items for lightbox:', currentVisibleItems.length);
            return currentVisibleItems;
        }
            
        // Open lightbox when image is clicked
        galleryItems.forEach(item => {
            item.addEventListener('click', function(e) {
                e.preventDefault();
                    
                const clickedIndex = parseInt(this.getAttribute('data-index'));
                console.log('Clicked item index:', clickedIndex);
                    
                // Get current filtered items
                currentVisibleItems = updateVisibleItems();
                    
                // Find clicked item in current visible items
                currentIndex = currentVisibleItems.findIndex(item => 
                    parseInt(item.getAttribute('data-index')) === clickedIndex
                );
                    
                console.log('Found at position:', currentIndex);
                    
                if (currentIndex === -1) {
                    // If not found, reset to all visible items
                    currentVisibleItems = Array.from(galleryItems).filter(item => 
                        !item.classList.contains('hidden')
                    );
                    currentIndex = 0;
                }
                    
                // Update lightbox content
                updateLightbox();
                    
                // Show lightbox
                lightbox.classList.add('active');
                document.body.style.overflow = 'hidden';
            });
        });
            
        // Update lightbox content
        function updateLightbox() {
            if (!currentVisibleItems || currentVisibleItems.length === 0) {
                console.error('No visible items');
                return;
            }
                
            const currentItem = currentVisibleItems[currentIndex];
            if (!currentItem) {
                console.error('Current item not found');
                return;
            }
                
            const imgElement = currentItem.querySelector('.gallery-img');
            const titleElement = currentItem.querySelector('h3');
            const descElement = currentItem.querySelector('p');
                
            if (imgElement && titleElement && descElement) {
                lightboxImage.src = imgElement.src;
                lightboxImage.alt = imgElement.alt;
                lightboxTitle.textContent = titleElement.textContent;
                lightboxDescription.textContent = descElement.textContent;
                    
                console.log('Lightbox updated with:', titleElement.textContent);
            }
        }
            
        // Close lightbox
        lightboxClose.addEventListener('click', function(e) {
            e.stopPropagation();
            lightbox.classList.remove('active');
            document.body.style.overflow = 'auto';
        });
            
        // Previous button - FIXED
        prevBtn.addEventListener('click', function(e) {
            e.stopPropagation();
            e.preventDefault();
                
            if (!currentVisibleItems || currentVisibleItems.length === 0) {
                console.log('No items to navigate');
                return;
            }
                
            currentIndex = (currentIndex - 1 + currentVisibleItems.length) % currentVisibleItems.length;
            console.log('Previous clicked, new index:', currentIndex);
            updateLightbox();
        });
            
        // Next button - FIXED
        nextBtn.addEventListener('click', function(e) {
            e.stopPropagation();
            e.preventDefault();
                
            if (!currentVisibleItems || currentVisibleItems.length === 0) {
                console.log('No items to navigate');
                return;
            }
                
            currentIndex = (currentIndex + 1) % currentVisibleItems.length;
            console.log('Next clicked, new index:', currentIndex);
            updateLightbox();
        });
            
        // Keyboard navigation
        document.addEventListener('keydown', function(e) {
            if (!lightbox.classList.contains('active')) return;
                
            switch(e.key) {
                case 'Escape':
                    lightbox.classList.remove('active');
                    document.body.style.overflow = 'auto';
                    break;
                        
                case 'ArrowLeft':
                    e.preventDefault();
                    if (!currentVisibleItems || currentVisibleItems.length === 0) return;
                    currentIndex = (currentIndex - 1 + currentVisibleItems.length) % currentVisibleItems.length;
                    updateLightbox();
                    break;
                        
                case 'ArrowRight':
                    e.preventDefault();
                    if (!currentVisibleItems || currentVisibleItems.length === 0) return;
                    currentIndex = (currentIndex + 1) % currentVisibleItems.length;
                    updateLightbox();
                    break;
            }
        });
            
        // Close lightbox when clicking outside
        lightbox.addEventListener('click', function(e) {
            if (e.target === lightbox) {
                lightbox.classList.remove('active');
                document.body.style.overflow = 'auto';
            }
        });
            
        // 3. VIDEO MODAL
            const videoModal = document.getElementById('videoModal');
            const videoClose = document.getElementById('videoClose');
            const videoPlayer = document.getElementById('videoPlayer');
            const videoItems = document.querySelectorAll('.video-item');
            
        // Open video modal
        videoItems.forEach(item => {
            item.addEventListener('click', function(e) {
                e.preventDefault();
                    
                const videoUrl = this.getAttribute('data-video');
                console.log('Video clicked, URL:', videoUrl);
                    
                if (videoUrl) {
                    videoPlayer.src = videoUrl + '?autoplay=1';
                    videoModal.classList.add('active');
                    document.body.style.overflow = 'hidden';
                }
            });
        });
            
        // Close video modal
        videoClose.addEventListener('click', function(e) {
            e.stopPropagation();
            videoModal.classList.remove('active');
            videoPlayer.src = '';
            document.body.style.overflow = 'auto';
        });
            
        videoModal.addEventListener('click', function(e) {
            if (e.target === videoModal) {
                videoModal.classList.remove('active');
                videoPlayer.src = '';
                document.body.style.overflow = 'auto';
            }
        });
            
        // Initialize
        updateVisibleItems();
            
        // Add entry animations
        setTimeout(() => {
            galleryItems.forEach((item, index) => {
                item.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
        item.style.opacity = '0';
        item.style.transform = 'translateY(30px)';
                    
        setTimeout(() => {
            item.style.opacity = '1';
        item.style.transform = 'translateY(0)';
        }, index * 50);
        });
        }, 500);
            
        console.log('Gallery initialization complete');
        });
    </script>
</asp:Content>