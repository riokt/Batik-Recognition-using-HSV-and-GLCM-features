function imgSimilar=euDistance(Query)
    % Membaca seluruh gambar training
%     path = 'dataTrain';  % path perlu disesuaikan
%     trainPath = dir(strcat(path,'\*.jpg'));
%     imgNum = length(trainPath);
    train=load('dataTrain.mat');
    trainVal=train.eksfiturTrain;
    %varian = 10;
    %jenis = 50;
    
    % histogram dari datates %
    %imgHist1 = imhist(Query);

    % tabel kesamaan datates dengan dataset,          %
    % dengan 2 kolom yaitu index dan tingkat kesamaan %
    euDist = cell(size(trainVal,1),2);

    for n = 1 : size(trainVal,1)
        %dataset = fullfile(path,trainPath(n).name);
        %dataset = imread(dataset);
        %
        %imgHist2 = imhist(dataset);

        %euDist{n,2} = sqrt(sum((trainVal{n} - Query{1}).^2));
        euDist{n,2} = pdist2(trainVal{n},Query{1},'chebychev');
        euDist{n,1} = trainVal(n,2);
    end

    imgSimilar = sortrows(euDist,2);
end


