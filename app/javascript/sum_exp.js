const sum_exp = function (){

const selectMinute = document.getElementById("minute");
  selectMinute.addEventListener('change', function (){
    const minuteSelectBox = document.getElementById("minute");
    const minuteMultiple = minuteSelectBox.options[ minuteSelectBox.selectedIndex].getAttribute("data-multiple");
    console.log(minuteMultiple);
  });

const selectConcentration = document.getElementById("concentration");
  selectConcentration.addEventListener('change', function(){
    const concentrationSelectBox = document.getElementById("concentration");
    const concentrationMultiple = concentrationSelectBox.options[ concentrationSelectBox.selectIndex].getAttribute("data-multiple");
    console.log(concentrationMultiple);
  });

}
  window.addEventListener("load", sum_exp)