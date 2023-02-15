function[w] = perigee(Satelite)
N_ = node_line(Satelite);
e_ = eccentricity(Satelite);
N = sqrt(dot(N_,N_));
e = sqrt(dot(e_,e_));
if e_(3) >= 0
    w = acos((dot(N_,e_)/N*e));
else
    w = 360 - acos((dot(N_,e_)/N*e));
end