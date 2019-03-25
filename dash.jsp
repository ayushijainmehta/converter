<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

.flip-card {
margin-left:30px;
margin-top:100px;
  background-color: transparent;
  width: 400px;
  height: 400px;
  perspective: 1000px;
  float:left;
padding:50px;
}

.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.6s;
  transform-style: preserve-3d;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}

.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  backface-visibility: hidden;
}

.flip-card-front {
  background-color: #bbb;
  color: black;
  z-index: 2;
}

.flip-card-back {
  background-color: #2980b9;
  color: white;
  transform: rotateY(180deg);
  z-index: 1;
}
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}

body, html {
  height: 100%;
  line-height: 1.8;
}

/* Full height image header */
.bgimg-1 {
  background-position: center;
  background-size: cover;
   min-height: 100%;
  }

.w3-bar .w3-button {
  padding: 16px;
}
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: #474e5d;
  padding-top: 50px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* Style the horizontal ruler */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
 
/* The Close Button (x) */
.close {
  position: absolute;
  right: 35px;
  top: 15px;
  font-size: 40px;
  font-weight: bold;
  color: #f1f1f1;
}

.close:hover,
.close:focus {
  color: #f44336;
  cursor: pointer;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

/* Add a background color when the inputs get focus */
input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}
</style>
</head>
<body>
<div class="w3-top">
  <div class="w3-bar w3-white w3-card" id="myNavbar">
    <a href="#home" class="w3-bar-item w3-button w3-wide">LOGO</a>
    <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small">
     <div class="w3-dropdown-hover">
<a href="#" class="w3-bar-item w3-button">${name}</a>
    <br><br>
    <div class="w3-dropdown-content w3-bar-block w3-border">
      <a href="#" class="w3-bar-item w3-button">Profile </a>
      <a href="#" class="w3-bar-item w3-button">Submissions</a>
      <a href="#" class="w3-bar-item w3-button">LOG OUT</a>
       </div>
  </div>
      <a href="/" class="w3-bar-item w3-button">HOME</a>
      <a href="#about" class="w3-bar-item w3-button">ABOUT</a>
       <a href="#contact" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i> CONTACT</a>
      
    </div>
    <!-- Hide right-floated links on small screens and replace them with a menu icon -->

    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
      <i class="fa fa-bars"></i>
    </a>
  </div>
</div>
<!-- Sidebar on small screens when clicking the menu icon -->
<nav class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large" style="display:none" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a>
  <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button">HOME</a>
  <a href="#team" onclick="w3_close()" class="w3-bar-item w3-button">ABOUT</a>
  <a href="#work" onclick="w3_close()" class="w3-bar-item w3-button">CONTACT</a>
  
     <div class="w3-dropdown-hover">
<a href="#" class="w3-bar-item w3-button">${name}</a>
    <br><br>
    <div class="w3-dropdown-content w3-bar-block w3-border">
      <a href="#" class="w3-bar-item w3-button">Profile </a>
      <a href="#" class="w3-bar-item w3-button">Submissions</a>
      <a href="#" class="w3-bar-item w3-button">LOG OUT</a>
       </div>
  </div>
 
  </nav>
<script>
// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}


// Toggle between showing and hiding the sidebar when clicking the menu icon
var mySidebar = document.getElementById("mySidebar");

function w3_open() {
  if (mySidebar.style.display === 'block') {
    mySidebar.style.display = 'none';
  } else {
    mySidebar.style.display = 'block';
  }
}

// Close the sidebar with the close button
function w3_close() {
    mySidebar.style.display = "none";
}
</script>
<div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="https://github.com/ayushijainmehta/spring_practice/blob/master/text.png?raw=true" alt="Avatar" style="width:300px;height:300px;">
    </div>
    
    <div class="flip-card-back" >
    <br><br>
    <a href="#" onclick="document.getElementById('id01').style.display='block'"> 
  <h1>Convert to text file</h1> </a>
     </div>
     </a>
  </div>
</div>
<div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="https://github.com/ayushijainmehta/spring_practice/blob/master/properties.png?raw=true" alt="Avatar" style="width:300px;height:300px;">
    </div>
    <div class="flip-card-back">
       <br><br>
        <a href="#" onclick="document.getElementById('id02').style.display='block'">  
      <h1>Convert to configuration file</h1> 
      </a>
  
   </div>
  </div>
</div>
<div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="https://github.com/ayushijainmehta/spring_practice/blob/master/excel.png?raw=true" alt="Avatar" style="width:300px;height:300px;">
    </div>
    <div class="flip-card-back">
       <br><br>
       <a href="#" onclick="document.getElementById('id03').style.display='block'"> 
      <h1>Convert to excel file</h1> 
      </a>
    </div>
  </div>
</div>
<div id="id01" class="modal">
  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" action="/action_page.php">
    <div class="container">
      <h1>Choose File Format</h1>
       <div class="w3-dropdown-hover">
    <button class="w3-button w3-grey">Choose format which need to be converted to Text File</button>
    <div class="w3-dropdown-content w3-bar-block w3-border">
      <a href="#" class="w3-bar-item w3-button">Excel File </a>
      <a href="#" class="w3-bar-item w3-button">Properties File</a>
       </div>
  </div>
  </div>
  </form>
</div>
<div id="id02" class="modal">
  <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" action="/action_page.php">
    <div class="container">
      <h1>Choose File Format</h1>
       <div class="w3-dropdown-hover">
    <button class="w3-button w3-grey">Choose format which need to be converted to Properties File</button>
    <div class="w3-dropdown-content w3-bar-block w3-border">
      <a href="#" class="w3-bar-item w3-button">Text File </a>
      <a href="#" class="w3-bar-item w3-button">Excel File</a>
       </div>
  </div>
</div>
  </form>
</div>
<div id="id03" class="modal">
  <span onclick="document.getElementById('id03).style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" action="/action_page.php">
    <div class="container">
      <h1>Choose File Format</h1>
       <div class="w3-dropdown-hover">
    <button class="w3-button w3-black">Choose format which need to be converted to Excel File</button>
    <div class="w3-dropdown-content w3-bar-grey w3-border">
      <a href="#" class="w3-bar-item w3-button" onclick="document.getElementById('id04').style.display='block'">Text File </a>
      <a href="#" class="w3-bar-item w3-button">Properties File</a>
       </div>
  </div>
</div>
  </form>
</div>
<div id="id04" class="modal">
  <span onclick="document.getElementById('id04').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" action="/process" method="post">
    <div class="container">
      <h1>Enter details</h1>
    
      <hr>
      <label for="width"><b>Enter Width</b></label>
      <input type="text" placeholder="Enter width of each column" name="width" required>

      <label for="separator"><b>Enter Separator</b></label>
      <input type="text" placeholder="Enter Separator" name="separator" required>
      <div class="clearfix">
      <button type="submit" class="signupbtn">Start Converting</button>
      </div>
    </div>
  </form>
</div>
<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>
</body>
</html>
