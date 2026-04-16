clc; clear; close all;

% 时间设置
tspan = [0 10];

% 初始条件（可以多试几个）
x0 = [10000; 10000];

% 调用ode45
[t, x] = ode45(@system2, tspan, x0);

% 画图
figure;
plot(t, x(:,1), 'LineWidth', 2); hold on;
plot(t, x(:,2), 'LineWidth', 2);
grid on;
legend('x_1', 'x_2');
xlabel('Time (s)');
ylabel('States');
title('System 2 State Response');

% ==========================
% 系统函数
function dxdt = system2(t, x)
    dxdt = zeros(2,1);
    dxdt(1) = -x(1) + 2*sin(t)*x(2);
    dxdt(2) = -(t+1)*x(2);
end