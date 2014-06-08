
%obtenção da imagem
img = imread('002_1.jpg');

%magnitude da tranformada que foi aplicada a imagem
mag = abs((fftshift(fft2(img))));

%VARIAVEIS
%ponto inicial x e y
pix = 32;
piy = 32;

%guias para algoritmo de soma

guiay = 32;

%angulo inicial do algoritmo
ang = 50;
soma(1) = 0;
px = 64;
mpx = 4;

%for para o loop que armazena o conjunto de pontos de cada angulo
for n = 10:18
    %hipotenusa para angulo até 45 graus 
    hip  = 32/(cosd(ang));

    %encontra os pontos para até 45 graus
    x = px - mpx;
    y = 1;

    %traça a reta que vai do ponto inicial até os pontos encontrados em x e y
    [x y] = bresenham(pix,piy,x,y);

    %coloca os pontos encontrados pelo algoritmo de bresenham na struct

     linha(n).x = x;
     linha(n).y = y;
     
     
     
     guiax = 32;
     for m =1:length(linha(n).x)
         j = linha(n).x(m);
         i = linha(n).y(m);
    
         if i == guiax && j == guiay
             soma(n+1) = soma(n) + mag(i,j);
         else
             while i <= guiax && i <= 64
                 soma(n+1) = soma(n) + mag(i,j);
                 i = i + 1;
             end
         guiax = guiax + 1;
         end
     end
     
     
     
     %acrencenta o angulo para uma proxima interacao
     ang = ang + 5;
     
end