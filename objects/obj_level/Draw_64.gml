// Alinhando o texto
draw_set_valign(fa_middle);
draw_set_halign(fa_left);

// Aplicando fonte
draw_set_font(fnt_font);

// Arredondando os pontos
var _arredondar = round(global.pontos);

// Desentando o texto
draw_text(14, 21, "pontuação: " + string(_arredondar));

// Resetando alinhamento
draw_set_valign(-1);
draw_set_halign(-1);

// Resetando a fonte
draw_set_font(-1);