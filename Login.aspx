<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="b.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Login - Dream Decor</title>
    <!-- Home page fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    
    <style>
        /* ===== HOME PAGE CSS VARIABLES ===== */
        :root {
            --teal-primary: #6F8F9A;      /* Main button color */
            --teal-dark: #5A7A84;         /* Hover state for teal */
            --teal-darker: #4A656E;       /* Active/click state for teal */
            --gold-primary: #D4A373;       /* GOLDEN for hover/active states */
            --gold-dark: #B88D5E;          /* Darker gold for active */
            --charcoal: #2C3E4F;           /* Dark headings */
            --pure-white: #FFFFFF;          /* White */
            --light-gray: #f4f4f4;          /* Page background */
            --card-bg: #ffffff;              /* Card background */
            --text-dark: #2b3b41;           /* Body text */
            --text-light: #555;              /* Lighter text */
            --text-muted: #666;              /* Muted text */
            --border-light: #ecf3f5;         /* Light border */
            --pure-black: #000000;            /* Pure black for headings */
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: var(--light-gray);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
            padding: 20px;
        }

        /* ===== EXACT SAME BOX SIZE & SHAPE AS REGISTER PAGE ===== */
        .container {
            width: 450px;  /* Same width */
            background: linear-gradient(135deg, #ffffff 62%, #dde7e2 38%);  /* Same gradient */
            border-radius: 12px;  /* Same border radius */
            padding: 34px;  /* Same padding */
            box-shadow: 0 14px 35px rgba(0,0,0,0.18);  /* Same shadow */
            animation: popup 0.45s ease;
            border: 1px solid rgba(210, 225, 230, 0.6);  /* Same border */
        }

        @keyframes popup {
            from { transform: scale(0.92); opacity: 0; }
            to { transform: scale(1); opacity: 1; }
        }

        /* ===== HOME PAGE TYPOGRAPHY - BLACK TEXT LIKE REGISTER ===== */
        h2 {
            text-align: center;
            color: #000000;  /* PURE BLACK like register page */
            margin-bottom: 28px;
            letter-spacing: 2px;
            font-size: 26px;  /* Same size */
            font-weight: 800;  /* Extra bold like home page */
            font-family: 'Playfair Display', serif;  /* Home page heading font */
            position: relative;
            padding-bottom: 12px;
        }

        /* Underline like register page */
        h2:after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 70px;
            height: 3px;
            background: var(--teal-primary);
            border-radius: 10px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        /* ===== LABEL STYLES - HOME PAGE COLORS ===== */
        label {
            display: block;
            font-size: 14px;
            font-weight: 600;
            color: var(--charcoal);  /* #2C3E4F - home page heading color */
            letter-spacing: 0.5px;
            font-family: 'Poppins', sans-serif;  /* Home page body font */
            margin-bottom: 5px;
        }

        /* ===== TEXTBOX STYLES - Same as register page ===== */
        .textbox {
            width: 100%;
            padding: 12px 6px;
            border: none;
            border-bottom: 2px solid #c7c7c7;
            background: transparent;
            outline: none;
            font-size: 14px;
            transition: 0.3s;
            font-family: 'Poppins', sans-serif;
            color: var(--text-dark);
        }

        .textbox:focus {
            border-bottom: 2px solid var(--teal-primary);  /* Teal color on focus */
        }

        .textbox::placeholder {
            color: #a0b4bb;
            font-weight: 300;
        }

        /* ===== BUTTON STYLES - HOME PAGE COLORS ===== */
        .button {
            width: 100%;
            background: var(--teal-primary);  /* #6F8F9A - home page button color */
            color: var(--pure-white);
            border: none;
            padding: 14px;
            margin-top: 15px;
            font-size: 15px;
            font-weight: 600;  /* Home page button weight */
            letter-spacing: 2px;  /* Home page letter spacing */
            text-transform: uppercase;
            cursor: pointer;
            border-radius: 60px;  /* Pill shape like home page */
            box-shadow: 0 7px 18px rgba(111, 143, 154, 0.2);
            transition: all 0.3s ease;
            border: 1px solid rgba(255, 255, 255, 0.5);
            font-family: 'Poppins', sans-serif;
            position: relative;
            overflow: hidden;
        }

        /* Shine effect - like home page */
        .button::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.3), transparent);
            transition: left 0.5s ease;
            z-index: 1;
        }

        .button:hover {
            background: var(--gold-primary);  /* #D4A373 - gold on hover */
            color: var(--pure-white);
            transform: translateY(-3px);
            box-shadow: 0 12px 25px rgba(44, 62, 79, 0.3);
            border-color: rgba(255, 255, 255, 0.8);
        }

        .button:hover::before {
            left: 100%;
        }

        .button:active {
            transform: scale(0.95);
            background: var(--gold-dark);  /* #B88D5E - dark gold on click */
        }

        /* ===== CHECKBOX GROUP STYLES ===== */
        .checkbox-group {
            margin-bottom: 15px;
            font-size: 14px;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .checkbox-group input[type="checkbox"] {
            width: 18px;
            height: 18px;
            accent-color: var(--teal-primary);  /* Teal checkbox */
            cursor: pointer;
        }

        .checkbox-group label {
            display: inline;
            margin: 0;
            color: var(--text-light);
            font-weight: 400;
            cursor: pointer;
        }

        /* ===== ERROR STYLES - Same as register page ===== */
        .error, .danger {
            display: block;
            margin-top: 6px;
            font-size: 12.5px;
            font-weight: 600;
            color: #a61d24;
            background: #f8d7da;
            padding: 6px 10px;
            border-radius: 6px;
            animation: shake 0.3s ease;
            font-family: 'Poppins', sans-serif;
        }

        .success {
            display: block;
            margin-top: 6px;
            font-size: 12.5px;
            font-weight: 600;
            color: #0f5132;
            background: #d1e7dd;
            padding: 6px 10px;
            border-radius: 6px;
            font-family: 'Poppins', sans-serif;
        }

        @keyframes shake {
            0% { transform: translateX(0); }
            25% { transform: translateX(-3px); }
            50% { transform: translateX(3px); }
            75% { transform: translateX(-2px); }
            100% { transform: translateX(0); }
        }

        /* ===== MESSAGE STYLES ===== */
        .message {
            text-align: center;
            padding: 10px;
            margin-bottom: 18px;
            border-radius: 6px;
            font-size: 14px;
            font-weight: 600;
            font-family: 'Poppins', sans-serif;
        }

        /* ===== REGISTER LINK STYLES - HOME PAGE COLORS ===== */
        .register-link {
            text-align: center;
            margin-top: 22px;
            font-size: 14px;
            font-weight: 600;
        }

        .register-link p {
            font-size: 14px;
            font-weight: 400;
            color: var(--text-light);  /* #555 - home page text color */
            font-family: 'Poppins', sans-serif;
        }

        .register-link a {
            color: var(--teal-primary);  /* #6F8F9A - home page link color */
            font-weight: 700;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .register-link a:hover {
            color: var(--gold-primary);  /* #D4A373 - gold on hover */
            text-decoration: underline;
        }

        /* ===== RESPONSIVE ===== */
        @media (max-width: 500px) {
            .container {
                width: 90%;
                padding: 25px;
            }
            
            h2 {
                font-size: 24px;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>User Login</h2>
            
            <asp:Label ID="lblMessage" runat="server" CssClass="message" Visible="false"></asp:Label>
            
            <div class="form-group">
                <asp:Label ID="lblUsername" runat="server" Text="Username or Email:" AssociatedControlID="txtUsername"></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="textbox" placeholder="Enter username or email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" 
                    ControlToValidate="txtUsername" ErrorMessage="Username/Email is required" 
                    CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            
            <div class="form-group">
                <asp:Label ID="lblPassword" runat="server" Text="Password:" AssociatedControlID="txtPassword"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="textbox" TextMode="Password" placeholder="Enter password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="Password is required" 
                    CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            
            <div class="form-group">
                <div class="checkbox-group">
                    <asp:CheckBox ID="chkRemember" runat="server" />
                    <asp:Label ID="lblRemember" runat="server" Text="Remember me" AssociatedControlID="chkRemember"></asp:Label>
                </div>
            </div>
            
            <div class="form-group">
                <asp:Button ID="btnLogin" runat="server" Text="Login" 
                    CssClass="button" OnClick="btnLogin_Click" />
            </div>
            
            <div class="register-link">
                <p>Don't have an account? <a href="Register.aspx">Register here</a></p>
            </div>
        </div>
    </form>
</body>
</html>