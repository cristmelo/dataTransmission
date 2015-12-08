% DIGITAL DATA, ANALOG SIGNALS

x = [0 1 0 0 1 1 0 0 ] % Book's example

function ans = ASK(signal_vector, A, f, t)
    n = length(signal_vector);
    
    for(k = 1:n)
      if(signal_vector(k) == 0) 
        ans(k) = 0;
      else 
        ans(k) = A * cos(2 * pi * f * t);  
      endif
    endfor
endfunction  

ASK( x, 1, 1, 1 )


function ans = FSK( signal_vector, A, fportadora, f_desvio )
    n = length( signal_vector )
    m = 100 * n
    f1 = fportadora + f_desvio 
    f2 = fportadora - f_desvio
    t = [0:pi/400:2*pi];
    
    for( i = 1:800 )
        if( signal_vector(ceil(i/100)) == 0 )
          ans(i) = A * cos( 2 * pi * 1 * t(i) );
        else
          ans(i) = A * cos( 2 * pi * 2 * t(i) );  
        endif
    endfor
    
    subplot(2,1,1);
    plot(ans);
    grid on;
    subplot(2,1,2);
    stairs(signal_vector);
    grid on;

endfunction  

FSK( x, 1, 2500, 500 )
