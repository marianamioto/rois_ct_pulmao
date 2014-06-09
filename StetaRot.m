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
iters = 9;
ultima_soma = 0;
somas = zeros(iters, 1);

%for para o loop que armazena o conjunto de pontos de cada angulo
for n = 1:iters
    %hipotenusa para angulo até 45 graus 
    ca = tam/2;
    hip  = ca/(cosd(ang));
    co = sind(ang)*hip;
    
    %encontra os pontos para até 45 graus
    if (tam / 2 - co) < 1
        phy = 1;
    else
        phy = tam / 2 - co;
    end
    phx = tam;

    %traça a reta que vai do ponto inicial até os pontos encontrados em x e y
    [xs ys] = encontrapontos(pix,piy,pfy,phx,phy);
    
    %coloca os pontos encontrados pelo algoritmo de bresenham na struct
    ultima_soma = soma(xs,ys, ultima_soma, mag);
    somas(n) = ultima_soma;
   
     
    ang = ang + 5;
     
     
end
