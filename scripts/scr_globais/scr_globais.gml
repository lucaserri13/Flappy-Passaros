// Função que faz o jogador perder.
function perdeu(){
	// Perdendo
	global.perdeu = true;
	
	// Fazendo tudo parar
	with(all)
	{
		hspeed = 0;
	}
	
	// Subindo
	vspeed = -6;
	
	// Indo para trás
	hspeed = -3;
	
	// Caindo
	gravity = 0.5;
	
	// Fazendo o alarme de reiniciar
	alarm[0] = (game_get_speed(gamespeed_fps))
	
	// Tirando a velocidade do background
	layer_hspeed("bg_arvores", 0);
	layer_hspeed("bg_arvore_reflexo", 0);
	layer_hspeed("bg_agua_reflexo", 0);
}

// Iniciando variáveis globais
#region variáveis globais

	//randomizando o jogo
	randomise();

	//variável para saber se o jogador perdeu
	global.perdeu = false;

#endregion