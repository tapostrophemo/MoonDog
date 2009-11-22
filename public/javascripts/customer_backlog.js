

jQuery.fn.addCategory = function() {
  this.click(function() {
    alert("click");
  });  
};

$(document).ready(function() {
 $(".add_category").addCategory();
});
