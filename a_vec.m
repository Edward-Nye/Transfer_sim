function[Acc]=a_vec(mag,Object1,Object2,Time )
t = round(Time/144)+1;
F = Distance_From_s(Object1,Object2,Time);
Acc = zeros(3,1);
Acc(1) = mag*(Object2(1)-Object1(1,t))/F;
Acc(2) = mag*(Object2(2)-Object1(2,t))/F;
Acc(3) = mag*(Object2(3)-Object1(3,t))/F;
end