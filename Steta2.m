%matriz mag teste
%mag = [2 3 5 2 1 4;3 3 4 1 0 3;2 5 3 2 1 2;1 3 2 0 2 1;0 6 4 2 1 0;0 1 2 3 4 5]

finalx = 6;
finaly = 6;

SF = 0;
meiox = 3;
meioy = 3;

raio = 1;
S(raio) = 0;

%no angulo 0 graus soma-se a linha do meio ate´a ultima posicao
for i = meiox:6
            S(raio) = S(raio)+ mag(meioy,i)
end

SF = S(raio);

%lista de pontos 
i = 1;
pontos(i) = 0;
k = 1;
for angulo = 5:5
    
   hip = 3/cosd(angulo) %maior tamanho que a hipotenusa pode ter
   for raio = 1:hipotenusa
       x = meiox + (round(cosd(angulo)*raio))
       y = meioy - (round(sind(angulo)*raio))
       
       %if com funcao que verifica se os pontos já fazem parte da lista de pontos
       if(verificaLista(x,y,i,pontos) ~= 0) 
         pontos(i) = x; i = i+1;
         pontos(i) = y;
       end 
       
       %SF = SF(k) + mag(pontos(i-2),pontos(i-1));
      % i = i+1;
       %k = k+1;
   end
   
   
end
        
       