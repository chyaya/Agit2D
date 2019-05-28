if(false == m_PauseTime)
{
	m_TimeInDay = WorldManager_CalcTimeInDay();

	//show_debug_message("UNIX Time:" + string(s) + ", TimeInDay:" + string(m_TimeInDay));

	// 새벽 6시
	var timeToProcessADay = 6/24;
	if(m_TimeInDay >= timeToProcessADay && m_LastTimeInDay < timeToProcessADay)
	{
		ProcessADay();	
	
		//show_debug_message("It's another day!");
	}

	m_LastTimeInDay = m_TimeInDay;
}