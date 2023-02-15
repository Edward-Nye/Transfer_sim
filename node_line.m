function[N] = node_line(Satelite)
K = [0;0;1];
h = specific_anguluar_momentum(Satelite);
N = cross(K,h);
end