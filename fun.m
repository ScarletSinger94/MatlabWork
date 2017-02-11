clc;
clear all;
close all;

pk=peaks(50);
mesh(pk)
meshz(pk)
%meshc(pk)
%contour(pk);
%surf(pk);%fills color
%shading interp;
%shading faceted; %default
%%
colormap('hot')


colorbar;