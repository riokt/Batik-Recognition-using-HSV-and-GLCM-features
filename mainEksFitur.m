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