#!/bin/sh
read -p 'Title For The Webpage: ' vartitle
read -p 'Design template (1-2): ' vardesign
rm -f -r index.html
export design1="
html {
	text-align:center;
}
body h1 {
	font-size:35px;
}
h1,h2,h3,h4,h5 {
	font-weight:600;
}
.container {
	width:70%;
	margin:auto;
	margin-bottom:15px;
	marigin-top:15px;
	background-color:rgba(0,0,0,0.09);
	box-shadow: 5px 8px lightgray;
	padding:5%;
	display: block;
}
.container h2 {
	font-weight:700;
	font-size:30px;
	padding:8px;
	margin:5px;
}
.container p {
    font-weight:500;
    font-size:22px;
    line-spacing:4px;
}    
"
export body1="
	     <div class="container">
	     	<h2>CHANGE THIS</h2>
	     	<p>Example paragraph, please change this to your own needs. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur facilisis, purus vel viverra consectetur, lorem elit maximus mi, eget egestas nibh arcu at libero. Integer sit amet tincidunt mi. Duis varius dapibus pharetra. Suspendisse ut lobortis eros, sit amet auctor neque. Curabitur a tellus ac odio euismod sollicitudin in id est. Duis nisl lorem, rutrum non massa et, feugiat molestie erat. Nulla tincidunt mauris non ipsum aliquet efficitur. Nunc interdum mattis faucibus. Proin accumsan pharetra ultrices. </p>
	     </div>
	    <div class="container">
	     	<h2>CHANGE THIS</h2>
	     	<p>Example paragraph, please change this to your own needs. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur facilisis, purus vel viverra consectetur, lorem elit maximus mi, eget egestas nibh arcu at libero. Integer sit amet tincidunt mi. Duis varius dapibus pharetra. Suspendisse ut lobortis eros, sit amet auctor neque. Curabitur a tellus ac odio euismod sollicitudin in id est. Duis nisl lorem, rutrum non massa et, feugiat molestie erat. Nulla tincidunt mauris non ipsum aliquet efficitur. Nunc interdum mattis faucibus. Proin accumsan pharetra ultrices. </p>
	     </div>
	     <div class="container">
	     	<h2>CHANGE THIS</h2>
	     	<p>Example paragraph, please change this to your own needs. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur facilisis, purus vel viverra consectetur, lorem elit maximus mi, eget egestas nibh arcu at libero. Integer sit amet tincidunt mi. Duis varius dapibus pharetra. Suspendisse ut lobortis eros, sit amet auctor neque. Curabitur a tellus ac odio euismod sollicitudin in id est. Duis nisl lorem, rutrum non massa et, feugiat molestie erat. Nulla tincidunt mauris non ipsum aliquet efficitur. Nunc interdum mattis faucibus. Proin accumsan pharetra ultrices. </p>
	     </div>
	     <div class="container">
	     	<h2>CHANGE THIS</h2>
	     	<p>Example paragraph, please change this to your own needs. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur facilisis, purus vel viverra consectetur, lorem elit maximus mi, eget egestas nibh arcu at libero. Integer sit amet tincidunt mi. Duis varius dapibus pharetra. Suspendisse ut lobortis eros, sit amet auctor neque. Curabitur a tellus ac odio euismod sollicitudin in id est. Duis nisl lorem, rutrum non massa et, feugiat molestie erat. Nulla tincidunt mauris non ipsum aliquet efficitur. Nunc interdum mattis faucibus. Proin accumsan pharetra ultrices. </p>
	     </div>
"
if [ "$vardesign" = "1" ]; then
	export design=$design1
	export body=$body1
else
	export design="DESIGN HERE"
	export body="<h3>Choose design template 1 for design & body template</h3>"
fi;
echo "
<html>
	<head>
		<title>$vartitle</title>
		<style>
			$design
        </style>
	</head>
	<body>
	     <h1>$vartitle</h1>
	     $body
	</body>
</html>
" >> index.html

