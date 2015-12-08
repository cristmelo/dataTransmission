function ans = MANCHESTER(signal_vector)
  signal_vector_length = length(signal_vector);
  
  l = 1;  
  for(k = 1:signal_vector_length)
    if (signal_vector(k)) 
      ans(l) = 0;
      ans(l + 1) = 1;      
    else
      ans(l) = 1;
      ans(l + 1) = 0;
    endif
    l += 2;
  endfor
endfunction