///buffer_create_grow_string(size)
/***************************************************
  buffer_create_grow_string(size)
  
  argument0 - size
  
  returns: double (buffer index)
 ***************************************************/
var handle = buffer_create(argument0 , buffer_grow , 1);
return handle;
