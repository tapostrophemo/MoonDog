

jQuery.fn.addCategory = function() {
  this.click(function() {
    $("#category_entry").show();
  });  
};

jQuery.fn.saveCategory = function() {
  this.click(function() {
    var category_value = $("#category_field").val();
    $("#category_entry").hide();
    $("#backlog_item").show();       
    return false;
  });  
};

$(document).ready(function() {
 $(".add_category").addCategory();
 $("#save_category").saveCategory();
});
