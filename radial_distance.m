function [r] = radial_distance(Satelite)
r = sqrt(dot(Satelite(1:3),Satelite(1:3)));
end