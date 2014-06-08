%S(teta) é uma funçao que percorre a matriz de magnitude e vai fazendo a
%soma incremental de cada um dos valores de magnitudes(cada um em uma posicao da
%matriz) em cada uma dos angulos variando de 5 em 5 graus.

%recebo matriz magnitude
%encontro a posição do meio da matriz 


%é o indice que 
k = 1;
S(k) = 0;
for angulo 0:5:360
    if angulo == 0
        for i=32:64
            S(k) = mag(32,i);
        end
    end
    else
        for raio = 1:32
            x = cos(angulo)*raio;
            y = sen(angulo)*raio;
            for x1 = x:-1:32
                Sparcial(raio) = 0;
                Sparcial(raio) = Sparcial(raio-1) + mag(x,y);
            end
        end
end
