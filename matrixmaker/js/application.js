/* approval matrix javascript */

// firebug decoy
if (!("console" in window) || !("firebug" in console)) {
  var names = ["log", "debug", "info", "warn", "error", "assert", "dir", "dirxml",
    "group", "groupEnd", "time", "timeEnd", "count", "trace", "profile", "profileEnd"];
  window.console = {};
  for (var i = 0; i < names.length; ++i)
    window.console[names[i]] = function() {};
}


// application
$(document).ready(function(){
  
  // loading indication
  $("#loading").ajaxStart(function(){
    // $(this).css('top', $(document).scrollTop() + 30).show();
    $(this).show();
  }).ajaxStop(function(){
    $(this).hide('fast');
  });  
  
  
  // drag some items
  makeDraggable();
  
  // create new item
  $('.new-item form').submit(function(){
    $.post($(this).attr('action'), {'wut': 'yeah'});
    // var new_id = $('ul#items li')[-1].attr('id').replace('item-','');
    var items = $('ul#items li'); 
    var last_item = items[items.length-1];
    var last_item_number = last_item.id.replace('item-','');
    console.log(last_item_number);
    $('ul#items').append('<li id="item-'+(last_item_number)+'" class="ui-draggable">Hay guise</li>');
    makeDraggable(); //TODO add target
    return false;
  });

  // drop on the table
  $("table.matrix").droppable({
    accept: "#items li",
    activeClass: 'droppable-active',
    hoverClass: 'droppable-hover',
    drop: function(e, ui){
      console.log( "Item ID: "+ui.draggable.attr('id') );

      // warning!
      $('#flash').show().text( 'Saving '+ui.draggable.attr('id') );
      $('#loading').show();
      
      // do the save...
      $.ajax({
        type: "PUT", // = update
        url: "/entries",

        // TODO: compile our datas--collect .items?
        data: "name=John&location=Boston",

        success: function(msg){
          // alert( "Data Saved: " + msg );
          console.log("Saved! "+msg);
        }
      });
      
      
      // hide flash/loading
      setTimeout(function(){ 
        $('#loading').hide();
        $('#flash').fadeOut('fast');
      }, 1000);
    }
  });
});


// Helper funcs -- called after various ajaxiness

function makeDraggable(target) {
  if(target == undefined) { target = 'ul#items li'; };
  $(target).draggable({
    opacity: 0.50,
    containment: $('table.matrix'),
    stop: function(e, ui){
      console.log("Done dragging");      
    }
  });
}