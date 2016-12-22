function [ dataTrain ] = getTrainTest( srcFiles )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

folderTrain = 'dataTrain\';
folderTest = 'dataTest\';

for iter = 1 : length(srcFiles)
    filename = srcFiles(iter).name;
    img = imread(filename);
    namafile = filename(1:length(filename)-4);      % Buat ngilangin substring '.jpg' dari filename
    data = strsplit(namafile, '_');
    if data{3} == '5'
            imwrite(img,folderTest,filename);
    else
            imwrite(img,folderTrain,filename);
    end
    
end

end

