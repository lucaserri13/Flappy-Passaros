//Nada roda caso eu tenha perdido
if (global.perdeu)
{
	// Girando
	image_angle += 15;
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

#region Animação/Angulo

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

#region Teto

	// Variável temporária que define a distância do jogador com o teto
	var _dist = 30;
	
	// Prevenindo o jogador de sair da sala por cima
	if (y <= _dist)
	{
		y = _dist;
		
		// Resetando o ângulo
		image_angle = 0;
	}

#endregion