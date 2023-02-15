function [Satelite_1]=f_r(Planet, Planet_mass, Satelite, ...
    Time, step, G, Sun, Sun_mass)
t = floor(Time/144)+1;
if Distance_From_s(Planet, Satelite, Time)<Planet(7,1)
    a = Rv_A_SOI(Planet,Planet_mass,Satelite,Time,G,Sun,...
        Sun_mass);
else
    a = Rv_A_free(Planet,Planet_mass,Satelite,Time,G,Sun,Sun_mass);
end

% Switching from Planet rf to sun rf interms of velocity

% if (Distance_From_s(Planet, Satelite, Time-1)<Planet(7,1)) || ...
%         (Distance_From_s(Planet, Satelite, Time)>Planet(7,1))
%     Satelite_1 = zeros(6,1);
%     
%     Satelite_1(4:6,1) = a(1:3,1) * step + Planet(4:6,t);
% else

Satelite_1 = zeros(6,1);
Satelite_1(4:6,1) = a(1:3,1) * step;
% end
Satelite_1(1:3,1) = (Satelite(4:6,1) * step) + (0.5 * a(1:3,1) * step^2);
end