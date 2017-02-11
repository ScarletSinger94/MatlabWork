n=100;
x=linspace(-3,3,n);
y=linspace(-3,3,n);
z=linspace(-3,3,n);
[X,Y,Z]=ndgrid(x,y,z);
%Compute function at every point in mesh
F=320 * ((-X.^2 .* Z.^3 -9.*Y.^2.*Z.^3/80) + (X.^2 + 9.* Y.^2/4 + Z.^2-1).^3);
%generate plot
p = patch(isosurface(F,0));
set(p,?FaceColor?r?,?EdgeColor?, [1 .5 .5]);
view([-67.5 2]);