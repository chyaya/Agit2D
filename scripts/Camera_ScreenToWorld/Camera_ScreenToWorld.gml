var localX = argument0;
var localY = argument1;
var worldX = 0;
var worldY = 0;

with(objCamera)
{
	localX -= view_wport[0]/2;
	localY -= view_hport[0]/2;
	
	localX /= m_Zoom;
	localY /= m_Zoom;
	
	worldX = localX + x;
	worldY = localY + y;
}

return [worldX, worldY];

