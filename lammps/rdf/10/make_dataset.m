clc
clear
conc="10";
text={'Temp','dsitance','g(r)'};
xlswrite("data10.xlsx",text,'x='+conc,'A1');
k=500;
row=12502;
for i=800:20:980
    A="lammps"+conc+"_"+num2str(i)+".rdf";
    data0=importdata(A,' ',37078);
    temp=ones(k,1)*i;
    data=[temp,data0.data(:,2),data0.data(:,3)];
    xlswrite("data10.xlsx",data,'x='+conc,"A"+num2str(row));
    row=row+k;
end