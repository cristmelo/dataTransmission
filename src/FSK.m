function [time, input_signal, carrier1, carrier2, modulated_signal] = FSK(signal_vector, amplitude, frequency1, frequency2)
    signal_vector_length = length(signal_vector);

    time = 0.01:0.01:signal_vector_length;

    carrier1 = amplitude * sin(2 * pi * frequency1 * time);
    carrier2 = amplitude * sin(2 * pi * frequency2 * time);

    for i = 1:1:signal_vector_length
      input_signal((i-1)*100+1:i*100) = signal_vector(i);
    end
  
    for i = 1:1:signal_vector_length*100
      if(input_signal(i))
        modulated_signal(i) = carrier1(i);
      else 
        modulated_signal(i) = carrier2(i); 
      endif
    endfor 
endfunction
