% ���ƶ�ά��˹����
% ��ʽ�� p(z) = exp(-(z-u)^2/(2*d^2)/(sqrt(2*pi)*d)
% x y ����
X = 0 : 1 : 50;
Y = 0 : 1: 50;

% ����
d02= 25;
% ��ֵ(25, 25)
Z = zeros(51, 51);
for row = 1 : 1 : 51
    for col = 1 : 1 : 51
        Z(row, col) = (X(row) - 25) .* (X(row)-25) + (Y(col) - 25) .* (Y(col) - 25);
    end
end

Z = -Z/(2*d02);

Z = exp(Z) / (sqrt(2*pi) * sqrt(d02));
% ��ʾ��˹����
surf(X, Y, Z);