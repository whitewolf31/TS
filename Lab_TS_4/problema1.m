function[Ad, Bd, Cd, Dd, Tz, num1z, den1z, num2z, den2z] = problema1(A, B, C, D, h)
syms s;
syms t;
phis = inv(s*eye(length(A)) - A);
phit = ilaplace(phis);
Ad = subs(phit, t, h); 
syms teta;
phiTeta = subs(phit, t, teta);
Bd = int(phiTeta * B, teta, 0, h);
Cd = C;
Dd = D;
Ad = double(Ad);
Bd = double(Bd);

[num1s, den1s] = ss2tf(A, B, C, D, 1);
[num2s, den2s] = ss2tf(A, B, C, D, 2);
H1s = tf(num1s, den1s);
H2s = tf(num2s, den2s);
H1z = c2d(H1s, h);
H2z = c2d(H2s, h);
[num1z, den1z] = tfdata(H1z, "v");
[num2z, den2z] = tfdata(H2z, "v");
Tz = [H1z, H2z];

