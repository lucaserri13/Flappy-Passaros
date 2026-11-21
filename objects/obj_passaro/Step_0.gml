//Nada roda caso eu tenha perdido
if (passarocolide)
{
	// Girando
	image_angle -= 15;
	
	// Pausando animação
	image_speed = 0;

	// Indo para trás
	hspeed = 2;
	exit;
}

// Indo para a esquerda
hspeed = -4;

// Destruindo após sair da tela
if (x < -60) instance_destroy();
