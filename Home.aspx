<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication3.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Team Page</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            overflow-x: hidden; /* Hide horizontal scrollbar */
        }

        .carousel-container {
            width: 100%; /* Full width */
            height: 400px; /* Specific height for carousel */
            overflow: hidden; /* Hides overflowing content */
            position: relative; /* Establishes positioning context for absolute positioning */
        }

        .carousel {
            display: flex; /* Enables flexbox layout */
            transition: transform 0.5s ease; /* Smooth transition for sliding effect */
        }

        .carousel img {
            width: 100%; /* Ensures images resize proportionally */
            max-width: 100%; /* Limit maximum width to prevent overflow */
            max-height: 400px; /* Limit maximum height to prevent overflow */
            object-fit: fill; /* Ensure entire image is contained within its box */
            flex: 0 0 100%; /* Ensures images do not grow or shrink within the flex container */
        }

        .right {
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding-left: 20px;
            overflow-y: auto;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .team-section {
            padding: 20px; /* Add padding for better spacing */
        }

        .team-section p {
            font-size: 18px;
            line-height: 1.6;
            color: #333; /* Darker text color for better readability */
            margin-bottom: 20px;
        }

        .team-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr); /* Six columns for six team members */
            gap: 20px;
            padding: 20px; /* Add padding for better spacing */
        }

        .team-member {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-bottom: 20px;
            background-color: #eaf4f0; /* Light greenish background */
            padding: 10px;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .team-member h2 {
            font-size: 18px;
            font-weight: bold;
            margin: 10px 0;
            color: #2e8b57; /* Dark green color */
        }

        .team-member img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-top: 10px;
            border: 3px solid #2e8b57; /* Dark green border */
        }

        .team-member p {
            font-size: 16px;
            margin: 5px 0 0 0;
            color: #555; /* Slightly lighter text color */
        }

        .right::-webkit-scrollbar {
            width: 8px;
        }

        .right::-webkit-scrollbar-thumb {
            background-color: darkgrey;
            border-radius: 4px;
        }

        .marquee-container {
            display: flex;
            align-items: center;
            background-color: #004e42;
            height: 60px; /* Adjust height as needed */
            padding: 0 10px;
        }

        .marquee-container img {
            height: 40px; /* Adjust the height of the logo as needed */
            margin-right: 20px; /* Space between the logo and the marquee */
        }

        .marquee {
            flex: 1;
            color: #fff;
            font-weight: bold;
            font-size: 18px;
            display: flex;
            align-items: center;
        }

        .marquee a {
            color: #fff;
            text-decoration: none;
        }

        .marquee a:hover {
            text-decoration: underline;
        }
    </style>
    <script type="text/javascript">
        document.addEventListener('DOMContentLoaded', function () {
            let currentIndex = 0;
            const carousel = document.querySelector('.carousel');

            if (carousel) {
                const images = carousel.querySelectorAll('img');
                const totalImages = images.length;

                function nextSlide() {
                    currentIndex = (currentIndex + 1) % totalImages;
                    updateSlide();
                }

                function updateSlide() {
                    const offset = -currentIndex * 100;
                    carousel.style.transform = `translateX(${offset}%)`;
                }

                setInterval(nextSlide, 3000); // Automatic sliding every 3 seconds
            } else {
                console.error('Carousel element not found.');
            }
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="marquee-container">
            <img src="Images/ncratleos-logo.png" alt="Company Logo" /> <!-- Replace with your logo path -->
            <div class="marquee">
                <marquee behavior="alternate" scrollamount="9" onmouseover="this.stop();" onmouseout="this.start();">
                    <a href="https://www.ncratleos.com/" target="_blank">OpsDeploymentWizard!</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="https://www.ncratleos.com/" target="_blank">OpsDeploymentWizard!!</a>
                </marquee>
            </div>
        </div>

        <div class="carousel-container">
            <div class="carousel">
                <img src="Images/Logo.png" alt="Image 1" />
                <img src="Images/Standard-DevOps-CICD.png" alt="Image 2" />
                <img src="Images/Go-CD.png" alt="Image 3" />
				<img src="Images/testing_pipeline.png" alt="Image 4" />
                <!-- Repeat images as needed -->
            </div>
        </div>

        <div class="team-section">
            <p>Welcome to our team page! We are a group of dedicated professionals committed to excellence and innovation. Meet our team members below and learn more about their roles and expertise.</p>

            <div class="team-grid">
                <div class="team-member">
                    <img src="Images/Venkatesh.jpg" alt="Team Member 1" />
                    <h2>Varun Bhandari</h2>
                    <p>Designation 1</p>
                </div>
                <div class="team-member">
                    <img src="Images/NoImages.gif" alt="Team Member 2" />
                    <h2>Balakrishna Veruva</h2>
                    <p>Designation 2</p>
                </div>
                <div class="team-member">
                    <img src="Images/NoImages.gif" alt="Team Member 3" />
                    <h2>Manu K K</h2>
                    <p>Designation 3</p>
                </div>
                <div class="team-member">
                    <img src="Images/NoImages.gif" alt="Team Member 4" />
                    <h2>Roshan Pathan</h2>
                    <p>Designation 4</p>
                </div>
                <div class="team-member">
                    <img src="Images/NoImages.gif" alt="Team Member 5" />
                    <h2>Evita Desouza</h2>
                    <p>Designation 5</p>
                </div>
                <div class="team-member">
                    <img src="Images/NoImages.gif" alt="Team Member 6" />
                    <h2>Jnanesh Kumar</h2>
                    <p>Designation 6</p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
