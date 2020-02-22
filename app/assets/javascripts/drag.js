// var elements = document.getElementById('#card');
// var x;
// var y;
// var moving = false;



// jQuery(function($){
//   var catElement=document.getElementById('card');
  
//   catElement.addEventListener("mousedown", function (e) {
//     moving = true;
//     x = e.pageX - this.offsetLeft;
//     y = e.pageY - this.offsetTop;
//   }, false);
// });
// window.addEventListener("mousemove", function (e) {
//   var catElement=document.getElementById('card');
//   if (moving == false) return
//   catElement.style.top = e.pageY - y + "px";
//   catElement.style.left = e.pageX - x + "px";
// }, false);

// jQuery(function($){
//   var catElement=document.getElementById('card');
//   catElement.addEventListener("mouseup", function () {
//     moving = false;
//   }, false);
// });


// jQuery(function($){
//   const card = document.querySelector('.card');
//   const area = document.querySelector('.list');
//   // const result = $('.list').nextAll();
//   card.addEventListener('dragstart', () => {
//     console.log('ドラッグスタート');
//   });

//   card.addEventListener('drag', () => {
//     card.style.display = `none`;
//     console.log('ドラッグ中');
//   });

//   card.addEventListener('dragend', () => {
//     card.style.display = `flex`; 
//     console.log('終了');
//   });

//   area.addEventListener('dragenter', () => {
//     console.log('comeon');
//   });

//   area.addEventListener('dragover', () => {
//     event.preventDefault();
//   }, false);

//   area.addEventListener('drop', () => {
//     $().siblings('.list').append(card);
//     area.appendChild(card);
//     console.log('drop');
//   });
// });

// window.onload = ()=> {

//   const card = document.querySelector('.card');
//   const area = document.querySelector('.list');
//   card.addEventListener('dragstart', () => {
//     console.log('ドラッグスタート');
//   });

//   card.addEventListener('drag', () => {
//     card.style.display = `none`;
//     console.log('ドラッグ中');
//   });

//   card.addEventListener('dragend', () => {
//     card.style.display = `flex`; 
//     console.log('終了');
//   });

//   area.addEventListener('dragenter', () => {
//     console.log('comeon');
//   });

//   area.addEventListener('dragover', () => {
//     event.preventDefault();
//   }, false);

//   area.addEventListener('drop', () => {
//     area.appendChild(card);
//     console.log('drop');
//   });
// };