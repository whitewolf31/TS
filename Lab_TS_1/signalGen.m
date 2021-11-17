function [out] = signalGen(t)
    out = 220 * sqrt(2) * sin(50 * 2 * pi * t);
end