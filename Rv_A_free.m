function [Rv_A]=Rv_A_free(Planet, Planet_mass, Satelite, ...
    Time, G, Sun, Sun_mass)
t = round(Time/144)+1;
r = Satelite(1:3) - Planet(1:3, t);
As = -(G * Sun_mass)/Distance_From_s(Sun, Satelite, Time)^3;
Pp = -(G * Planet_mass)/Distance_From_s(Planet, Satelite, Time)^3;
%As = a_vec(As,Sun,Satelite,Time);
%Pp = a_vec(Pp,Planet,Satelite,Time);
%Rv_A = As(1:3,1).*Satelite(1:3) + Pp(1:3,1).*r(1:3,1);
Rv_A = As.*Satelite(1:3) + Pp.*r(1:3,1);
end