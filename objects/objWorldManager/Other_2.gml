/// @description load data

audio_group_load(footstep);

audio_play_sound(sndZelda, 0, true);

var fileName = "save.json";

if(file_exists(fileName))
{
	var json = "";
	var file = file_text_open_read("save.json");

	while(!file_text_eof(file))
	{
		json += file_text_readln(file);
	}

	file_text_close(file);

	LoadInstances(json);
}

objPlayerController.m_PlayerObject = instance_find(objPlayer, 0);