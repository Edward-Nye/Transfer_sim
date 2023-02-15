function [a]=Distance_From_p(Object_1, Object_2, Time)
t = floor(Time/144)+1;
x = Object_2(1, t) - Object_1(1, t);
y = Object_2(2, t) - Object_1(2, t);
z = Object_2(3, t) - Object_1(3, t);
a = sqrt(x^2 + y^2 + z^2);
end