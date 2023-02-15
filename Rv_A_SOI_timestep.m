function [Rv_A]=Rv_A_SOI_timestep(Planet, Planet_mass, Satelite, ...
    Time, G, Sun, Sun_mass, Counter,Counter2)
t = Time-1/144; % finds how far through the sim is
tp = floor(t); % finds the whole number
t1 = t - tp; % finds the decimal remainder
t2 = floor(144*Counter*t1)+Counter2; % finds the index
Planet_pos_SOI = zeros(3,144*600);
for i = 1:3
    Planet_pos_SOI(i,:) = linspace(Planet(i,tp+1), ...
        Planet(i,tp+2),144*600); % Straight line from p1 to p2
end
r = Satelite(1:3) - Planet_pos_SOI(1:3, t2+1);
Ap = -(G * Planet_mass)/sqrt(dot(r,r))^3;
Ps = -(G * Sun_mass)/Distance_From_s(Sun, Satelite, Time)^3;
%Ap = a_vec(Ap,Planet,Satelite,Time);
%Ps = a_vec(Ps,Sun,Satelite,Time);
%Rv_A = Ap(1:3,1).*r(1:3,1) + Ps(1:3,1).*r(1:3,1);
Rv_A = Ap.*r(1:3) + Ps.*r(1:3,1);
end