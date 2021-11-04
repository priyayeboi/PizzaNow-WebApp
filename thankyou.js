function thankYoufeed(){
	let star = document.forms["feedback"]["star"].value;
	let typeFeed = document.forms["feedback"]["typeFeed"].value;
	let comments = document.forms["feedback"]["comments"].value;
	if (star != "" && typeFeed !="" && comments != "") {
    alert("Thank you for your feedback!");
    return false;
  } else{
  	alert("Please complete form");
  }

};
	

function thankYouOrder(){
alert('Thank you for your purchase! \n Hope to see you soon!');
};

function updated(){
	alert('Your details have been updated!');
};

function buyItem(){
	alert('Item added to cart!');
};

function remove(){
	alert('Item has been removed!');
};