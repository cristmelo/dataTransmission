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

