function [time, input_signal, carrier, modulated_signal] = PSK(signal_vector, amplitude, frequency)
    signal_vector_length = length(signal_vector);

    time = 0.01:0.01:signal_vector_length;

    carrier = amplitude * sin(2 * pi * frequency * time);

    for i = 1:1:signal_vector_length
      input_signal((i-1)*100+1:i*100) = signal_vector(i);
    end
  
    for i = 1:1:signal_vector_length*100
      if(input_signal(i))
        modulated_signal(i) = carrier(i);
      else 
        modulated_signal(i) = -carrier(i); 
      endif
    endfor 
endfunction