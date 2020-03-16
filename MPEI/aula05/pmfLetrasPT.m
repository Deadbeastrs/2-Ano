function fmp=pmfLetrasPT(ficheiros,alpha)
%  esta fun��o devolve a fun��o massa probabilidade
%  dos caracteres em alpha
%  processa os ficheiros no cellarray ficheiros
%
%  VER teste.m para um exemplo de utiliza��o


 

%%   para contagem  ...
contador=zeros(1,length(alpha));


debug=0;  %  para controlar a informa��o que � mostrada
         % debug = 1 mostra detalhes do funcionamento   

totalLetras=0;  %  para contar as letras


%  para todos os ficheiros no array ficheiros...
for fich=1:length(ficheiros)

    

    % abrir um dos ficheiros para leitura
    fid=fopen(ficheiros{fich});

    %  enquanto n�o terminar o ficheiro
    while 1
    
        % ler uma linha do ficheiro
        linha=fgetl(fid);
    
        % se n�o for um caractere termina
        if ~ischar(linha), break, end
        
        %contar sempre os carriage return
        if length(linha)>0
            linha=[linha sprintf('\n')];
        end
        
        totalLetras=totalLetras+ length(linha);
    
        %  para cada s�mbolo em alpha
        for k=1:length(alpha)
            % ver onde ocorre o s�mbolo na linha
            resul=find(linha==alpha(k));
            
            %  incrementar o contador desse s�mbolo
            contador(k)=contador(k)+length(resul);
        end
  
    end

    fclose(fid);  %  n�o esquecer de fechar o ficheiro

end  % do ciclo for
  
  

%%  Guardar para aulas seguintes
  
fmp=contador / (sum(contador)) ;  


