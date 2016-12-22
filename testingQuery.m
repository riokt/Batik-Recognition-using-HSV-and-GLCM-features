testing=load('dataTest.mat');
distanceList=cell(size(testing.eksfiturTest,1),50);
for i=1:size(testing.eksfiturTest,1)
    Query=testing.eksfiturTest(i,:);
    jarak=euDistance(Query);
    distanceList(i,:)=jarak(1:50,1)';
end