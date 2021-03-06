
folderTrain = dir('dataTrain\*.jpg');
folderTest = dir('dataTest\*.jpg');

%eksfiturTrain = cell(4800,2);
%eksfiturTest = cell(1200,2);
% for iter = 4052 : length(folderTrain)
%     filename = folderTrain(iter).name;
%     img = imread(strcat('dataTrain\',filename));
%     eksfiturTrain(iter,:) = {[histHSV(img) glcmEksFitur(img)] filename};
% end
% save('dataTrain.mat','eksfiturTrain')

for iter = 346 : length(folderTest)
    filename = folderTest(iter).name;
    img = imread(strcat('dataTest\',filename));
    eksfiturTest(iter,:) = {[histHSV(img) glcmEksFitur(img)] filename};
end
save('dataTest.mat','eksfiturTest')

folderTrain = 'dataTrain\*.jpg';
folderTest = 'dataTest\*.jpg';

eksfiturTrain = zeros(4800,57);

for iter = 1 : length(folderTrain)
    filename = folderTrain(iter).name;
    img = imread(filename);
    eksfiturTrain(iter,:) = [histHSV(img) glcmEksFitur(img) data(2)];
end

for iter = 1 : length(folderTest)
    filename = folderTest(iter).name;
    img = imread(filename);
    eksfiturTrain(iter,:) = [histHSV(img) glcmEksFitur(img) data(2)];
end

