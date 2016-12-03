% feature_file ths morfhs 
%[orientation_right_hand | orientation_left_hand | x1 | x2 | y1 | y2 | 
%x_axis_right_hand | y_axis_right_hand | x_axis_left_hand | y_axis_left_hand ]
%opou x1,y1 to centre tou deksiou xeriou kai x2,y2 to centre tou aristerou
%Estw oti exoume 100 frames gia ka8e sign tote ta feature files einai 10*100 



% approximately
fileID = fopen('feature_files\approximately_dana.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
approximately_dana = fscanf(fileID,formatSpec,sizeA);
approximately_dana=approximately_dana';
fclose(fileID);

fileID = fopen('feature_files\approximately_lana.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
approximately_lana = fscanf(fileID,formatSpec,sizeA);
approximately_lana=approximately_lana';
fclose(fileID);

fileID = fopen('feature_files\approximately_liz.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
approximately_liz = fscanf(fileID,formatSpec,sizeA);
approximately_liz=approximately_liz';
fclose(fileID);


% adopt
fileID = fopen('feature_files\adopt_dana.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
adopt_dana = fscanf(fileID,formatSpec,sizeA);
adopt_dana=adopt_dana';
fclose(fileID);

fileID = fopen('feature_files\adopt_lana.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
adopt_lana = fscanf(fileID,formatSpec,sizeA);
adopt_lana=adopt_lana';
fclose(fileID);

fileID = fopen('feature_files\adopt_liz.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
adopt_liz = fscanf(fileID,formatSpec,sizeA);
adopt_liz=adopt_liz';
fclose(fileID);


% awkward
fileID = fopen('feature_files\awkward_dana.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
awkward_dana = fscanf(fileID,formatSpec,sizeA);
awkward_dana=awkward_dana';
fclose(fileID);

fileID = fopen('feature_files\awkward_lana.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
awkward_lana = fscanf(fileID,formatSpec,sizeA);
awkward_lana=awkward_lana';
fclose(fileID);

fileID = fopen('feature_files\awkward_liz.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
awkward_liz = fscanf(fileID,formatSpec,sizeA);
awkward_liz=awkward_liz';
fclose(fileID);


% behavior
fileID = fopen('feature_files\behavior_dana.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
behavior_dana = fscanf(fileID,formatSpec,sizeA);
behavior_dana=behavior_dana';
fclose(fileID);

fileID = fopen('feature_files\behavior_lana.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
behavior_lana = fscanf(fileID,formatSpec,sizeA);
behavior_lana=behavior_lana';
fclose(fileID);

fileID = fopen('feature_files\behavior_liz.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
behavior_liz = fscanf(fileID,formatSpec,sizeA);
behavior_liz=behavior_liz';
fclose(fileID);





% come_on
fileID = fopen('feature_files\come_on_dana.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
come_on_dana = fscanf(fileID,formatSpec,sizeA);
come_on_dana=come_on_dana';
fclose(fileID);

fileID = fopen('feature_files\come_on_lana.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
come_on_lana = fscanf(fileID,formatSpec,sizeA);
come_on_lana=come_on_lana';
fclose(fileID);

fileID = fopen('feature_files\come_on_liz.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
come_on_liz = fscanf(fileID,formatSpec,sizeA);
come_on_liz=come_on_liz';
fclose(fileID);





% dress
fileID = fopen('feature_files\dress_dana.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
dress_dana = fscanf(fileID,formatSpec,sizeA);
dress_dana=dress_dana';
fclose(fileID);

fileID = fopen('feature_files\dress_lana.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
dress_lana = fscanf(fileID,formatSpec,sizeA);
dress_lana=dress_lana';
fclose(fileID);

fileID = fopen('feature_files\dress_liz.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
dress_liz = fscanf(fileID,formatSpec,sizeA);
dress_liz=dress_liz';
fclose(fileID);





% dog
fileID = fopen('feature_files\dog_dana.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
dog_dana = fscanf(fileID,formatSpec,sizeA);
dog_dana=dog_dana';
fclose(fileID);

fileID = fopen('feature_files\dog_lana.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
dog_lana = fscanf(fileID,formatSpec,sizeA);
dog_lana=dog_lana';
fclose(fileID);

fileID = fopen('feature_files\dog_liz.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
dog_liz = fscanf(fileID,formatSpec,sizeA);
dog_liz=dog_liz';
fclose(fileID);



% dont_like
fileID = fopen('feature_files\dont_like_dana.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
dont_like_dana = fscanf(fileID,formatSpec,sizeA);
dont_like_dana=dont_like_dana';
fclose(fileID);

fileID = fopen('feature_files\dont_like_lana.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
dont_like_lana = fscanf(fileID,formatSpec,sizeA);
dont_like_lana=dont_like_lana';
fclose(fileID);

fileID = fopen('feature_files\dont_like_liz.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
dont_like_liz = fscanf(fileID,formatSpec,sizeA);
dont_like_liz=dont_like_liz';
fclose(fileID);




% cough
fileID = fopen('feature_files\cough_dana.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
cough_dana = fscanf(fileID,formatSpec,sizeA);
cough_dana=cough_dana';
fclose(fileID);

fileID = fopen('feature_files\cough_lana.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
cough_lana = fscanf(fileID,formatSpec,sizeA);
cough_lana=cough_lana';
fclose(fileID);

fileID = fopen('feature_files\cough_liz.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
cough_liz = fscanf(fileID,formatSpec,sizeA);
cough_liz=cough_liz';
fclose(fileID);





% down
fileID = fopen('feature_files\down_dana.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
down_dana = fscanf(fileID,formatSpec,sizeA);
down_dana=down_dana';
fclose(fileID);

fileID = fopen('feature_files\down_lana.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
down_lana = fscanf(fileID,formatSpec,sizeA);
down_lana=down_lana';
fclose(fileID);

fileID = fopen('feature_files\down_liz.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
down_liz = fscanf(fileID,formatSpec,sizeA);
down_liz=down_liz';
fclose(fileID);



% atlanta
fileID = fopen('feature_files\atlanta_dana.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
atlanta_dana = fscanf(fileID,formatSpec,sizeA);
atlanta_dana=atlanta_dana';
fclose(fileID);

fileID = fopen('feature_files\atlanta_lana.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
atlanta_lana = fscanf(fileID,formatSpec,sizeA);
atlanta_lana=atlanta_lana';
fclose(fileID);

fileID = fopen('feature_files\atlanta_liz.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
atlanta_liz = fscanf(fileID,formatSpec,sizeA);
atlanta_liz=atlanta_liz';
fclose(fileID);

% baltimore
fileID = fopen('feature_files\baltimore_dana.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
baltimore_dana = fscanf(fileID,formatSpec,sizeA);
baltimore_dana=baltimore_dana';
fclose(fileID);

fileID = fopen('feature_files\baltimore_lana.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
baltimore_lana = fscanf(fileID,formatSpec,sizeA);
baltimore_lana=baltimore_lana';
fclose(fileID);

fileID = fopen('feature_files\baltimore_liz.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
baltimore_liz = fscanf(fileID,formatSpec,sizeA);
baltimore_liz=baltimore_liz';
fclose(fileID);


% coat
fileID = fopen('feature_files\coat_dana.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
coat_dana = fscanf(fileID,formatSpec,sizeA);
coat_dana=coat_dana';
fclose(fileID);

fileID = fopen('feature_files\coat_lana.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
coat_lana = fscanf(fileID,formatSpec,sizeA);
coat_lana=coat_lana';
fclose(fileID);

fileID = fopen('feature_files\coat_liz.txt','r');
formatSpec = '%f %f %f %f %f %f %f %f %f %f ';
sizeA = [10 Inf];
coat_liz = fscanf(fileID,formatSpec,sizeA);
coat_liz=coat_liz';
fclose(fileID);





















