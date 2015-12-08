function [time, carrier, modulated_signal] = ASK(signal_vector)
    frequency = 2;
    amplitude = 1;
    signal_vector_length = length(signal_vector);

    time = 0.01:0.01:signal_vector_length;

    carrier = amplitude * sin(2 * pi * frequency * time);

    for i = 1:1:signal_vector_length
      m((i-1)*100+1:i*100) = signal_vector(i);
    end

    modulated_signal = carrier .* m;
    
    %TODO Mover esses plots pro python
    subplot(3,1,1);
    plot(time, m, 'LineWidth',2,'MarkerFaceColor','c');
    xlabel('time');
    ylabel('amplitude');
    title('digital input signal');

    subplot(3,1,2);
    plot(time, carrier, 'LineWidth',2,'MarkerFaceColor','c');
    xlabel('time');
    ylabel('amplitude');
    title('sinusoidal signal');

    subplot(3,1,3);
    plot(time, modulated_signal, 'LineWidth',2,'MarkerFaceColor','c');
    xlabel('time');
    ylabel('amplitude');
endfunction

%Digite no terminal
%signal_vector = [0 1 0 0 1 1 0 0];
%ASK(signal_vector);
