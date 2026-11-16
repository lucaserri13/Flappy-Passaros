// Só rodará caso o player ainda não perdeu
if (global.perdeu) exit;

// Perdendo
perdeu();

#region animações de morte

// Ao sair para cima da tela
if (y < room_height/2)
{
	vspeed = 0;
	hspeed = 0;
	gravity = 0;
}

	// Ao sair para baixo da tela
	else
	{
		vspeed = -15;
		hspeed = 0;
		gravity = 1;
	}
	
#endregion