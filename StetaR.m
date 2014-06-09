%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%funcao StetaR, retorna um vetor com as somas de cada raio em cada posicao
%do vetor

function somasRaios = StetaR(mag)

%variáveis r = raio inicial, xc = x central, yc = y central
r =1; 
xc = 32;
yc = 32;

pontosdoRaio = circle2(r,xc,yc);
somasRaios = somaR(pontosdoRaio,mag);

end