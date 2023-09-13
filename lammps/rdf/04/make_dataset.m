clc
clear
conc="04";
text={'Temp','dsitance','g(r)'};
xlswrite("data04.xlsx",text,'x='+conc,'A1');
k=500;
row=2;
for i=300:20:980
    A="lammps"+conc+"_"+num2str(i)+".rdf";
    data0=importdata(A,' ',37078);
    temp=ones(k,1)*i;
    data=[temp,data0.data(:,2),data0.data(:,3)];
    xlswrite("data04.xlsx",data,'x='+conc,"A"+num2str(row));
    row=row+k;
end