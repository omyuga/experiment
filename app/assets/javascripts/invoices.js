$(function(){
  var i=1;
     $("#add_row").click(function(){
       
         $('#row1'+i).appendTo("#row0");
     });
});