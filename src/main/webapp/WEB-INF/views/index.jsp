<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRM APPLICATION</title>
    
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Custom CSS -->
   <link rel="stylesheet" href="<c:url value='/css/style.css' />">
   <script src="https://cdn.tailwindcss.com"></script>
   
   <!-- Additional Custom Styles for Enhanced UI -->
   <style>
       /* Professional Shadows and Hover Effects */
       .main_page_banner {
           /* Amazing CRM-related background: Gradient overlay representing data connections and business growth (blue for trust/professionalism, green for growth/success) */
           background: linear-gradient(135deg, rgba(0, 123, 255, 0.7), rgba(40, 167, 69, 0.7)), url('/images/back.png');
           background-size: cover;
           background-position: center;
           background-repeat: no-repeat;
           box-shadow: inset 0 0 100px rgba(0, 0, 0, 0.3);
           transition: all 0.3s ease;
           position: relative;
       }
       .main_page_banner::before {
           content: '';
           position: absolute;
           top: 0;
           left: 0;
           right: 0;
           bottom: 0;
           background: radial-gradient(circle at 30% 70%, rgba(255, 255, 255, 0.1) 0%, transparent 50%), 
                       radial-gradient(circle at 70% 30%, rgba(255, 255, 255, 0.1) 0%, transparent 50%);
           pointer-events: none;
       }
       .main_page_banner:hover {
           box-shadow: inset 0 0 150px rgba(0, 0, 0, 0.5);
       }
       .main_page_banner:hover::before {
           opacity: 0.8;
       }
       .main_page_title {
           font-size: 1.5rem;
           font-weight: 500;
           color: #ffffff;
           text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
           transition: transform 0.3s ease, text-shadow 0.3s ease;
           position: relative;
           z-index: 1;
       }
       .main_page_title:hover {
           transform: scale(1.02);
           text-shadow: 4px 4px 8px rgba(0, 0, 0, 0.9);
       }
       .crm-logo {
           box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
           transition: transform 0.3s ease, box-shadow 0.3s ease;
           position: relative;
           z-index: 1;
       }
       .crm-logo:hover {
           transform: scale(1.05);
           box-shadow: 0 15px 40px rgba(0, 0, 0, 0.4);
       }
       .feature-card {
           background: linear-gradient(135deg, #f8f9fa, #e9ecef);
           border: none;
           border-radius: 15px;
           box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
           transition: transform 0.3s ease, box-shadow 0.3s ease;
       }
       .feature-card:hover {
           transform: translateY(-10px);
           box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
       }
       .feature-list li {
           background: #ffffff;
           margin-bottom: 10px;
           padding: 15px;
           border-radius: 10px;
           box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
           transition: transform 0.3s ease, box-shadow 0.3s ease;
       }
       .feature-list li:hover {
           transform: translateX(10px);
           box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
       }
       .section-title {
           font-weight: 700;
           color: #343a40;
           text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
       }
   </style>
   
</head>
<body class="bg-light" style="display: table; width: 100%">
    <!-- Header Section -->
    
        <!--  add Header  -->
     <jsp:include page="header_crm.jsp" />
    <%--  </jsp:include> --%>
    
   

    <!-- Banner Section -->
    <div class="container-fluid main_page_banner py-5 p-10">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-8">
                
                    <span class="main_page_title">
                        CRM stands for Customer Relationship Management. CRM Software is designed to help businesses offer an impeccable customer experience, from the first prospect interaction to deal closure and beyond.
                    </span>
                </div>
               <div class="flex justify-end items-center pr-8">
  <div class="rounded-full transition-transform duration-300 hover:scale-105 hover:shadow-xl">
    <img 
      src="https://img.freepik.com/premium-vector/crm-logo-crm-letter-crm-letter-logo-design-initials-crm-logo-linked-with-circle-uppercase-monogram-logo-crm-typography-technology-business-real-estate-brand_229120-56120.jpg"
      alt="CRM Logo"
      class="w-64 max-h-64 object-contain rounded-full"
    />
  </div>
</div>

            </div>
        </div>
    </div>

    <!-- CRM Features Section -->
    
    <div class="container py-5">
        <div class="row">
            <div class="col-md-6">
                <h3 class="section-title mb-4">What does a CRM system do?</h3>
                <ul class="feature-list list-unstyled">
                    <li>Stores all customer data in one place: contact info, purchase history, communication records, and social media interactions.</li>
                    <li>Reduces repetitive tasks like sending follow-up emails, scheduling calls, or updating records.</li>
                    <li>Helps segment customers based on behavior, preferences, or demographics.</li>
                    <li>Tracks leads, opportunities, and sales pipelines to improve sales efficiency.</li>
                    <li>Automates marketing campaigns for personalized customer engagement.</li>
                    <li>Manages customer support tickets to enhance service quality.</li>
                    <li>Provides analytics and reports for data-driven business decisions.</li>
                    <li>Facilitates collaboration between sales, marketing, and support teams.</li>
                </ul>
            </div>
            <div class="col-md-6 d-flex align-items-center justify-content-center">
                <div class="feature-card p-4 text-center">
                    <h5 class="text-primary">Explore CRM Features</h5>
                    <p class="text-muted">Discover how CRM can transform your business operations.</p>
                    <!-- Optional placeholder for illustration -->
                    <div class="mt-3">
                        <svg width="100" height="100" viewBox="0 0 100 100" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <circle cx="50" cy="50" r="40" fill="#007bff" opacity="0.1"/>
                            <path d="M30 50 L45 65 L70 40" stroke="#007bff" stroke-width="4" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>