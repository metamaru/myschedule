document.addEventListener("DOMContentLoaded", function() {
  const allDayCheckbox = document.getElementById("all_day_checkbox");
  const startDateInput = document.getElementById("#event_start_time_1i, #event_start_time_2i, #event_start_time_3i, #event_start_time_4i, #event_start_time_5i");
  const endDateInput = document.getElementById("#event_end_time_1i, #event_end_time_2i, #event_end_time_3i, #event_end_time_4i, #event_end_time_5i");

  allDayCheckbox.addEventListener("change", function() {
    if (allDayCheckbox.checked) {
      // 開始時刻のセレクト要素の値を取得
      const startDateValue = Array.from(startDateSelects).map(select => select.value).join("-");
      // 終了時刻のセレクト要素に値をセット
      endDateSelects.forEach(select => {
        select.value = startDateValue;
        select.disabled = true;
      });
    } else {
      endDateSelects.forEach(select => {
        select.disabled = false;
      });
    }
  });
});
