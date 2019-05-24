/// @description Insert description here
// You can write your code in this editor


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

