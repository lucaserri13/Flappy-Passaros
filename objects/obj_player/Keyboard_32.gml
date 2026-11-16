// Só posso voar caso eu não tenha perdido
if (global.perdeu) exit;

#region Iniciando obstáculos

// Iniciando a geração de obstáculos caso o player inicie o jogo
if (gravity = 0)
{
	obj_level.alarm[0] = game_get_speed(gamespeed_fps)/2;
}

#endregion

// Tocando a animação do player.
// A animação irá parar no evento "Animation End"
image_speed = 1;
	