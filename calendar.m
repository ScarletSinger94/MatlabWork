clc;
clear all;
close all;

Days={'Monday';'Tuesday'; 'Wednesday'; 'Thursday'; 'Friday'};
Days(1);
Days(1:2);
Days{1}(3);%squiggles is string, plain is the index dfor the letter
Days{1}(1:3);
%content addressing
%variable editor
student{1,1}='John Smith';
student{1,2}=123456
cellplot(student);
%cellindexing
student2(1,1)={'Mark Jones'};
student2(1,2)={123478};
student{2,1}={'Spring'};
data_base=[{student};{student2}];

data_base(1),{1,1};
