// code here
window.addEventListener("click",clicked);

function clicked(e) {
  let msg = document.createElement("h3");
  msg.innerText = `clicked @ ${e.screenX} x and ${e.screenY} y`;
  document.getElementById("output").innerHTML = "";
  document.getElementById("output").style.textAlign = "center";
  document.getElementById("output").appendChild(msg);
}

setTimeout((e)=>console.log("hello"),0)
console.log("world");
