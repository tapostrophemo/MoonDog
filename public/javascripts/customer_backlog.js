

jQuery.fn.addCategory = function() {
  this.click(function() {
    $("#category_entry").show();
    $("#backlog_item").hide();
  });  
};

jQuery.fn.saveCategory = function() {
  this.click(function() {
    var category_value = $("#category_field").val();
    
    if (category_value == '') {
	alert('A category name is required!');
	return false;
    }
    
    $("#category_entry").hide();
    $("#backlog_item").show();
    $("#category").append("<h3>" + category_value + "</h3>");
    return false;
  });  
};

jQuery.fn.saveBacklog = function() {
  this.click(function() {
    var description = $("#item_description").val();
    $("#backlog").append('<div class=\"draggable\">' + description + " <a href=#>edit</a>");
    $("#item_description").val("");
    $("#item_note").val("");
    $(".draggable").draggable({cursor: 'crosshair', scope: "backlog"});
    return false;
  });
};

$(document).ready(function() {
 $(".add_category").addCategory();
 $("#save_category").saveCategory();
 $("#save_backlog").saveBacklog();
 $(".draggable").draggable({cursor: 'crosshair', scope: "backlog"});
 $("#droppable").droppable({hoverClass: "drop-allowed", scope: "backlog"});
});
