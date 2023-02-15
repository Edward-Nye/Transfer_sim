function[omega] = right_ascension(Satelite)
N = node_line(Satelite);
if N(2) >= 0
    omega = acos(N(1)/sqrt(dot(N,N)));
else
    omega = 360 - acos(N(1)/sqrt(dot(N,N)));
end
