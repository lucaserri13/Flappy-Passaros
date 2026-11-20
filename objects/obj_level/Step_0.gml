/// @description Dando pontos

//Se eu perdi ou se o jogo ainda não iniciou eu não ganho pontos
if (global.perdeu or global.iniciou = false) exit;

// Dando pontos pro jogador
global.pontos += 0.1;