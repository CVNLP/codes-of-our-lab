train_label=load('C:\Users\Administrator\Desktop\���ݼ�\ѵ��\label.mat');   %60*512   60*256 60*1180
train_x=load('C:\Users\Administrator\Desktop\���ݼ�\ѵ��\SIFT.mat');
train_y=load('C:\Users\Administrator\Desktop\���ݼ�\ѵ��\VGG.mat');

%test_label =load('C:/Users/66/Documents/WeChat Files/alberthyne/Files/dcaFuse-master/����/Gist.mat');
test_x=load('C:\Users\Administrator\Desktop\���ݼ�\����\SIFT.mat');
test_y=load('C:\Users\Administrator\Desktop\���ݼ�\����\VGG.mat');



% Inputs:
%       X       :   pxn matrix containing the first set of training feature vectors
%                   p:  dimensionality of the first feature set
%                   n:  number of training samples
% 
%       Y       :   qxn matrix containing the second set of training feature vectors
%                   q:  dimensionality of the second feature set
% 
%       label   :   1xn row vector of length n containing the class labels

X=train_x.SiftFeats_j;Y=train_y.vgg16;label=train_label.GistFeats;
[Ax, Ay, trainXdca, trainYdca] = dcaFuse(train_x.SiftFeats_j,train_y.vgg16,train_label.GistFeats');
