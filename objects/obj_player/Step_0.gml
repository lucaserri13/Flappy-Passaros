//Nada roda caso eu tenha perdido
if (global.perdeu)
{
	// Girando caso ele não esteja em cima da tela
	if (y > 0)
	image_angle += 15;
		else y-= 2;
		
	exit;
}

#region Voando

	// Você só começa a voar quando a imagem mostrar você batendo as asas
	if (image_index > 0.99 and image_index < 1.01)
	{
		// Voando para cima contra a gravidade.
		vspeed = -voo;

		// Criando a gravidade do player
		gravity = grav;
	}
	
#endregion

//Tudo adiante não será lido caso o jogo não tenha iniciado (não tem gravidade)
if (gravity = 0) exit;

#region Animação de Voo/Angulo

	//Velocidade da animação
	var _angspeed = 6;
	
	//Tamanho do ângulo
	var _angsize = 20;
	
	//Fazendo o player cair caso não esteja voando
	if (vspeed <= 0)
	{	
		//Definindo um limite para o ângulo
			if (image_angle < _angsize)
			image_angle+= (_angspeed * 1.5);
	}
		//Fazendo o player subir caso esteja voando
		else
		{	
			//Definindo um limite para o ângulo
			if (image_angle > -_angsize)
			image_angle-= _angspeed;

		}

#endregion
