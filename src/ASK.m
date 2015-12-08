function [time, input_signal, carrier, modulated_signal] = ASK(signal_vector, amplitude, frequency)
    signal_vector_length = length(signal_vector);

    time = 0.01:0.01:signal_vector_length;

    carrier = amplitude * sin(2 * pi * frequency * time);

    for i = 1:1:signal_vector_length
      input_signal((i-1)*100+1:i*100) = signal_vector(i);
    end

    modulated_signal = carrier .* input_signal;
    
%    Código para plotar os graficos da entrada, carreira e sinal modulado
%    subplot(3,1,1);
%    plot(time, input_signal, 'LineWidth',2,'MarkerFaceColor','c');
%    xlabel('time');
%    ylabel('amplitude');
%    title('digital input signal');
%
%    subplot(3,1,2);
%    plot(time, carrier, 'LineWidth',2,'MarkerFaceColor','c');
%    xlabel('time');
%    ylabel('amplitude');
%    title('sinusoidal signal');
%
%    subplot(3,1,3);
%    plot(time, modulated_signal, 'LineWidth',2,'MarkerFaceColor','c');
%    xlabel('time');
%    ylabel('amplitude');
    
endfunction