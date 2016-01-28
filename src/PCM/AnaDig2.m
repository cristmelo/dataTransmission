function AnaDig2
  
  intervalo = 1000;
  A = 2;
  t = 0:1/intervalo:10;
  
  %FUNCAO DENTE DE SERRA
  resp=0;
	for i=1:1000
		resp=resp+ 1/2-(1/pi)*(sin(-i*t*pi)/i);
	endfor
	resp = resp * A;
  
	for i = 1:intervalo
		  temp1 = i*10; 
      temp2=(resp(round( temp1 )) );
      temp3 = temp2/A;
      resp2(i)=round(15.5+15.5*temp3);
      %PCMcode = dec2bin(abs(x(i))) % Parte binaria
	endfor

	subplot(2,1,1);
	plot(t,resp);
	title("ONDA DENTE DE SERRA ORIGINAL");
	xlabel("TEMPO");
	ylabel("AMPLITUDE");

	subplot(2,1,2);
	stairs(t(1:intervalo),resp2);
	title("ONDA DENTE DE SERRA PCM");
	xlabel("TEMPO");
	ylabel("AMPLITUDE");

  endfunction
  