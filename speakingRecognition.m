function predY= speakingRecognition(X)
% 	model7=loadmodel('m.model',size(X,2));
    load model;
    [N,M] = size(X);
    yTesting=zeros(N,1);
    predY = svmpredict(yTesting,X,model);
end