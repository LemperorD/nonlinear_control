clear
clc
close all

%% 参数设置
alpha = 3;                     % 修改这里：alpha
x0 = [-5 0 5];          % 修改这里：初值
t = linspace(0,5,1000);        % 时间范围

%% 画图
figure
hold on

for i = 1:length(x0)

    if alpha == 1
        % 特殊情况
        x = x0(i) * exp(-t);
    else
        % 通解
        x = (x0(i)^(1-alpha) - (1-alpha)*t).^(1/(1-alpha));

        % 防止出现复数
        x(real(x) < 0) = NaN;
    end

    plot(t, x, 'LineWidth',2)

end

xlabel('t')
ylabel('x(t)')
title(['Solution trajectories, \alpha = ', num2str(alpha)])
legend(arrayfun(@(v) sprintf('x0 = %.2f',v), x0,'UniformOutput',false))

grid on