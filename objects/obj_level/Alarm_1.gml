/// @description Criando pássaros

// Eu só crio instâncias caso o jogador ainda não perdeu
if (global.perdeu) exit;

	// Definindo o Y aleatório do pássaro
	var _passaroy = random_range(64, 128 );

	// Definindo um valor aleatório pro alarme
	var _time = random_range(2, 6);

	// Criando as árvores
	instance_create_layer(704, _passaroy, "passaros", obj_passaro);

// Reiniciando o alarme
alarm[1] = game_get_speed(gamespeed_fps) * _time;