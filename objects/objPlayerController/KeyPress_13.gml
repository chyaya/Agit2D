/// @description Insert description here
// You can write your code in this editor


var _x = m_PlayerObjectX - global.Room_Template_Width[roomHouse]/2;
var _y = m_PlayerObjectY - global.Room_Template_Height[roomHouse];

LoadInstances(global.Room_Template[roomHouse], _x, _y);