clc;
clear;
close all;

% 定义 x1 的取值范围
x1 = linspace(-4, 4, 1000);

% 根据方程 V(x)=x1-x2^2/2=0
% 解得 x1 = x2^2/2
% 即 x2 = ±sqrt(2*x1)

x1_pos = linspace(0, 4, 1000);
x2_upper = sqrt(2*x1_pos);
x2_lower = -sqrt(2*x1_pos);

% 绘制曲线
figure;
plot(x1_pos, x2_upper, 'b', 'LineWidth', 2);
hold on;
plot(x1_pos, x2_lower, 'b', 'LineWidth', 2);

% 坐标轴设置
grid on;
axis equal;
xlabel('x_1');
ylabel('x_2');
title('V(x)=x_1-x_2^2/2=0');

% 绘制坐标轴
xline(0,'k');
yline(0,'k');