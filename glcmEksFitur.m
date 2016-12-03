function glcmFeature=glcmEksFitur(image)
    %GLCM
    glcm=graycomatrix(rgb2gray(image),'offset' ,[0 1; -1 1; -1 0; -1 -1]);
    
    matKook=mean(glcm,3)/4; %jumlah total glcm berbagai arah
    
    sz=size(matKook,1);
    I=[1:sz];
    sumX=sum(matKook,1);
    sumY=sum(matKook,2);
    meanX=sumX*I'/sum(I);
    meanY=sumY*I/sum(I);
    %sqrt((I-meanX).^2*SumX');
    %stdvY=sqrt((I-meanX).^2*SumY');
    
    %ekstraksi fitur
    glcmFeature=zeros(1,sz);
    for i=1:sz
        for j=1:sz
            glcmFeature(1)=glcmFeature(1)+matKook(i,j);                        %asm
            glcmFeature(2)=glcmFeature(2)+matKook(i,j)*(i-j)^2;                %kontras
            glcmFeature(3)=0;                                                  %korelasi
            %glcmFeature(4)=glcmFeature(4)+(i-meanX)*(j-meanY)*matKook(i,j);    %variansi
            glcmFeature(5)=glcmFeature(5)+(matKook(i,j))/(1+(i-j)*(i-j));      %Inverse Different Moment 
            glcmFeature(6)=-(glcmFeature(6)+(matKook(i,j))*(log2(matKook(i,j)+eps)));           %Entropy
        end
    end
end