function [phit, xlt, ylt, Ts, yft] = problema1(A, B, C, D, x0, ut)
    sizeA = size(A, 1);
    syms s;
    syms t;
    phis = inv(s * eye(sizeA) - A);
    phit = ilaplace(phis);
    xlt = phit * x0;
    ylt = C * xlt;
    Ts = C * phis * B;
    yft = ilaplace(Ts * laplace(ut));