function[h] = specific_anguluar_momentum(Satelite)
h = cross(Satelite(1:3),Satelite(4:6));
end