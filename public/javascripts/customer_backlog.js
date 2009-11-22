

jQuery.fn.addCategory = function() {
  this.click(function() {
    $("#category_entry").show();
    $("#backlog_item").hide();
  });  
};

jQuery.fn.saveCategory = function() {
  this.click(function() {
    var category_value = $("#category_field").val();
    $("#category_entry").hide();
    $("#backlog_item").show();
    $("#category").append("<h3>" + category_value + "</h3>");
    return false;
  });  
};

jQuery.fn.saveBacklog = function() {
  this.click(function() {
    var description = $("#item_description").val();
    $("#backlog").append("<p>" + description + "</p>");
    $("#item_description").val("");
    $("#item_note").val("");
    return false;
  });
};

$(document).ready(function() {
 $(".add_category").addCategory();
 $("#save_category").saveCategory();
 $("#save_backlog").saveBacklog();
});
