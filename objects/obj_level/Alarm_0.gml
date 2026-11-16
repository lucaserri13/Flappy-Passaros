/// @description Criando árvores

// Eu só crio instâncias caso o jogador ainda não perdeu
if (global.perdeu) exit;

	// Definindo o Y aleatório da árvore
	var _arvorey = random_range(360, 416 );

	// Definindo um valor aleatório pro alarme
	var _time = random_range(2, 5);

	// Criando as árvores
	instance_create_layer(704, _arvorey, "arvores", obj_arvore);

// Reiniciando o alarme
alarm[0] = game_get_speed(gamespeed_fps) * _time;