%obtenção da imagem
img = imread('imagens/002_1.jpg');

%magnitude da tranformada que foi aplicada a imagem
%calcula a parte real da transformada de fourier
mag = abs((fftshift(fft2(img))));

%VARIAVEIS
%ponto inicial x e y do cateto adjacente
pix = 32;
piy = 32;
%ponto final x e y do cateto adjacente
pfx = 64;
pfy = 32;
%pontos finais da hipotenusa
phx = 0;
phy = 0;
%esse pontos iram variam conforme o angulo muda

%angulo inicial do algoritmo
ang = 5;

tam = 64;
iters = 18;
ultima_soma = 0;
somas = zeros(iters*2, 1);
metade = tam / 2;


%for para o loop que armazena o conjunto de pontos de cada angulo
for n = 1:iters
    %hipotenusa para angulo até 45 graus 
    ca = metade;
    hip  = ca/(cosd(ang));
    co = sind(ang)*hip;
    
    %encontra os pontos para até 45 graus
    if ang <= 45
        phx = tam;
        if (metade - co) < 1
            phy = 1;
        else
            phy = metade - co;
        end
    else
        phy = 1;
        if (metade + co) > tam
            phx = tam;
        else
            phx = metade + co;
        end
    end

        
    %traça a reta que vai do ponto inicial até os pontos encontrados em x e y
    [xs ys] = encontrapontos(pix,piy,pfy,phx,phy);
    
    %coloca os pontos encontrados pelo algoritmo de bresenham na struct
    ultima_soma = soma(xs,ys, ultima_soma, mag);
    somas(n) = ultima_soma;
   
    ang = ang + 5;     
end


ang = 0;
mag = rot90(mag, -1);

%for para o loop que armazena o conjunto de pontos de cada angulo
for n = 1:iters
    %hipotenusa para angulo até 45 graus 
    ca = metade;
    hip  = ca/(cosd(ang));
    co = sind(ang)*hip;
    
    %encontra os pontos para até 45 graus
    if ang <= 45
        phx = tam;
        if (metade - co) < 1
            phy = 1;
        else
            phy = metade - co;
        end
    else
        phy = 1;
        if (metade + co) > tam
            phx = tam;
        else
            phx = metade + co;
        end
    end

        
    %traça a reta que vai do ponto inicial até os pontos encontrados em x e y
    [xs ys] = encontrapontos(pix,piy,pfy,phx,phy);
    
    %coloca os pontos encontrados pelo algoritmo de bresenham na struct
    ultima_soma = soma(xs,ys, ultima_soma, mag);
    somas(n+18) = ultima_soma;
   
    ang = ang + 5;     
end
