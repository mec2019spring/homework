% 参照Mathworks官方例程修改
% 陈冰 
% 2019年2月
% 显示电机的电流，转速和负载转矩波形

% Reuse figure if it exists, else create new figure
try
    figure(h1_mec2_dcmotor)
catch
    h1_mec2_dcmotor=figure('Name', 'mec2_dcmotor');
end

% Generate simulation results if they don't exist
if(~exist('simlog_mec2_dcmotor','var'))
    sim('mec2_dcmotor')
end

% Get simulation results
temp_moti = simlog_mec2_dcmotor.DC_Motor.Rotor_Resistance.i.series;
temp_mott = simlog_mec2_dcmotor.Load_Torque.t.series;
temp_motn = simlog_mec2_dcmotor.DC_Motor.Rotational_Electromechanical_Converter.w.series;

% Plot results
ah(1) = subplot(3,1,1);
plot(temp_moti.time,temp_moti.values,'LineWidth',1);
set(gca,'YLim',[-6000 10000]);
grid on
title('Motor Current');
ylabel('Current (A)');

ah(2) = subplot(3,1,2);
plot(temp_motn.time,temp_motn.values*9.55,'LineWidth',1);
set(gca,'YLim',[-500 3000]);
grid on
title('Motor Speed');
ylabel('Speed (rpm)');

ah(3) = subplot(3,1,3);
plot(temp_mott.time,-temp_mott.values,'LineWidth',1);
set(gca,'YLim',[-500 500]);
grid on
title('Load Torque');
xlabel('Time (s)');
ylabel('Torque (N*m)');

linkaxes(ah,'x');

% Remove temporary variables
clear temp_moti temp_mott temp_motn ah
