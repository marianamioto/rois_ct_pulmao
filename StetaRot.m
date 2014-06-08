%obtenção da imagem
img = imread('imagens/002_1.jpg');

%magnitude da tranformada que foi aplicada a imagem
%calcula a parte real da transformada de fourier
mag = abs((fftshift(fft2(img))));

%VARIAVEIS
%ponto inicial x e y
pix = 32;
piy = 32;

%angulo inicial do algoritmo
ang = 5;

tam = 64;

soma(1) = 0;
%for para o loop que armazena o conjunto de pontos de cada angulo
for n = 1:1
    %hipotenusa para angulo até 45 graus 
    ca = tam/2;
    hip  = ca/(cosd(ang));
    co = sind(ang)*hip;
    
    %encontra os pontos para até 45 graus
    if (co + tam / 2) > tam
        y = tam;
    else
        y = tam / 2 + co;
    end

    %traça a reta que vai do ponto inicial até os pontos encontrados em x e y
    [x y] = bresenham(pix,piy,x,y);

    %coloca os pontos encontrados pelo algoritmo de bresenham na struct
    linha(n).x = x;
    linha(n).y = y;
     
     
     
     
end

fileID = fopen('data.txt','w');
fprintf(fileID,'%6.2f ',mag);
fclose(fileID);