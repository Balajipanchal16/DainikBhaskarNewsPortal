/**
 * 
 */
   window.onload = () => {
	let mesg = document.getElementById("mesgAboutCategory");
	if(mesg) {
		setTimeout(() => {
			mesg.style.display = "none";
		}, 4000);
	}
};