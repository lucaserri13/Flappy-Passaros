//Nada roda caso eu tenha perdido
if (passarocolide)
{
	// Girando
	image_angle -= 15;
	exit;
}

// Indo para a esquerda
hspeed = -4;

// Destruindo após sair da tela
if (x < -60) instance_destroy();
