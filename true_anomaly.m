function[theta] = true_anomaly(Satelite)
e_ = eccentricity(Satelite);
e = sqrt(dot(e_,e_));
r_ = Satelite(1:3);
r = radial_distance(Satelite);
v_r = radial_velocity(Satelite);
if v_r >= 0
    theta = acos(dot(e_/e,r_/r));
else
    theta = 360 - acos(dot(e_/e,r_/r));
end

