const pswrdField = document.querySelector(".form input[type='password']"),
toggleIcon = document.querySelector(".form .field i");

document.addEventListener("DOMContentLoaded", function () {
  const pswrdField = document.querySelector(".form input[type='password']");
  const toggleIcon = document.querySelector(".form .field i");

  toggleIcon.onclick = () => {
    if (pswrdField.type === "password") {
      pswrdField.type = "text";
      toggleIcon.classList.add("active");
    } else {
      pswrdField.type = "password"; // Fix this line
      toggleIcon.classList.remove("active");
    }
  };
});