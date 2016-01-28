function AnaDig
  
  intervalo = 1000;
  A = 2; 
  t = 0:1/intervalo:10;
 
  %FUNÇAO SENOIDAL BASICA 
  f = A*(sin(t));
  for i = 1:intervalo
      temp1 = i*10; 
      temp2=(f(round( temp1 )) );
      temp3 = temp2/A;
      x(i)=round(15.5+15.5*temp3);
      %PCMcode = dec2bin(abs(x(i))) % Parte binaria
  endfor  
  
  
  
	subplot(2,1,1); 
	plot(t,f);
	title("ONDA SENOIDAL ORIGINAL");
	xlabel("TEMPO");
	ylabel("AMPLITUDE");
   
	subplot(2,1,2);
	stairs(t(1:intervalo),x);
	title("ONDA SENOIDAL PCM");
	xlabel("TEMPO");
	ylabel("AMPLITUDE");
  
  
endfunction

