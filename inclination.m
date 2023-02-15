function[i] = inclination(Satelite)
h = specific_anguluar_momentum(Satelite);
i = acos(h(3)/sqrt(dot(h,h)));
end