function [Rv_A]=Rv_A_SOI(Planet, Planet_mass, Satelite, ...
    Time, G, Sun, Sun_mass)
t = floor(Time/144)+1;
r = Satelite(1:3) - Planet(1:3, t);
Ap = -(G * Planet_mass)/Distance_From_s(Planet, Satelite, Time)^3;
Ps = -(G * Sun_mass)/Distance_From_s(Sun, Satelite, Time)^3;
%Ap = -a_vec(Ap,Planet,Satelite,Time);
%Ps = -a_vec(Ps,Sun,Satelite,Time);
%Rv_A = Ap(1:3).*r(1:3) - Ps(1:3).*r(1:3);
Rv_A = Ap.*r(1:3) + Ps.*r(1:3,1);
end