% Nome dos arquivos com extensao .jpg localizados no diretorio recebido
    
    directory = 'C:\Users\Marcela\Desktop\TCC\Rois_CT_Pulmao\Rois_CT_Pulmao'
    dirOutput = dir(fullfile(directory,'*.jpg'));
    fileNames = {dirOutput.name}';    
    
    
    % caminho do arquivo{i} localizado no diretorio
        filePath = strcat(directory,'\',fileNames{i});
        % leitura da imagem
        image = imread(filePath);
        
     %chamada das minhas funções, 
     %função que encontra pontos para fazer o somatorio de 
     %de 0 até 180 graus
     
     
     
     %função que encontra pontos que estao no raio de 0 até 31
     
     
     %fazer a somatoria para cada imagem que eu tenho, e 
     
     %gerar histograma para cada vetor de somatorios
     
     
     %calculo a média do histograma
     %calculo o desvio padrão do histo
     %calculo o skewness do histo
     %calculo o kurtosis do histo