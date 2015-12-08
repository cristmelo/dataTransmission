function ans = BIPOLAR_AMI(signal_vector)
  ans = signal_vector;
  
  ans_vector_length = length(ans);
  was_last_number_one_positive = 0;
  
  for(k = 1:ans_vector_length)
    if (ans(k)) 
      if(was_last_number_one_positive)
        ans(k) = -1;
      end
      was_last_number_one_positive = not(was_last_number_one_positive);  
    endif
  endfor
endfunction