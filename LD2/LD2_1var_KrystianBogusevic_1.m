x = 5:2:34;
y = exp(x);
z = x ./ y;
rezultatas = z'

M = [pi/2 3i; log(2) 2*pi];
nauja_eilute = [exp(M(1,1)) exp(M(1,2))];
M2 = [M; nauja_eilute];
sumos = sum(M2, 2)

t = 0:0.001:1;
amplitude = 5;
f = 5;
sigma = 1.5;
U1 = 3;
U2 = 2;

s = amplitude * sin(2*pi*f*t);
n = sigma * randn(size(t));
s_triuksmas = s + n;

virs_ribos = s_triuksmas(s_triuksmas > U1);

s_filtruotas = s_triuksmas;
s_filtruotas(abs(s_filtruotas) < U2) = 0;

dydis_viso = length(s_triuksmas)
dydis_atrinktu = length(virs_ribos)
didziausia = max(s_filtruotas)
maziausia = min(s_filtruotas)