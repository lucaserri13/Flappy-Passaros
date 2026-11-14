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
	gravity = 0.5
	
	// Tirando a velocidade do background
	layer_hspeed("bg_arvores", 0);
	layer_hspeed("bg_arvore_reflexo", 0);
	layer_hspeed("bg_agua_reflexo", 0);
}

// Iniciando variáveis globais
#region variáveis globais

	//variável para saber se o jogador perdeu
	global.perdeu = false;

#endregion