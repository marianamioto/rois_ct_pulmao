% Nome dos arquivos com extensao .jpg localizados no diretorio recebido
    
     directory = 'C:\Users\Marcela\Desktop\TCC\Rois_CT_Pulmao\Rois_CT_Pulmao'
     dirOutput = dir(fullfile(directory,'*.jpg'));
     fileNames = {dirOutput.name}';    
    
    
     % caminho do arquivo{i} localizado no diretorio
     filePath = strcat(directory,'\',fileNames{i});
     % leitura da imagem
     imagem = imread(filePath);
     
     %magnitude da tranformada que foi aplicada a imagem
     %calcula a parte real da transformada de fourier
     mag = abs((fftshift(fft2(imagem))));

     
        
     %fun��o que encontra pontos para fazer o somatorio de de 0-180 graus
     soma180 = StetaRot(mag);
     soma180Acumulada = somAcumulada(soma180);
     
     %fun��o que encontra pontos que estao no raio de 0 at� 31
     raiosSomados = StetaR(mag);
     
     %gerar histograma para cada vetor de somatorios
     
     
     %calculo a m�dia do histograma
     %calculo o desvio padr�o do histo
     %calculo o skewness do histo
     %calculo o kurtosis do histo