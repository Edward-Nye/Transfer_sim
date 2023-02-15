function[e] = eccentricity(Satelite)
mu = 1.327E20;
r_ = Satelite(1:3);
r = radial_distance(Satelite);
v_ = Satelite(4:6);
v = velocity(Satelite);
v_r = radial_velocity(Satelite);
e = (1/mu)*((((v^2)-(mu/r))*r_)-r*v_r*v_);
end
