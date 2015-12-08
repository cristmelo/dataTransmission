% DIGITAL DATA, ANALOG SIGNALS
signal_vector = [0 0 1 1 0 1 0 0 0 1 0];

[time, input_signal, carrier, modulated_signal1] = ASK(signal_vector, 1, 2);
[time, input_signal, carrier1, carrier2, modulated_signal2] = FSK(signal_vector, 1, 2, 1);
[time, input_signal, carrier, modulated_signal3] = PSK(signal_vector, 1, 2);

subplot(4,1,1);
plot(time, input_signal, 'LineWidth',2,'MarkerFaceColor','c');
xlabel('time');
ylabel('amplitude');
title('digital input signal');

subplot(4,1,2);
plot(time, modulated_signal1, 'LineWidth',2,'MarkerFaceColor','c');
xlabel('time');
ylabel('amplitude');
title('ASK');

subplot(4,1,3);
plot(time, modulated_signal2, 'LineWidth',2,'MarkerFaceColor','c');
xlabel('time');
ylabel('amplitude');
title('FSK');

subplot(4,1,4);
plot(time, modulated_signal3, 'LineWidth',2,'MarkerFaceColor','c');
xlabel('time');
ylabel('amplitude');
title('PSK');