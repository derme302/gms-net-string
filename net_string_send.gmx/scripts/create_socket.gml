///create_socket(sever_ip)
/***************************************************
  Connect to a GameMaker server
  
  argument 0 - server ip
  
  return: something
 ***************************************************/
var client_socket = network_create_socket(network_socket_tcp);
var net = network_connect(client_socket, string(argument0), SOCKET);

if (net < 0)
    show_debug_message("Failed to connect");
else {
    show_debug_message("Connected to network");
    global.debug_connected = 1;
}

return client_socket;
