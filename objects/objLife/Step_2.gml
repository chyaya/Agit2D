event_inherited();

if(m_CurHealth == 0 && m_LastHealth > 0)
{
	event_user(0);	// Dead
}

m_LastHealth = m_CurHealth;

if(m_DirX != 0 || m_DirY != 0)
{
	direction = Util_DirToAngle(m_DirX, m_DirY);
}