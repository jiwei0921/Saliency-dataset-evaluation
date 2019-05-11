%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%����ͼ��Աȶ�
%���������������ػҶ�ֵ����Χ8�������ػҶ�ֵ֮���ƽ��֮�ͣ���������֮��ĸ�����
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function cg = contrast_near8(f) %fΪ����ͼ��cgΪ����ĶԱȶ���ֵ����Ӣ��contrast gradient������ĸ���
[m,n] = size(f);%��ԭʼͼ�������m������n
g = padarray(f,[1 1],'symmetric','both');%��ԭʼͼ�������չ������50*50��ͼ����չ����52*52��ͼ��
%��չֻ�Ƕ�ԭʼͼ����ܱ����ؽ��и��Ƶķ�������
[r,c] = size(g);%����չ��ͼ�������r������c
g = double(g); %����չ��ͼ��ת���˫���ȸ�����
k=0; %����һ��ֵk����ʼֵΪ0
for i=2:r-1
    for j=2:c-1
        k = k+(g(i,j-1)-g(i,j))^2+(g(i-1,j)-g(i,j))^2+(g(i,j+1)-g(i,j))^2+(g(i+1,j)-g(i,j))^2+...
        (g(i-1,j-1)-g(i,j))^2+(g(i-1,j+1)-g(i,j))^2+(g(i+1,j-1)-g(i,j))^2+(g(i+1,j+1)-g(i,j))^2;
    end
end
cg = k/(8*(m-2)*(n-2)+6*(2*(m-2)+2*(n-2))+4*3);%��ԭʼͼ��Աȶ�