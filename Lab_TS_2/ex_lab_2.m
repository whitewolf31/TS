H = tf([1 1], [1 2 1]);
[y, t] = step(H);
plot(t, y, 'b-', "LineWidth", 1.5);
grid ON;
plot(out.simout.Time, out.simout.Data(:, 1), 'r-', out.simout.Time, out.simout.Data(:, 2), 'g-');
