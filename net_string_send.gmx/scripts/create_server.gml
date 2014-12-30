///sever_create(_max_socket)
/***************************************************
  sever_create(_max_socket)
  
  argument0 - _max_socket (Optional!)
  
  returns: double (server handle)
 ***************************************************/
if (argument_count > 0)
    var max_socket = argument0;
else
    var max_socket = 65535;
 
var server = network_create_server(network_socket_tcp, SOCKET, 1);
/*
var port = SOCKET;

while (server < 0 && port < max_socket) {
   port++;
   server = network_create_server(network_socket_tcp, SOCKET, 1);
}
*/

if (server < 0)
    show_debug_message("Failed to create server");
else {
    show_debug_message("Sever created!!! Huzzah!");
    global.debug_connected = 1;
}

return server;
