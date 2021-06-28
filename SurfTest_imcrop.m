source = imread('test5.jpg');
target = imread('test6.jpg');
source = imresize(source, 0.1); %������ ���̱�
target = imresize(target, 0.1); %������ ���̱�

sourcePoints=detectSURFFeatures(rgb2gray(source),'MetricThreshold',100.0,'NumOctaves',1,'NumScaleLevels',6);
targetPoints=detectSURFFeatures(rgb2gray(target),'MetricThreshold',100.0,'NumOctaves',1,'NumScaleLevels',6);
[sourceFeatures,sourcePoints]=extractFeatures(rgb2gray(source),sourcePoints,'SURFSize',64);
[targetFeatures,targetPoints]=extractFeatures(rgb2gray(target),targetPoints,'SURFSize',64);

boxPairs = matchFeatures(sourceFeatures, targetFeatures);

matchedSourcePoints = sourcePoints(boxPairs(:, 1), :);
matchedTargetPoints = targetPoints(boxPairs(:, 2), :);

% IS there any metric can used to make accurate decision if there is a match or not instead of percentage because its not accurate as required 
numPairs = length(boxPairs); %the number of pairs
percentage  = numPairs/100;

     if percentage >= 0.40
     disp('We have this');
       else
     disp('We do not have this');
     disp(percentage);
     end
     
figure(1);
subplot(1,2,1)
imshow(source); hold on;
plot(matchedSourcePoints.selectStrongest(10));
title("source �̹��� Ư¡��");

subplot(1,2,2)
imshow(target); hold on;
plot(matchedTargetPoints.selectStrongest(10));
title("target �̹��� Ư¡��");
hold off;



%% ��ġ�� �̹����� ũ���ϱ�
different = matchedSourcePoints.Location ...
 - matchedTargetPoints.Location;

[y1, x1, z1] = size(source);
[y2, x2, z2] = size(target);
source2 = imcrop(source,[ 0+different(1,1) 0+different(1,2) x1 y1]);
target2 = imcrop(target,[ 0 0 x2-different(1,1) y2-different(1,2)]);

figure(2);
subplot(1,2,1);

%imshow(source); alpha(.5); hold on;
%imshow(target);alpha(.5);
% ȸ��
imshow(imrotate(source,-90)); alpha(.5); hold on;
imshow(imrotate(target,-90));alpha(.5);
title("ũ�� ��");


subplot(1,2,2);
%imshow(source2); alpha(.5); hold on;
%imshow(target2);alpha(.5);
% ȸ��
imshow(imrotate(source2,-90)); alpha(.5); hold on;
imshow(imrotate(target2,-90));alpha(.5);
title("ũ�� ��");