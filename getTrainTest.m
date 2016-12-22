%function [ dataTrain ] = getTrainTest( srcFile )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
srcFile='DATASET BATIK\*.jpg';
srcFiles=dir(srcFile);
folderTrain = 'dataTrain\';
folderTest = 'dataTest\';

for iter = 1 : length(srcFiles)
    filename = srcFiles(iter).name;
    img = imread(strcat('DATASET BATIK\',filename));
    namafile = filename(1:length(filename)-4);      % Buat ngilangin substring '.jpg' dari filename
    data = strsplit(namafile, '_');
    if data{3} == '5'
            imwrite(img,strcat(folderTest,filename));
    else
            imwrite(img,strcat(folderTrain,filename));
    end
    
end

%end

