function derivative = dx_dy(centre)


derivative(1,1)=0;%gia to prwto stoixeio tou x1
derivative(1,2)=0;%gia to prwto stoixeio tou x2
derivative(100,1)=0;%gia to teleutaio stoixeio tou x1
derivative(100,2)=0;%gia to teleutaio stoixeio tou x2

for n=2:99
    derivative(n,1)=centre(n+1,1)-centre(n-1,1); % derivate san sobel [-1 0 1]
    derivative(n,2)=centre(n+1,2)-centre(n-1,2);
end


 end


