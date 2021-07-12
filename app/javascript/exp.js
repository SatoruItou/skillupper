const exp = function () {
  const totalExp = document.getElementById("total_exp");


const selectMinute = document.getElementById("minute");
  selectMinute.addEventListener('change', function (){
    const minuteSelectBox = document.getElementById("minute");
    const dataMinute = minuteSelectBox.options[ minuteSelectBox.selectedIndex].getAttribute("data-multiple");
    console.log(dataMinute);
  })
}
window.addEventListener("load", exp)