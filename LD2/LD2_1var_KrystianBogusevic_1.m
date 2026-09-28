x = 5:2:34;
exp_x = exp(x);
dalmuo = x ./ exp_x;
atsakymas = dalmuo';

M = [pi/2 3i; log(2) 2*pi];
eilute = [exp(M(1,1)) exp(M(1,2))];
M2 = [M; eilute];
eiluciu_sumos = sum(M2, 2);

t = 0:0.001:1;
amplitude = 5;
f = 5;
sigma = 1.5;
U1 = 3;
U2 = 2;

s = amplitude * sin(2*pi*f*t);
n = sigma * randn(size(t));
s_triuksmas = s + n;

atrinktas = s_triuksmas(s_triuksmas > U1);

s_filtruotas = s_triuksmas;
s_filtruotas(abs(s_filtruotas) < U2) = 0;

viso_dydis = length(s_triuksmas)
atrinkto_dydis = length(atrinktas)
didziausia = max(s_filtruotas)
maziausia = min(s_filtruotas)