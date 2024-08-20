/**
 * 
 */

/*document.addEventListener("DOMContentLoaded", function() {
    const links = document.querySelectorAll('.sidebar a');
    const contentArea = document.querySelector('.content');

    links.forEach(link => {
        link.addEventListener('click', function(event) {
            event.preventDefault();
            contentArea.innerHTML = `<li>This is the content for ${this.textContent}.</li>`;
        });
    });
});*/

 	window.onload = () =>{
	let mesg = document.getElementById("msgres");
	if(mesg)
	{
		mesg.style.color ="green";
		setTimeout(()=>{
			mesg.style.display = "none";
		},4000);
	}
 };
 
/* 
 document.querySelectorAll('.category-link').forEach(link =>{
	link.addEventListener('click',function(event){
		event.preventDefault();
		let categoryId = this.addAttribute('data-category-id');
		fetch(`/News/${categoryId}`)
		.then(response =>response.json())
		.then(data =>{
			let newsContainer = document.getElementById('news-container');
			newsContainer.innerHTML = '';
			data.forEach(news =>{
				let newsItem = document.createElement('div');
				newsItem.classList.add('new-item');
				newsItem.innerHTML = `<h2>${news.title}</h2>`
				newsContainer.appendChild(newsItem);
			});
		}).catch(error => console.error('Error fetching news: ',error));
	});
 });*/
 
 const getNewsBycategoryId = (event) =>{
	event.preventDefault();
		let categoryId = this.addAttribute('data-category-id');
		fetch(`/News/${categoryId}`)
		.then(response =>response.json())
		.then(data =>{
			let newsContainer = document.getElementById('news-container');
			newsContainer.innerHTML = '';
			data.forEach(news =>{
				let newsItem = document.createElement('div');
				newsItem.classList.add('new-item');
				newsItem.innerHTML = `<h2>${news.title}</h2>`
				newsContainer.appendChild(newsItem);
			});
		}).catch(error => console.error('Error fetching news: ',error));
 };
	