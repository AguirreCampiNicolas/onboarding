document.addEventListener("click", (event) => {
  if (event.target.matches(".remove_fields")) {
    event.preventDefault();
    console.log("Remove fields clicked"); // Verificar si se ejecuta el console log
    const field = event.target.closest(".nested-fields");
    field.querySelector("input[name*='_destroy']").value = "1";
    field.style.display = "none";
  } else if (event.target.matches(".add_fields")) {
    event.preventDefault();
    const time = new Date().getTime();
    const link = event.target;
    const regexp = new RegExp(link.dataset.id, "g");
    const newFields = link.dataset.fields.replace(regexp, time);
    link.insertAdjacentHTML("beforebegin", newFields);
    console.log("Add fields clicked"); // Verificar si se ejecuta el console log
  }
});
