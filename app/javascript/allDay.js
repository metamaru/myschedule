document.addEventListener("DOMContentLoaded", function() {
  const allDayCheckbox = document.getElementById("all_day_checkbox");
  const startDateInput = document.getElementById("start_time");
  const endDateInput = document.getElementById("end_time");

  allDayCheckbox.addEventListener("change", function() {
    if (allDayCheckbox.checked) {
      endDateInput.value = startDateInput.value;
      endDateInput.disabled = true;
    } else {
      endDateInput.disabled = false;
    }
  });
});