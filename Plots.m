clear all

load VelocidadeU.mat %VelU_1000','VelU_975','VelU_950','VelU_900','VelU_800','VelU_700','VelU_600','VelU_500','VelU_400','VelU_300')
load VelocidadeV.mat  %VelV_1000','VelV_975','VelV_950','VelV_900','VelV_800','VelV_700','VelV_600','VelV_500','VelV_400','VelV_300')
load Temperatura.mat %Temp_1000','Temp_975','Temp_950','Temp_900','Temp_800','Temp_700','Temp_600','Temp_500','Temp_400','Temp_300')
load Altura.mat  %','H_1000','H_975','H_950','H_900','H_800','H_700','H_600','H_500','H_400','H_300')
load MagnitudeVelocidade.mat %','MagVel_1000','MagVel_975','MagVel_950','MagVel_900','MagVel_800','MagVel_700','MagVel_600','MagVel_500','MagVel_400','MagVel_300')
load Direcao.mat % ','Dir_1000','Dir_975','Dir_950','Dir_900','Dir_800','Dir_700','Dir_600','Dir_500','Dir_400','Dir_300')  

load Data.mat %','Mes', 'Dia', 'Hora')


Fixo=9999;
Segundos=0;
str='00083649';
Ano=2024;
NiveisTotais=17;
Niveis=8;

Pressao_1000=1000;
Pressao_975=975;
Pressao_950=950;
Pressao_900=900;
Pressao_800=800;
Pressao_700=700;
Pressao_600=600;
Pressao_500=500;
Pressao_400=400;
Pressao_300=300;

fid=fopen('UpperAir_2024_Janeiro.txt','wt');
for t=1:124
fprintf(fid,'%7.0f  %8s    %4d  %2.0f %2.0f %2.0f %4.0f %7.0f %3.0f %2.0f %2.0f %4.0f %4.0f %7.0f\n %8.1f\\%4.0f.\\%5.1f\\%3.0f\\%3.0f %8.1f\\%4.0f.\\%5.1f\\%3.0f\\%3.0f %8.1f\\%4.0f.\\%5.1f\\%3.0f\\%3.0f %8.1f\\%4.0f.\\%5.1f\\%3.0f\\%3.0f\n %8.1f\\%4.0f.\\%5.1f\\%3.0f\\%3.0f %8.1f\\%4.0f.\\%5.1f\\%3.0f\\%3.0f %8.1f\\%4.0f.\\%5.1f\\%3.0f\\%3.0f %8.1f\\%4.0f.\\%5.1f\\%3.0f\\%3.0f\n',Fixo, str, Ano, Mes(t), Dia(t), Hora(t),Segundos, Ano, Mes(t), Dia(t), Hora(t),Segundos, NiveisTotais, Niveis, Pressao_1000, H_1000(t), Temp_1000(t), Dir_1000(t), MagVel_1000(t),Pressao_975, H_975(t), Temp_975(t), Dir_975(t), MagVel_975(t),Pressao_950, H_950(t), Temp_950(t), Dir_950(t), MagVel_950(t),Pressao_900, H_900(t), Temp_900(t), Dir_900(t), MagVel_900(t),Pressao_800, H_800(t), Temp_800(t), Dir_800(t), MagVel_800(t),Pressao_700, H_700(t), Temp_700(t), Dir_700(t), MagVel_700(t),Pressao_600, H_600(t), Temp_600(t), Dir_600(t), MagVel_600(t),Pressao_500, H_500(t), Temp_500(t), Dir_500(t), MagVel_500(t));
end
fclose(fid);

