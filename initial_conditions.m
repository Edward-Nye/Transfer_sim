function [Satelite]=initial_conditions(Satelite, Location, Velocity, Mass, Time)
Satelite(1:3, Time) = Location(1,1:3);
Satelite(4:6, Time) = Velocity(1,1:3);
%Satelite(7, Time) = Mass;
end
