clear
%% Lookup Table Breakpoints

SOC_LUT = (0:0.1:1)';

%% Known values
% Battery capacity
Capacity = 2; %AH

%数据集开始时的电荷赤字，基于测试准备的假设
Qe_init = 0;

% Em open-circuit voltage vs SOC  Em开路电压与SOC
Em = 3.8*ones(size(SOC_LUT));

%R0
R0 = 0.01*ones(size(SOC_LUT));

%R1&R2
R1 = 0.005*ones(size(SOC_LUT));
R2 = 0.005*ones(size(SOC_LUT));

%C1&C2
C1 = 10000*ones(size(SOC_LUT));
C2 = 10000*ones(size(SOC_LUT));

load('PulseData_test');
%Pulse=Simulink.SimulationData.Dataset;
%Pulse = Pulse.add(timserise(PulseData.I'),'I');

%I=Simulink.SimulationData.Dataset(PulseData.I');
%V=Simulink.SimulationData.Dataset(PulseData.V');

I=timeseries(PulseData.I');
V=timeseries(PulseData.V');
T=timeseries(PulseData.T');
Pulse=Simulink.SimulationData.Dataset;

Pulse = Pulse.add(I,'I');
Pulse = Pulse.add(V,'V');
%Pulse = Pulse.add(T,'T');

%%
C1=[1.6839e+03 7.7101e+03 8.1904e+03 5.2744e+03 1.1362e+04 4.3266e+03 3.0308e+03 8.5891e+03 7.0970e+03 2.5238e+04 3.9241e+05];
C2=[1.6860e+03 8.2017e+03 1.0714e+04 1.8418e+05 4.5154e+03 1.2439e+04 1.6954e+04 4.8186e+03 4.2304e+03 6.2171e+03 5.1715e+04];
Em=[3.2698 3.4587 3.5507 3.5991 3.6226 3.6592 3.7489 3.8357 3.9367 4.0497 4.0962];
R0=[0.3408 0.1913 0.2363 0.2312 0.2239 0.2217 0.2333 0.2323 0.2236 0.2278 0.1566];
R1=[0.4767 0.0212 0.0179 0.0161 0.0191 0.0070 0.0195 0.0198 0.0149 0.0344 0.0206];
R2=[0.4745 0.0257 0.0310 0.0182 0.0068 0.0139 0.0418 0.0111 0.0091 0.0135 0.0731];
%%
%C1=[1.6839e+03 7.7101e+03 8.1904e+03 5.2744e+03 1.1362e+04 4.3266e+03 3.0308e+03 8.5891e+03 7.0970e+03 2.5238e+04 3.9241e+05];
%C2=[1.6860e+03 8.2017e+03 1.0714e+04 1.8418e+05 4.5154e+03 1.2439e+04 1.6954e+04 4.8186e+03 4.2304e+03 6.2171e+03 5.1715e+04];
%Em=[3.2698 3.4587 3.5507 3.5991 3.6226 3.6592 3.7489 3.8357 3.9367 4.0497 4.0962];
%R0=[0.3408 0.1913 0.2363 0.2312 0.2239 0.2217 0.2333 0.2323 0.2236 0.2278 0.1566];
%R1=[0.4767 0.0212 0.0179 0.0161 0.0191 0.0070 0.0195 0.0198 0.0149 0.0344 0.0206];
%R2=[0.4745 0.0257 0.0310 0.0182 0.0068 0.0139 0.0418 0.0111 0.0091 0.0135 0.0731];