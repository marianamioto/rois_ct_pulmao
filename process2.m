img = imread('002_1.jpg');

%magnitude da tranformada
mag = abs((fftshift(fft2(img))));

%fase da transformada
%fase = angle((fftshift(fft2(img))));

%nomaliza matriz de resultados

maiorValor = 0;
%encontro o maior valor absoluto
for i=1:64
    for j=1:64
        if mag(i,j) > maiorValor
            maiorValor = mag(i,j);
        end
    end
end

cont = 1;
for i=1:64
    for j=1:64
        mag(i,j) = mag(i,j)/maiorValor;
    end
end

%calcula a escala do eixo X e do eixo Y e monta um gráfico em 3D
Meio = (64/100)/2;
Inicio = (Meio - Meio*10);
Fim = (Meio + Meio*10);
Inc = 25/1000;
cont = 1;

for i=Inicio:Inc:Fim
    if(cont == 64)
        break;
    end
    X(cont) = i;
    Y(cont) = i;
    cont = cont + 1;
end


meshz(X,Y,mag);
grid on        


 