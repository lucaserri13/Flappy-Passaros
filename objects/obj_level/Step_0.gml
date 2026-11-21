/// @description Dando pontos

//Se eu perdi ou se o jogo ainda não iniciou eu não ganho pontos
if (global.perdeu or global.iniciou = false) exit;

// Dando pontos pro jogador
global.pontos += 0.1;

// Ganhando level se eu fizer 100 pontos
if (global.pontos >= global.lista_pontos[global.level - 1])
{
	global.level++;
}