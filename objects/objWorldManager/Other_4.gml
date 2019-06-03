/// @description load data

objPlayerController.m_PlayerObject = noone;

audio_group_load(footstep);

audio_play_sound(sndZelda, 0, true);

if(file_exists(SAVE_FILENAME))
{
	var json = "";
	var file = file_text_open_read(SAVE_FILENAME);

	while(!file_text_eof(file))
	{
		json += file_text_readln(file);
	}

	file_text_close(file);

	ClearSavableInstances();

	if(array_length_1d(LoadInstances(json)) == 0)
	{
		show_message("save file format is changed! reset a game.");
		m_DontSave = true;
		
		file_delete(SAVE_FILENAME);
		game_restart();
		return;
	}
}

objPlayerController.m_PlayerObject = instance_find(objPlayer, 0);

