var attackObj = argument0;
var attackCoolTime = argument1;

with (instance_create_layer(attackObj.x, attackObj.y, "Particles", objBlank))
{
	m_OwnerObj = attackObj.id;
	m_Damage = attackObj.m_Damage;
		
	var attackRes = noone;
		
	//switch(attackObj.m_AttackType)
	//{
	//case 0:	
		attackRes = objMelee1;
	//	break;
	//case 1:
	//	attackRes = oMelee2;
	//	break;
	//}
		
	instance_change(attackRes, true);
}

attackObj.m_Attacking = true;
attackObj.alarm[1] = attackCoolTime;