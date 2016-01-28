function AnaDig5

  intervalo = 100;
  A = 2;
  t = 0:1/intervalo:10;

  resp=wavread('Media-Convert_test5_PCM_Stereo_VBR_8SS_44100Hz.wav');
	plot(resp);
	
	for i = 1:intervalo
		resp2(i)=round(15.5+15.5*(resp(round( i*(intervalo*10)/(intervalo) - (((intervalo*10)/intervalo)/2)) )/A));
	endfor
  	
  subplot(2,1,1);
  plot(resp);
  subplot(2,1,2);
  stairs(resp2);

endfunction