var worldX = argument0;
var worldY = argument1;
var localX = 0;
var localY = 0;

with(objCamera)
{
	localX = worldX - x;
	localY = worldY - y;
	
	localX *= m_Zoom;
	localY *= m_Zoom;
}

localX += view_wport[0]/2;
localY += view_hport[0]/2;

return [localX, localY];

