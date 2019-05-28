if(m_PauseTime == true)
{
	var newTimeInDay = WorldManager_CalcTimeInDay();
	
	var gap = 0;
	if(newTimeInDay >= m_TimeInDay)
		gap = newTimeInDay - m_TimeInDay;
	else
		gap = 1 + newTimeInDay - m_TimeInDay;
	
	assert_in_range(gap, 0, 1);
	
	m_StartupCurrentTime += gap*m_DayInSecond;
	
	m_PauseTime = false;
}