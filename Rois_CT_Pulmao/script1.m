
%obtenção da imagem
img = imread('002_1.jpg');

%magnitude da tranformada que foi aplicada a imagem
mag = abs((fftshift(fft2(img))));

%VARIAVEIS
%ponto inicial x e y
pix = 32;
piy = 32;

%guias para algoritmo de soma
guiax = 32;
guiay = 32;

%angulo inicial do algoritmo
ang = 5;

soma(1) = 0;
%for para o loop que armazena o conjunto de pontos de cada angulo
for n = 1:9
    %hipotenusa para angulo até 45 graus 
    hip  = 32/(cosd(ang));

    %encontra os pontos para até 45 graus
    x = 31 + cosd(ang)*hip;
    y = 31 - sind(ang)*hip;

    %traça a reta que vai do ponto inicial até os pontos encontrados em x e y
    [x y] = bresenham(pix,piy,y,x);

    %coloca os pontos encontrados pelo algoritmo de bresenham na struct

        
     linha(n).x = x;
     linha(n).y = y;
     
     
     %soma(n) = 0;
     for m =1:length(linha(n).x)
         i = linha(n).x(m);
         j = linha(n).y(m);
         
         if i <= 0 
            continue;
         end
    
         if i == guiax && j == guiay
             soma(n+1) = soma(n) + mag(i,j);
         else
             while i <= guiax
                 soma(n+1) = soma(n) + mag(i,j);
                 i = i + 1;
             end
         end
         guiax = guiax + 1;
     end
     
     
     ang = ang + 5;
     guiax = 32;
     
end


            