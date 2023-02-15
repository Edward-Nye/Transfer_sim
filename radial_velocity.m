function[v_r] = radial_velocity(Satelite)
r = radial_distance(Satelite);
v_r = dot(Satelite(1:3),Satelite(4:6)/r);
end
