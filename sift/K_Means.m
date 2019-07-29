function [ KMeans ] = K_Means( Feats, K , initMeans )
%K_MEANS K���࣬���ݸ���������������������Լ���ʼ���ģ��������������о��࣬�����ؽ��
%WRITTEN BY GUOCHUAN

fprintf('\n K_means...\n');

for n = 1:K;    
    KMeans(n).value = initMeans(n,1:128); 
    KMeans(n).data = initMeans(n,:);
    KMeans(n).count = 1;
end;

for N=1:size(Feats,1)
    fprintf('K_means Feats:%d\n',N);
    min = do_eucidean_distance(Feats(N,(1:128)),KMeans(1).value);
    num = 1;
    for M=2:K
%         fprintf('K_means K:%d\n',M);       
        distance = do_eucidean_distance(Feats(N,(1:128)),KMeans(M).value);
        if(distance<min)
            min = distance;
            num = M;
        end;
    end;
    KMeans(num).data = [KMeans(num).data;Feats(N,:)];
    KMeans(num).value = KMeans(num).value * KMeans(num).count+ Feats(N,1:128);
    KMeans(num).count = KMeans(num).count+1;
    KMeans(num).value = KMeans(num).value / KMeans(num).count; 
end;
end

