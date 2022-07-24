A1=imread("image1.jpg");
A2=imread("image2.jpg");
A3=imread("image3.jpg");
A4=imread("image4.jpg");
A5=imread("image5.jpg");
B1=rgb2gray(A1);
B2=rgb2gray(A2);
B3=rgb2gray(A3);
B4=rgb2gray(A4);
B5=rgb2gray(A5);
C1=double(B1);
C2=double(B2);
C3=double(B3);
C4=double(B4);
C5=double(B5);
[U1, S1, V1]=svd(C1);
[U2, S2, V2]=svd(C2);
[U3, S3, V3]=svd(C3);
[U4, S4, V4]=svd(C4);
[U5, S5, V5]=svd(C5);
D1=diag(S1);
D2=diag(S2);
D3=diag(S3);
D4=diag(S4);
D5=diag(S5);
plot(D1);
plot(D2);
plot(D3);
plot(D4);
plot(D5);
for i=1:5
    for j=1:5
        S1(i,j)=0;
        S2(i,j)=0;
        S3(i,j)=0;
        S4(i,j)=0;
        S5(i,j)=0;
    end
end
RC1=U1*S1*V1';
RC2=U2*S2*V2';
RC3=U3*S3*V3';
RC4=U4*S4*V4';
RC5=U5*S5*V5';
error1=immse(C1,RC1);
error2=immse(C2,RC2);
error3=immse(C3,RC3);
error4=immse(C4,RC4);
error5=immse(C5,RC5);
