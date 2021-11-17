t = linspace(0, 1, 1000);
y = zeros(1, 1000);
y = signalGen(t);
plot(t, y, "b-", "LineWidth", 1.5);
title("Semnalul y");
legend("y = 220sqrt(2)sin(50*2pi*t)");
grid on;