%function glcmFeature=glcmEksFitur(image)
    %GLCM
    glcm=graycomatrix(rgb2gray(image),'offset' ,[0 1; -1 1; -1 0; -1 -1]);
    glcmFeature=zeros(1,24);
    for a=1:4
        matKook=glcm(:,:,a); %jumlah total glcm berbagai arah

        sz=size(matKook,1);
        I=(1:sz);
        sumX=sum(matKook,1);
        sumY=sum(matKook,2);
        meanX=sumX*I';
        meanY=sumY'*I';
        stdvX=sqrt((I-meanX).^2*sumX');
        stdvY=sqrt((I-meanY).^2*sumY);

        %ekstraksi fitur
        for i=1:sz
            for j=1:sz
                glcmFeature((a-1)*6+1)=glcmFeature((a-1)*6+1)+matKook(i,j);                                         %asm
                glcmFeature((a-1)*6+2)=glcmFeature((a-1)*6+2)+matKook(i,j)*(i-j)^2;                                 %kontras
                glcmFeature((a-1)*6+3)=glcmFeature((a-1)*6+3)+(i)*(j)*matKook(i,j);                                 %korelasi
                glcmFeature((a-1)*6+4)=glcmFeature((a-1)*6+4)+(i-meanX)*(j-meanY)*matKook(i,j);                     %variansi
                glcmFeature((a-1)*6+5)=glcmFeature((a-1)*6+5)+(matKook(i,j))/(1+(i-j)*(i-j));                       %Inverse Different Moment 
                glcmFeature((a-1)*6+6)=-(glcmFeature((a-1)*6+6)+(matKook(i,j))*(log2(matKook(i,j)+eps)));           %Entropy

                glcmFeature((a-1)*6+3)=(glcmFeature((a-1)*6+3)-meanX*meanY)/(stdvX*stdvY);
            end
        end
    end
%end