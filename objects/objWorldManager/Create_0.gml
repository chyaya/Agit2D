randomize();

m_StartupUnixTimeStamp = Util_UnixTimeStamp();
m_StartupCurrentTime = current_time*0.001;
m_TimeInDay = 0;
m_LastTimeInDay = -1;

m_DayInSecond = 60;

m_PauseTime = false;
m_DontSave = false;