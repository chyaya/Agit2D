/// @description Pause Time

with(objWorldManager)
{
	if(m_PauseTime)
	{
		WorldManager_ResumeTime();
	}
	else
	{
		WorldManager_PauseTime();
	}
}
