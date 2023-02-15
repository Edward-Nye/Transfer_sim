function [r_soi]=SOI(Planet, Planet_mass, Sun, Sun_mass, Time)
r = Distance_From_p(Sun, Planet, Time);
r_soi = r*(Planet_mass/Sun_mass)^(2/5);
end