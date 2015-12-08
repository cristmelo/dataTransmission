function [time, carrier, modulated_signal] = FSK(signal_vector, amplitude, frequency1, frequency2)
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
    
    %TODO Mover esses plots pro python
    subplot(4,1,1);
    plot(time, input_signal, 'LineWidth',2,'MarkerFaceColor','c');
    xlabel('time');
    ylabel('amplitude');
    title('digital input signal');

    subplot(4,1,2);
    plot(time, carrier1, 'LineWidth',2,'MarkerFaceColor','c');
    xlabel('time');
    ylabel('amplitude');
    title('sinusoidal signal');
    
    subplot(4,1,3);
    plot(time, carrier2, 'LineWidth',2,'MarkerFaceColor','c');
    xlabel('time');
    ylabel('amplitude');
    title('sinusoidal signal');

    subplot(4,1,4);
    plot(time, modulated_signal, 'LineWidth',2,'MarkerFaceColor','c');
    xlabel('time');
    ylabel('amplitude');
endfunction

%Digite no terminal

%signal_vector = [0 0 1 1 0 1 0 0 0 1 0];
%FSK(signal_vector, 1, 4, 2);
