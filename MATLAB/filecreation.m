%pernaw ws parametrous sto dx_dy ta x1,x2 gia to temp1 kai ta y1,y2 gia to
%temp2 kai ystera ta enwnw sto temp3 gia th dhmiourgia tou feature file
%Sthn sthlh 3 vrisketai to x1 kai sthn sthlh 4 to x2
%sthn sthlh 5 vrisketai to y1 kai sthn sthlh 6 to y2


temp1 = dx_dy(adopt_liz(1:length(adopt_liz),3:4));
temp2 = dx_dy(adopt_liz(1:length(adopt_liz),5:6));
temp3=[temp1 temp2];
adopt_liz=[adopt_liz temp3]; %edw enwnw ta dx_dy sto synoliko feature matrix gia pio eukolh sygkrish (wste na symvadizei me ta alla xarakthristika)
create_dx_dy_file(temp3,'feature_files/adopt_dxdy_liz.txt'); %edw paragw kiolas to feature file twn dx_dy gia pan endexomeno

temp1 = dx_dy(coat_liz(1:length(coat_liz),3:4));
temp2 = dx_dy(coat_liz(1:length(coat_liz),5:6));
temp3=[temp1 temp2];
coat_liz=[coat_liz temp3];
create_dx_dy_file(temp3,'feature_files/coat_dxdy_liz.txt');

temp1 = dx_dy(awkward_liz(1:length(awkward_liz),3:4));
temp2 = dx_dy(awkward_liz(1:length(awkward_liz),5:6));
temp3=[temp1 temp2];
awkward_liz=[awkward_liz temp3];
create_dx_dy_file(temp3,'feature_files/awkward_dxdy_liz.txt');

 temp1 = dx_dy(behavior_liz(1:length(behavior_liz),3:4));
 temp2 = dx_dy(behavior_liz(1:length(behavior_liz),5:6));
 temp3=[temp1 temp2];
 behavior_liz=[behavior_liz temp3];
 create_dx_dy_file(temp3,'feature_files/behavior_dxdy_liz.txt');

temp1 = dx_dy(come_on_liz(1:length(come_on_liz),3:4));
temp2 = dx_dy(come_on_liz(1:length(come_on_liz),5:6));
temp3=[temp1 temp2];
come_on_liz=[come_on_liz temp3];
create_dx_dy_file(temp3,'feature_files/come_on_dxdy_liz.txt');

temp1 = dx_dy(dress_liz(1:length(dress_liz),3:4));
temp2 = dx_dy(dress_liz(1:length(dress_liz),5:6));
temp3=[temp1 temp2];
dress_liz=[dress_liz temp3];
create_dx_dy_file(temp3,'feature_files/dress_dxdy_liz.txt');

temp1 = dx_dy(dog_liz(1:length(dog_liz),3:4));
temp2 = dx_dy(dog_liz(1:length(dog_liz),5:6));
temp3=[temp1 temp2];
dog_liz=[dog_liz temp3];
create_dx_dy_file(temp3,'feature_files/dog_dxdy_liz.txt');

temp1 = dx_dy(dont_like_liz(1:length(dont_like_liz),3:4));
temp2 = dx_dy(dont_like_liz(1:length(dont_like_liz),5:6));
temp3=[temp1 temp2];
dont_like_liz=[dont_like_liz temp3];
create_dx_dy_file(temp3,'feature_files/dont_like_dxdy_liz.txt');

temp1 = dx_dy(cough_liz(1:length(cough_liz),3:4));
temp2 = dx_dy(cough_liz(1:length(cough_liz),5:6));
temp3=[temp1 temp2];
cough_liz=[cough_liz temp3];
create_dx_dy_file(temp3,'feature_files/cough_dxdy_liz.txt');

temp1 = dx_dy(down_liz(1:length(down_liz),3:4));
temp2 = dx_dy(down_liz(1:length(down_liz),5:6));
temp3=[temp1 temp2];
down_liz=[down_liz temp3];
create_dx_dy_file(temp3,'feature_files/down_dxdy_liz.txt');

%%dhmiourgia dx_dy gia thn dana


temp1 = dx_dy(adopt_dana(1:length(adopt_dana),3:4));
temp2 = dx_dy(adopt_dana(1:length(adopt_dana),5:6));
temp3=[temp1 temp2];
adopt_dana=[adopt_dana temp3]; %edw enwnw ta dx_dy sto synoliko feature matrix gia pio eukolh sygkrish (wste na symvadizei me ta alla xarakthristika)
create_dx_dy_file(temp3,'feature_files/adopt_dxdy_dana.txt'); %edw paragw kiolas to feature file twn dx_dy gia pan endexomeno

temp1 = dx_dy(coat_dana(1:length(coat_dana),3:4));
temp2 = dx_dy(coat_dana(1:length(coat_dana),5:6));
temp3=[temp1 temp2];
coat_dana=[coat_dana temp3];
create_dx_dy_file(temp3,'feature_files/coat_dxdy_dana.txt');

temp1 = dx_dy(awkward_dana(1:length(awkward_dana),3:4));
temp2 = dx_dy(awkward_dana(1:length(awkward_dana),5:6));
temp3=[temp1 temp2];
awkward_dana=[awkward_dana temp3];
create_dx_dy_file(temp3,'feature_files/awkward_dxdy_dana.txt');

 temp1 = dx_dy(behavior_dana(1:length(behavior_dana),3:4));
 temp2 = dx_dy(behavior_dana(1:length(behavior_dana),5:6));
 temp3=[temp1 temp2];
 behavior_dana=[behavior_dana temp3];
 create_dx_dy_file(temp3,'feature_files/behavior_dxdy_dana.txt');

temp1 = dx_dy(come_on_dana(1:length(come_on_dana),3:4));
temp2 = dx_dy(come_on_dana(1:length(come_on_dana),5:6));
temp3=[temp1 temp2];
come_on_dana=[come_on_dana temp3];
create_dx_dy_file(temp3,'feature_files/come_on_dxdy_dana.txt');

temp1 = dx_dy(dress_dana(1:length(dress_dana),3:4));
temp2 = dx_dy(dress_dana(1:length(dress_dana),5:6));
temp3=[temp1 temp2];
dress_dana=[dress_dana temp3];
create_dx_dy_file(temp3,'feature_files/dress_dxdy_dana.txt');

temp1 = dx_dy(dog_dana(1:length(dog_dana),3:4));
temp2 = dx_dy(dog_dana(1:length(dog_dana),5:6));
temp3=[temp1 temp2];
dog_dana=[dog_dana temp3];
create_dx_dy_file(temp3,'feature_files/dog_dxdy_dana.txt');

temp1 = dx_dy(dont_like_dana(1:length(dont_like_dana),3:4));
temp2 = dx_dy(dont_like_dana(1:length(dont_like_dana),5:6));
temp3=[temp1 temp2];
dont_like_dana=[dont_like_dana temp3];
create_dx_dy_file(temp3,'feature_files/dont_like_dxdy_dana.txt');

temp1 = dx_dy(cough_dana(1:length(cough_dana),3:4));
temp2 = dx_dy(cough_dana(1:length(cough_dana),5:6));
temp3=[temp1 temp2];
cough_dana=[cough_dana temp3];
create_dx_dy_file(temp3,'feature_files/cough_dxdy_dana.txt');

temp1 = dx_dy(down_dana(1:length(down_dana),3:4));
temp2 = dx_dy(down_dana(1:length(down_dana),5:6));
temp3=[temp1 temp2];
down_dana=[down_dana temp3];
create_dx_dy_file(temp3,'feature_files/down_dxdy_dana.txt');

%%dhmiourgia dx_dy gia thn lana

temp1 = dx_dy(adopt_lana(1:length(adopt_lana),3:4));
temp2 = dx_dy(adopt_lana(1:length(adopt_lana),5:6));
temp3=[temp1 temp2];
adopt_lana=[adopt_lana temp3]; %edw enwnw ta dx_dy sto synoliko feature matrix gia pio eukolh sygkrish (wste na symvadizei me ta alla xarakthristika)
create_dx_dy_file(temp3,'feature_files/adopt_dxdy_lana.txt'); %edw paragw kiolas to feature file twn dx_dy gia pan endexomeno

temp1 = dx_dy(coat_lana(1:length(coat_lana),3:4));
temp2 = dx_dy(coat_lana(1:length(coat_lana),5:6));
temp3=[temp1 temp2];
coat_lana=[coat_lana temp3];
create_dx_dy_file(temp3,'feature_files/coat_dxdy_lana.txt');

temp1 = dx_dy(awkward_lana(1:length(awkward_lana),3:4));
temp2 = dx_dy(awkward_lana(1:length(awkward_lana),5:6));
temp3=[temp1 temp2];
awkward_lana=[awkward_lana temp3];
create_dx_dy_file(temp3,'feature_files/awkward_dxdy_lana.txt');

 temp1 = dx_dy(behavior_lana(1:length(behavior_lana),3:4));
 temp2 = dx_dy(behavior_lana(1:length(behavior_lana),5:6));
 temp3=[temp1 temp2];
 behavior_lana=[behavior_lana temp3];
 create_dx_dy_file(temp3,'feature_files/behavior_dxdy_lana.txt');

temp1 = dx_dy(come_on_lana(1:length(come_on_lana),3:4));
temp2 = dx_dy(come_on_lana(1:length(come_on_lana),5:6));
temp3=[temp1 temp2];
come_on_lana=[come_on_lana temp3];
create_dx_dy_file(temp3,'feature_files/come_on_dxdy_lana.txt');

temp1 = dx_dy(dress_lana(1:length(dress_lana),3:4));
temp2 = dx_dy(dress_lana(1:length(dress_lana),5:6));
temp3=[temp1 temp2];
dress_lana=[dress_lana temp3];
create_dx_dy_file(temp3,'feature_files/dress_dxdy_lana.txt');

temp1 = dx_dy(dog_lana(1:length(dog_lana),3:4));
temp2 = dx_dy(dog_lana(1:length(dog_lana),5:6));
temp3=[temp1 temp2];
dog_lana=[dog_lana temp3];
create_dx_dy_file(temp3,'feature_files/dog_dxdy_lana.txt');

temp1 = dx_dy(dont_like_lana(1:length(dont_like_lana),3:4));
temp2 = dx_dy(dont_like_lana(1:length(dont_like_lana),5:6));
temp3=[temp1 temp2];
dont_like_lana=[dont_like_lana temp3];
create_dx_dy_file(temp3,'feature_files/dont_like_dxdy_lana.txt');

temp1 = dx_dy(cough_lana(1:length(cough_lana),3:4));
temp2 = dx_dy(cough_lana(1:length(cough_lana),5:6));
temp3=[temp1 temp2];
cough_lana=[cough_lana temp3];
create_dx_dy_file(temp3,'feature_files/cough_dxdy_lana.txt');

temp1 = dx_dy(down_lana(1:length(down_lana),3:4));
temp2 = dx_dy(down_lana(1:length(down_lana),5:6));
temp3=[temp1 temp2];
down_lana=[down_lana temp3];
create_dx_dy_file(temp3,'feature_files/down_dxdy_lana.txt');
