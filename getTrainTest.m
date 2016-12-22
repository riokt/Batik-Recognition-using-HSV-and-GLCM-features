<<<<<<< HEAD
%function [ dataTrain ] = getTrainTest( srcFile )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
srcFile='DATASET BATIK\*.jpg';
srcFiles=dir(srcFile);
=======
function [ dataTrain ] = getTrainTest( srcFiles )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

>>>>>>> 7b1e3e0eb22ccedf07d419ae5accb839b9e558b5
folderTrain = 'dataTrain\';
folderTest = 'dataTest\';

for iter = 1 : length(srcFiles)
    filename = srcFiles(iter).name;
<<<<<<< HEAD
    img = imread(strcat('DATASET BATIK\',filename));
    namafile = filename(1:length(filename)-4);      % Buat ngilangin substring '.jpg' dari filename
    data = strsplit(namafile, '_');
    if data{3} == '5'
            imwrite(img,strcat(folderTest,filename));
    else
            imwrite(img,strcat(folderTrain,filename));
=======
    img = imread(filename);
    namafile = filename(1:length(filename)-4);      % Buat ngilangin substring '.jpg' dari filename
    data = strsplit(namafile, '_');
    if data{3} == '5'
            imwrite(img,folderTest,filename);
    else
            imwrite(img,folderTrain,filename);
>>>>>>> 7b1e3e0eb22ccedf07d419ae5accb839b9e558b5
    end
    
end

<<<<<<< HEAD
%end
=======
end
>>>>>>> 7b1e3e0eb22ccedf07d419ae5accb839b9e558b5

