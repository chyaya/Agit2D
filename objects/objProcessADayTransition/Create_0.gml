#macro CLOSE 0
#macro PAUSE 1
#macro OPEN 2

m_Phase = CLOSE;

m_Width = view_wport[0];
m_Height = view_hport[0];

m_SurfCircle = surface_create(m_Width, m_Height);

m_MaxCircleRadius = m_Width/2 + 300;
m_CurrentCircleRaduis = m_MaxCircleRadius;

m_StartTime = current_time*0.001;
m_CloseTime = 1.5;
m_PauseTime = 2;
m_OpenTime = 1.5;
