var json = SaveInstances();
var file = file_text_open_write("save.json");
file_text_write_string(file, json);
file_text_close(file);

url_open("save.json");