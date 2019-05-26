/// @description Mute

if(m_AudioMute)
{
	audio_master_gain(1.0);
	m_AudioMute = false;
}
else
{
	audio_master_gain(0);
	m_AudioMute = true;
}

