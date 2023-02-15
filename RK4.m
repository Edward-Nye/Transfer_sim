function[r_new] = RK4(Planet, Planet_mass, Satelite, ...
    Time, step, G, Sun, Sun_mass)
r1 = Satelite(1:6,1);
t1 = Time;

r2 = Satelite(1:6,1) + f_r(Planet,Planet_mass,r1,Time,t1, ...
    G,Sun,Sun_mass)*step/2;
t2 = Time+step/2;

r3 = Satelite(1:6,1) + f_r(Planet,Planet_mass,r2,Time,t2, ...
    G,Sun,Sun_mass)*step/2;
t3 = Time+step/2;

r4 = Satelite(1:6,1) + f_r(Planet,Planet_mass,r3,Time,t3, ...
    G,Sun,Sun_mass)*step;
t4 = Time + step;

A = f_r(Planet,Planet_mass,r1,Time,t1,G,Sun,Sun_mass)...
    + 2*f_r(Planet,Planet_mass,r2,Time,t2,G,Sun,Sun_mass);

B = 2*f_r(Planet,Planet_mass,r3,Time,t3,G,Sun,Sun_mass)...
    + f_r(Planet,Planet_mass,r4,Time,t4,G,Sun,Sun_mass);

r_new = Satelite(1:6,1) + (step/6)*(A+B);

end
