<!DOCTYPE html>
<html>
<body>


<button onclick="myFunction()">Click me</button>

<div id="demo" style="display: none">
    
    Hello
</div>

<script>
function myFunction() {
    // alert('hi');
  var x = document.getElementById("demo");
  if (x.style.display == "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
</script>
</body>
</html>