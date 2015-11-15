% DECODER %

% DIGITAL DATA, DIGITAL SIGNALS

signal_vector = [0 1 0 0 1 1 0 0] % Book's example
	
function ans = NRZ_L(signal_vector)
  ans = signal_vector;
 
  ans_vector_length = length(ans);
  for(k = 1:ans_vector_length)
    ans(k) = not(ans(k));
  endfor
endfunction

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

function plot_ans(plot_title, x_label, y_label, plot_axis, ans)
  clf;
  stairs(ans,'LineWidth',2,'MarkerFaceColor','c')
  title(plot_title)
  xlabel(x_label)
  ylabel(y_label)
  axis(plot_axis) % Parameters: ([x_lo x_hi y_lo y_hi])
  grid
endfunction

ans = NRZ_L(signal_vector)
plot_ans("NRZ-L", "Tempo", "Amplitude", [1 9 0 2], ans)

ans = BIPOLAR_AMI(signal_vector)
plot_ans("BIPOLAR AMI", "Tempo", "Amplitude", [1 9 -2 2], ans)

ans = MANCHESTER(signal_vector)
plot_ans("MANCHESTER", "Tempo", "Amplitude", [1 16 0 2], ans)