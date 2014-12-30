var str = "Hello World";

var buff = buffer_create_grow_string(1024);
buffer_seek(buff, buffer_seek_start, 1);
buffer_write(buff, buffer_string, str);

network_send_packet(global.socket, buff, buffer_get_size(buff));

show_debug_message("Packet sent!");
