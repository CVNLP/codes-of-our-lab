clc;clear;




trainX=load('C:\Users\Administrator\Desktop\����\ccaFuse-master\ѵ��\SIFT+RGB.mat');
trainY=load('C:\Users\Administrator\Desktop\����\ccaFuse-master\ѵ��\LBP.mat');

testX=load('C:\Users\Administrator\Desktop\����\ccaFuse-master\����\SIFT+RGB.mat');
testY=load('C:\Users\Administrator\Desktop\����\ccaFuse-master\����\LBP.mat');

[trainZ,testZ]=ccaFuse(trainX.Z, trainY.LBPFeats_j, testX.Z, testY.LBPFeats_j, 'sum');