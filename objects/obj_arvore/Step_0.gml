// Curvando após colisão
if (anguloqueda > 0)
{	
	var _quedasuave = lerp(anguloqueda, 0, 0.8);
	image_angle -= _quedasuave;
	anguloqueda-= _quedasuave;
}

// Destruindo após sair da tela
if (x < -60) instance_destroy();

