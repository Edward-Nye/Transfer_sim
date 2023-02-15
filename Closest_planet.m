function[Closest_planet] = Closest_planet(Planet, Satelite, Time)
t = round(Time/144)+1;
for i = 1:6
    for j = 1:3
        a(j,1,i) = Satelite(j) - Planet(j,t,i);
        b(i) = sqrt(dot(a(j,1,i),a(j,1,i)));
    end
end
[M, Closest_planet] = min(b);
