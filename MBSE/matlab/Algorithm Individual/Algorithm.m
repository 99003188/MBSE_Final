% This Algorithm is based on the light intensity sensor
% The main goal of this project is to tell the user what is the optimum
% condition for certain activities
% Importing the data from androsensor
data_one = xlsread("C:\Users\99003188\Desktop\Sensor_record_20201214_133122_AndroSensor.csv","AH1:AI3209");
[lux] = data_one(:,1);
[time] = data_one(:,2);
i = 1;
for light = 2:3159
    if ( lux(i) > 80000  && stepdata.lux(i) < 85000 )
        disp(lux(i));
        disp("Bright noon condition");
        disp("Not optimum to do any outdoor activity");
        i = i+1;
    elseif( lux(i) > 18000 && lux(i) < 22000)
        disp(lux(i));
        disp("Partly cloudy sunny day");
        i = i+1;
    elseif(lux(i) > 9000 && lux(i) < 12000)
        disp(lux(i));
        disp("Golden Hour");
        i = i+1;
    elseif (lux(i) > 200 && lux(i) < 300)
        disp(lux(i));
        disp("optimal for bedroom dormitory or Cafeteria Eating");
        i = i+1;
   elseif( lux(i) >  300 && lux(i) < 500)
       disp(lux(i));
       disp("optimal for Classroom general or Conference Room");
       i = i+1;
   elseif( lux(i)> 50 && lux(i)< 100)
       disp(lux(i));
       disp("optimal for Corridor");
       i = i+1;
   elseif( lux(i) > 300 && lux(i) < 500)
       disp(lux(i));
       disp("optimal for Exhibit Space");
       i = i+1;
    elseif(lux(i) > 300 && lux(i) < 500)
        disp(lux(i));
        disp("optimal for Gymnasium-sports/games");
        i = i+1;
    elseif(lux(i) > 300 && lux(i) < 750)
        disp(lux(i));
        disp("optimal for kitchen ");
        i = i+1;
    elseif( lux(i)>500 && lux(i)<750)
        disp(lux(i));
        disp("optimal for laboratory");
        i = i+1;

    elseif( lux(i)> 200 && lux(i)<500)
        disp(lux(i));
        disp("optimal condition for library");
        i = i+1;
    elseif( lux(i)> 100 && lux(i) < 300)
        disp(lux(i));
        disp("optimal for loading dock");
        i = i+1;
     elseif( lux(i)> 300 && lux(i)< 750)
         disp(lux(i));
         disp("optimal for Workshop");
         i = i+1;
     elseif( lux(i) > 50 && lux(i) < 200)
         disp(lux(i));
         disp("optimal for storage room");
         i = i+1;
    else
        disp("No data");
        i = i+1;
    end
end
figure
plot(time,lux);
xlabel("Time in seconds");
ylabel("Light intensity in lux");
title("Light intensity vs Time");
