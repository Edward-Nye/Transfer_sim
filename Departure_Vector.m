function [x,y,dv_x,dv_y] = Departure_Vector(Planet,B,r,mag,Time)

theta = atan(Planet(2,Time)/Planet(1,Time));

B = deg2rad(B);

x = Planet(1,Time) + r * cos(theta+B);

y = Planet(2,Time) + r * sin(theta+B);

dv_x = abs(mag)*cos(-B+theta);

dv_y = abs(mag)*sin(-B+theta);

end