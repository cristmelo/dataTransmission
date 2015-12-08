% DECODER %

% DIGITAL DATA, DIGITAL SIGNALS

signal_vector = [0 1 0 0 1 1 0 0] % Book's example

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