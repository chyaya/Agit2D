/// @description save data

if(m_DontSave)
	return;

var json = SaveInstances();
var file = file_text_open_write(SAVE_FILENAME);
file_text_write_string(file, json);
file_text_close(file);

//url_open("save.json");