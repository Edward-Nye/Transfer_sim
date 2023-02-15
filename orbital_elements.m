function[orbital_elements, orbital_elements_] = orbital_elements(Satelite)
orbital_elements = zeros(9,1);
orbital_elements_ = zeros(2,3);
r = radial_distance(Satelite);
v = velocity(Satelite);
v_r = radial_velocity(Satelite);
h_ = specific_anguluar_momentum(Satelite);
h = sqrt(dot(h_,h_));
i = inclination(Satelite);
omega = right_ascension(Satelite);
e_ = eccentricity(Satelite);
e = sqrt(dot(e_,e_));
w = perigee(Satelite);
theta = true_anomaly(Satelite);
orbital_elements(1,1) = r;
orbital_elements(2,1) = v;
orbital_elements(3,1) = v_r;
orbital_elements(4,1) = h;
orbital_elements(5,1) = i;
orbital_elements(6,1) = omega;
orbital_elements(7,1) = e;
orbital_elements(8,1) = w;
orbital_elements(9,1) = theta;
orbital_elements_(1,1:3) = h_(1:3);
orbital_elements_(2,1:3) = e_(1:3);
end