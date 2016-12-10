function imgSimilar=euDist(imgQuery)
    % Membaca seluruh gambar training
    path = 'D:\CBIR\data set\Data Batik GLCM';  % path perlu disesuaikan
    trainPath = dir(strcat(path,'\*.jpg'));
    imgNum = length(trainPath);
    
    %varian = 10;
    %jenis = 50;
    
    % histogram dari datates %
    imgHist1 = imhist(imgQuery);

    % tabel kesamaan datates dengan dataset,          %
    % dengan 2 kolom yaitu index dan tingkat kesamaan %
    euDist = zeros(imgNum,2);

    for n = 1 : imgNum
        dataset = fullfile(path,trainPath(n).name);
        dataset = imread(dataset);
        imgHist2 = imhist(dataset);

        euDist(n,2) = sqrt(sum((imgHist1 - imgHist2).^2));
        euDist(n,1) = n;
    end

    imgSimilar = sortrows(euDist,2);
end


