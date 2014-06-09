% Nome dos arquivos com extensao .jpg localizados no diretorio recebido
    
     directory = 'C:\Users\Marcela\Desktop\Rois_CT_Pulmao\imagens';
     dirOutput = dir(fullfile(directory,'*.jpg'));
     fileNames = {dirOutput.name}';    
    
    for i =1:3258
         % caminho do arquivo{i} localizado no diretorio
         filePath = strcat(directory,'\',fileNames{i});
         % leitura da imagem
         imagem = imread(filePath);

         %magnitude da tranformada que foi aplicada a imagem
         %calcula a parte real da transformada de fourier
         mag = abs((fftshift(fft2(imagem))));



         %função que encontra pontos para fazer o somatorio de de 0-180 graus
         soma180 = StetaRot(mag);
         soma180Acumulada = somAcumulada(soma180);

         %função que encontra pontos que estao no raio de 0 até 31
         raiosSomados = StetaR(mag);

         %gerar histograma para cada vetor de somatorios
         histSoma180 = hist(soma180);
         histSoma180Ac = hist(soma180Acumulada);
         histRaios = hist(raiosSomados);
        
         %calculo a média do histograma
         medias1(i).medianHist = mean(histSoma180);
         medias2(i).medianHist = mean(histSoma180Ac);
         medias3(i).medianHist = mean(histRaios);
         
         %calculo a médiana do histograma
         medianas1(i).medianaHist = median(histSoma180);
         medianas2(i).medianaHist = median(histSoma180Ac);
         medianas3(i).medianaHist = median(histRaios);
         
         %calculo o desvio padrão do histo
         desvio1(i).standardDeviationHist = std(histSoma180);
         desvio2(i).standardDeviationHist = std(histSoma180Ac);
         desvio3(i).standardDeviationHist = std(histRaios);
         
         
         %calculo o skewness do histo
         skew1(i).skewnessHist = skewness(histSoma180);
         skew2(i).skewnessHist = skewness(histSoma180Ac);
         skew3(i).skewnessHist = skewness(histRaios);
         
         %calculo o kurtosis do histo
         kurt1(i).kurtosisHist = kurtosis(histSoma180);
         kurt2(i).kurtosisHist = kurtosis(histSoma180Ac);
         kurt3(i).kurtosisHist = kurtosis(histRaios);
         
         
    end