// Alinhando o texto
draw_set_valign(fa_middle);
draw_set_halign(fa_left);

// Aplicando fonte
draw_set_font(fnt_font);

#region Pontos

	// Arredondando os pontos
	var _arredondar = round(global.pontos);

	// Desentando o texto
	draw_text(14, 21, "pontuação: " + string(_arredondar));

#endregion

// Alinhando o level
draw_set_halign(fa_middle);

#region Level

	// Desenhando o level
	var _meiodatela =  window_get_width() / 2;
	draw_sprite_ext(spr_numeros, global.level, _meiodatela, 30, 2, 2, 0, c_white, 1);

	// Desenhando a quantidade de pontos necessário para subir de level
	var _level = global.level - 1;
	_arredondar = round(global.lista_pontos[_level] - global.pontos);
	draw_text(_meiodatela, 60, string(_arredondar));

#endregion

// Resetando alinhamento
draw_set_valign(-1);
draw_set_halign(-1);

// Resetando a fonte
draw_set_font(-1);