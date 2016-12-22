folderTrain = dir('dataTrain\*.jpg');
folderTest = dir('dataTest\*.jpg');

eksfiturTrain = cell(4800,2);

for iter = 1 : length(folderTrain)
    filename = folderTrain(iter).name;
    img = imread(strcat('dataTrain\',filename));
    eksfiturTrain(iter,:) = {[histHSV(img) glcmEksFitur(img)] filename};
end
save('dataTrain.mat','eksfiturTrain')

for iter = 1 : length(folderTest)
    filename = folderTest(iter).name;
    img = imread(strcat('dataTest\',filename));
    eksfiturTrain(iter,:) = {histHSV(img) glcmEksFitur(img) filename};
end
save('dataTest.mat','eksfiturTest')