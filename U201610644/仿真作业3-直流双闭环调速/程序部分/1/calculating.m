%���㳬����
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



%���㳬��
y = temp_motn.values*9.55;
x = temp_mott.time;

ymax = max(y(2:1000));
l = length(x);
ysta = mean(y(500:1000));

over = ymax/ysta-1;
over

%�����ٶȾ�̬���
e = 1000 - ysta;
e

%�������ʱ�� ����0.05%����
ts = x(max(find(y<0.95*ysta)));