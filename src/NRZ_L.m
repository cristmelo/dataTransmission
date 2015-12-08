function ans = NRZ_L(signal_vector)
  ans = signal_vector;
 
  ans_vector_length = length(ans);
  for(k = 1:ans_vector_length)
    ans(k) = not(ans(k));
  endfor
endfunction