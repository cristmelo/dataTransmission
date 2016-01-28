function AnaDig4

  intervalo = 1000;
  A = 2;
  t = 0:1/intervalo:10;
  
  resp = 0;
	k = 1;
	for i=1:1000
    resp = resp + (4/pi)*(sin(i*t*pi)/i);
	endfor
	resp = resp * A;
  
  for i = 1:intervalo
		temp1 = i*10; 
      temp2=(resp(round( temp1 )) );
      temp3 = temp2/A;
      resp2(i)=round(15.5+15.5*temp3);
	endfor
  
  subplot(2,1,1);
	plot(t,resp);
	title("ONDA QUADRADA ORIGINAL");
	xlabel("TEMPO");
	ylabel("AMPLITUDE");

	subplot(2,1,2);
	stairs(t(1:intervalo),resp2);
	title("ONDA QUADRADA PCM");
	xlabel("TEMPO");
	ylabel("AMPLITUDE");
    
endfunction