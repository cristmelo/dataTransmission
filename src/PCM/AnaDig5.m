function AnaDig5

  intervalo = 100;
  A = 2;
  t = 0:1/intervalo:10;

  resp=wavread('Media-Convert_test5_PCM_Stereo_VBR_8SS_44100Hz.wav');
	plot(resp);
	
	for i = 1:intervalo
		temp1 = i*10; 
	      temp2=(resp(round( temp1 )) );
	      temp3 = temp2/A;
	      resp2(i)=round(15.5+15.5*temp3);
	endfor
  	
  subplot(2,1,1);
  plot(resp);
  subplot(2,1,2);
  stairs(resp2);

endfunction
