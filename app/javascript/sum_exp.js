const sum_exp = function (){
  const totalExp = document.getElementById("total_exp");

  
const selectMinute = document.getElementById("minute");
  selectMinute.addEventListener('change', function (){
    const minuteSelectBox = document.getElementById("minute");
    const minuteMultiple = minuteSelectBox.options[ minuteSelectBox.selectedIndex].getAttribute("data-multiple");
    console.log(minuteMultiple);
  

const selectConcentration = document.getElementById("concentration");
  selectConcentration.addEventListener('change', function(){
    const concentrationSelectBox = document.getElementById("concentration");
    const concentrationMultiple = concentrationSelectBox.options[ concentrationSelectBox.selectedIndex].getAttribute("data-multiple");
    console.log(concentrationMultiple);


const selectTechnique = document.getElementById("technique");
  selectTechnique.addEventListener('change', function (){
    const techniqueSelectBox = document.getElementById("technique");
    const techniqueMultiple = techniqueSelectBox.options[ techniqueSelectBox.selectedIndex].getAttribute("data-multiple");
    console.log(techniqueMultiple);

const selectOutPut = document.getElementById("out_put");
  selectOutPut.addEventListener('change', function (){
    const outPutSelectBox = document.getElementById("out_put");
    const outPutMultiple = outPutSelectBox.options[ outPutSelectBox.selectedIndex].getAttribute("data-multiple");
    console.log(outPutMultiple);


 const total = ( minuteMultiple * concentrationMultiple * techniqueMultiple * outPutMultiple);

 totalExp.innerHTML = total;
 

 document.getElementById("total_exp").value =  totalExp.innerHTML;
});
});
});
});
  
}
  window.addEventListener("load", sum_exp);