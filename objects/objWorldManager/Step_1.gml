//var dayInSec = 600;
var dayInSec = 20;
//var dayInSec = 86400;

var s = m_StartupUnixTimeStamp + (current_time*0.001 - m_StartupCurrentTime);
var t = s/dayInSec mod 1;


if(t < 0.5)
{
	m_TimeInDay = t*2;
}
else
{
	m_TimeInDay = (t-0.5)*2;
}

//show_debug_message("UNIX Time:" + string(s) + ", TimeInDay:" + string(m_TimeInDay));

// 새벽 6시
var timeToProcessADay = 6/24;
if(m_TimeInDay >= timeToProcessADay && m_LastTimeInDay < timeToProcessADay)
{
	ProcessADay();	
	
	//show_debug_message("It's another day!");
}

m_LastTimeInDay = m_TimeInDay;