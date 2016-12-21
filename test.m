xapp = [];
yapp = [];

file_data = load('training.data');
Data = file_data(:,1:end-1)';
Labels = file_data(:, end)';

xapp = [xapp,Data];
yapp = [yapp,Labels];
[N,M] = size(xapp);



xTesting = [];
yTesting = [];
for i=1:M
    xTesting  = [xTesting,xapp(:,i)];
    yTesting = [yTesting,yapp(i)];
end;
xTesting = xTesting';
yTesting = yTesting';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

predY= speakingRecognition(xTesting)

[N,M] = size(predY);
count = 0;

for i = 1:N
    if (predY(i,1) == yTesting(i,1) )
        count = count+1;
    end;
end;
recognitionRate  =count/N

count1 = 0;
for i = 1:N
    if (predY(i,1) == 1)
        count1 = count1+1;
    end;
end;
count1