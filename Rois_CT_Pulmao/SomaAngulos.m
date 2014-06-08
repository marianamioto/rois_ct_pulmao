%funão que faz os somatorios 
%Steta


    %Steta(0,1) = mag(32,32) + mag(32,33)+ .. + mag(32,64)
  
    for i = coluna:fim
        angulo =1; resultado = 1;
        Steta(angulo,resultado) = Steta(angulo,resultado) + mag(linha,i);
        angulo =2; resultado = 2;
        Steta(angulo,resultado) = Steta(angulo,resultado) + mag(i,coluna);
        
    end
    
    for i=linha:-1:inicio
        angulo =3; resultado = 3;
        Steta(angulo,resultado) = Steta(angulo,resultado) + mag(i,coluna);
        angulo =4; resultado = 4;
        Steta(angulo,resultado) = Steta(angulo,resultado) + mag(linha,i);
    end
 
    angulo =5; resultado = 5;
    for j = coluna:-1:inicio
        for i=linha:-1:inicio
            
            Steta(angulo,resultado) = Steta(angulo,resultado) + mag(i,j);
        end
    end
    
    angulo =6; resultado = 6;
     for j = coluna:fim
        for i=linha:fim
            Steta(angulo,resultado) = Steta(angulo,resultado) + mag(i,j);
        end
     end
    
    for j = coluna:-1:inicio
        for i=linha:fim
            angulo =7; resultado = 7;
            Steta(angulo,resultado) = Steta(angulo,resultado) + mag(i,j);
            angulo =8; resultado = 8;
            Steta(angulo,resultado) = Steta(angulo,resultado) + mag(j,i);
        end
    end
    
    i=5;
    j=1;
   while i < 90 
        pontos(j) = ceil(((tan(i))*64)); 
        i = i + 5;
        j = j + 1;
   end
 