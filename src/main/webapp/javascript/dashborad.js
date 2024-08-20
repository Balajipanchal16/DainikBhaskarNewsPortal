/**
 * 
 */
document.addEventListener("DOMContentLoaded", function() {
    const links = document.querySelectorAll('.sidebar a');
    const contentArea = document.querySelector('.content');

    links.forEach(link => {
        link.addEventListener('click', function(event) {
            event.preventDefault();
            contentArea.innerHTML = `<h1>${this.textContent} Content</h1><p>This is the content for ${this.textContent}.</p>`;
        });
    });
});

 window.onload = () => {
		let mesg2 = document.getElementById("mesgAboutCategory");
		if(mesg2)
		{
			setTimeout(()=>{
				mesg2.style.display = "none";
			},4000);
		}
};
console.log("connected");
