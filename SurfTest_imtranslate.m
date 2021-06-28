source = imread('test5.jpg');
target = imread('test6.jpg');
source = imresize(source, 0.1); %사이즈 줄이기
target = imresize(target, 0.1); %사이즈 줄이기

%% SURF 


sourcePoints=detectSURFFeatures(rgb2gray(source),'MetricThreshold',100.0,'NumOctaves',1,'NumScaleLevels',6);
targetPoints=detectSURFFeatures(rgb2gray(target),'MetricThreshold',100.0,'NumOctaves',1,'NumScaleLevels',6);
[sourceFeatures,sourcePoints]=extractFeatures(rgb2gray(source),sourcePoints,'SURFSize',64);
[targetFeatures,targetPoints]=extractFeatures(rgb2gray(target),targetPoints,'SURFSize',64);

boxPairs = matchFeatures(sourceFeatures, targetFeatures);

matchedSourcePoints = sourcePoints(boxPairs(:, 1), :);
matchedTargetPoints = targetPoints(boxPairs(:, 2), :);

%차이값에 빈도가 많은것이 평균
different_ = mode(round(matchedSourcePoints.Location ...
    - matchedTargetPoints.Location));

different = [different_(1), different_(2)];
% IS there any metric can used to make accurate decision if there is a match or not instead of percentage because its not accurate as required
numPairs = length(boxPairs); %the number of pairs
percentage  = numPairs/100;

%% Combine

% 이미지 겹치기
target2 = imtranslate(target,[different(1,1), different(1,2)]);

clf;

subplot(1,2,1);
imshow(imrotate(target,-90)); alpha(0.5); hold on;
imshow(imrotate(source,-90));alpha(0.5);hold off;
title('합치기 전');

subplot(1,2,2);
imshow(imrotate(target2,-90)); alpha(0.5); hold on;
imshow(imrotate(source,-90));alpha(0.5);
title('합친 후');