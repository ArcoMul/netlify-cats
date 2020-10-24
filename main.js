// Reload every 5 seconds (for css/html updates)
let seconds = 5;
setTimeout(() => {
  location.reload();
}, seconds * 1000);
setInterval(() => {
  seconds--;
  console.log("reloading in", seconds);
}, 1000);
