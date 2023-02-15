function[Satelite_out]=simulate_free(Planet, Planet_mass, Satelite, Duration, Time, step, ...
    G, Sun, Sun_mass)

f = waitbar(0,'1','Name','Sat Sim',...
    'CreateCancelBtn','setappdata(gcbf,''canceling'',1)');

setappdata(f,'canceling',0);
flag = 0;
loop = 144*Duration;
loop2 = 600/step;

i = 2;
sat_a = zeros(6,loop2,loop);
Satelite_out = Satelite(:,:,1);
P = Closest_planet(Planet,Satelite,Time);
new_sat = RK4(Planet(:,:,P), Planet_mass(P), Satelite, ...
    Time, step, G, Sun, Sun_mass);
while  i < loop
    if getappdata(f,'canceling')
        break
    end
    j = 1;
    while j < loop2+1
        P = Closest_planet(Planet,new_sat,i);
%         if Distance_From_s(Planet(:,:,P),Satelite,i) < Planet(7,2,P) 
%             flag = 1;
%             break
%         elseif Distance_From_s(Sun,Satelite,i) < Sun(7,1)
%             flag = 1;
%             break
%         else


    
        new_sat = RK4(Planet(:,:,P), Planet_mass(P), new_sat, ...
            i, step, G, Sun, Sun_mass);
        sat_a(1:6,j,i) = new_sat(1:6);
        j = j + 1;
%         end
    end
%     if flag==1
%         break
%     end
    waitbar(i/loop,f,sprintf('%0.5g',i))
    Satelite_out(1:6, i) = new_sat(1:6);

% Switching from Planet rf to sun rf in terms of velocity
    t = floor(i/144)+1;
    if (Distance_From_s(Planet(:,:,P), Satelite_out(:,i-1), i-1)<Planet(7,t,P)) && ...
        (Distance_From_s(Planet(:,:,P), Satelite_out(:,i), i)>Planet(7,t,P))
        new_sat(4:6) = new_sat(4:6) + Planet(4:6,t,P);
        across = i;
        i = i+1;
    else
    i = i+1;
    end
end

delete(f)
end