

% % ALL FEATURES MAHALANOBIS COMPARE
% adopt_dana_features=adopt_dana;
% coat_dana_features=coat_dana;
% awkward_dana_features=awkward_dana;
% behavior_dana_features=behavior_dana;
% come_on_dana_features=come_on_dana;
% dress_dana_features=dress_dana;
% dog_dana_features=dog_dana;
% dont_like_dana_features=dont_like_dana;
% cough_dana_features=cough_dana;
% down_dana_features=down_dana;
% 
% adopt_lana_features=adopt_lana;
% coat_lana_features=coat_lana;
% awkward_lana_features=awkward_lana;
% behavior_lana_features=behavior_lana;
% come_on_lana_features=come_on_lana;
% dress_lana_features=dress_lana;
% dog_lana_features=dog_lana;
% dont_like_lana_features=dont_like_lana;
% cough_lana_features=cough_lana;
% down_lana_features=down_lana;
% 
% adopt_liz_features=adopt_liz;
% coat_liz_features=coat_liz;
% awkward_liz_features=awkward_liz;
% behavior_liz_features=behavior_liz;
% come_on_liz_features=come_on_liz;
% dress_liz_features=dress_liz;
% dog_liz_features=dog_liz;
% dont_like_liz_features=dont_like_liz;
% cough_liz_features=cough_liz;
% down_liz_features=down_liz;
% 
% % % COMPARE ORIENTATION AND Dx Dy features via Mahalanobis
% adopt_dana_features=[adopt_dana(1:100,1:2) adopt_dana(1:100,11:14)];
% coat_dana_features=[coat_dana(1:100,1:2) coat_dana(1:100,11:14)];
% awkward_dana_features=[awkward_dana(1:100,1:2) awkward_dana(1:100,11:14)];
% behavior_dana_features=[behavior_dana(1:100,1:2) behavior_dana(1:100,11:14)];
% come_on_dana_features=[come_on_dana(1:100,1:2) come_on_dana(1:100,11:14)];
% dress_dana_features=[dress_dana(1:100,1:2) dress_dana(1:100,11:14)];
% dog_dana_features=[dog_dana(1:100,1:2) dog_dana(1:100,11:14)];
% dont_like_dana_features=[dont_like_dana(1:100,1:2) dont_like_dana(1:100,11:14)];
% cough_dana_features=[cough_dana(1:100,1:2) cough_dana(1:100,11:14)];
% down_dana_features=[down_dana(1:100,1:2) down_dana(1:100,11:14)];
% 
% 
% adopt_lana_features=[adopt_lana(1:100,1:2) adopt_lana(1:100,11:14)];
% coat_lana_features=[coat_lana(1:100,1:2) coat_lana(1:100,11:14)];
% awkward_lana_features=[awkward_lana(1:100,1:2) awkward_lana(1:100,11:14)];
% behavior_lana_features=[behavior_lana(1:100,1:2) behavior_lana(1:100,11:14)];
% come_on_lana_features=[come_on_lana(1:100,1:2) come_on_lana(1:100,11:14)];
% dress_lana_features=[dress_lana(1:100,1:2) dress_lana(1:100,11:14)];
% dog_lana_features=[dog_lana(1:100,1:2) dog_lana(1:100,11:14)];
% dont_like_lana_features=[dont_like_lana(1:100,1:2) dont_like_lana(1:100,11:14)];
% cough_lana_features=[cough_lana(1:100,1:2) cough_lana(1:100,11:14)];
% down_lana_features=[down_lana(1:100,1:2) down_lana(1:100,11:14)];
% 
% adopt_liz_features=[adopt_liz(1:100,1:2) adopt_liz(1:100,11:14)];
% coat_liz_features=[coat_liz(1:100,1:2) coat_liz(1:100,11:14)];
% awkward_liz_features=[awkward_liz(1:100,1:2) awkward_liz(1:100,11:14)];
% behavior_liz_features=[behavior_liz(1:100,1:2) behavior_liz(1:100,11:14)];
% come_on_liz_features=[come_on_liz(1:100,1:2) come_on_liz(1:100,11:14)];
% dress_liz_features=[dress_liz(1:100,1:2) dress_liz(1:100,11:14)];
% dog_liz_features=[dog_liz(1:100,1:2) dog_liz(1:100,11:14)];
% dont_like_liz_features=[dont_like_liz(1:100,1:2) dont_like_liz(1:100,11:14)];
% cough_liz_features=[cough_liz(1:100,1:2) cough_liz(1:100,11:14)];
% down_liz_features=[down_liz(1:100,1:2) down_liz(1:100,11:14)];
% 

% % % % COMPARE ORIENTATION AND x,y centre points
% adopt_dana_features=[adopt_dana(1:100,1:2) adopt_dana(1:100,3:6)];
% coat_dana_features=[coat_dana(1:100,1:2) coat_dana(1:100,3:6)];
% awkward_dana_features=[awkward_dana(1:100,1:2) awkward_dana(1:100,3:6)];
% behavior_dana_features=[behavior_dana(1:100,1:2) behavior_dana(1:100,3:6)];
% come_on_dana_features=[come_on_dana(1:100,1:2) come_on_dana(1:100,3:6)];
% dress_dana_features=[dress_dana(1:100,1:2) dress_dana(1:100,3:6)];
% dog_dana_features=[dog_dana(1:100,1:2) dog_dana(1:100,3:6)];
% dont_like_dana_features=[dont_like_dana(1:100,1:2) dont_like_dana(1:100,3:6)];
% cough_dana_features=[cough_dana(1:100,1:2) cough_dana(1:100,3:6)];
% down_dana_features=[down_dana(1:100,1:2) down_dana(1:100,3:6)];
% 
% 
% adopt_liz_features=[adopt_liz(1:100,1:2) adopt_liz(1:100,3:6)];
% coat_liz_features=[coat_liz(1:100,1:2) coat_liz(1:100,3:6)];
% awkward_liz_features=[awkward_liz(1:100,1:2) awkward_liz(1:100,3:6)];
% behavior_liz_features=[behavior_liz(1:100,1:2) behavior_liz(1:100,3:6)];
% come_on_liz_features=[come_on_liz(1:100,1:2) come_on_liz(1:100,3:6)];
% dress_liz_features=[dress_liz(1:100,1:2) dress_liz(1:100,3:6)];
% dog_liz_features=[dog_liz(1:100,1:2) dog_liz(1:100,3:6)];
% dont_like_liz_features=[dont_like_liz(1:100,1:2) dont_like_liz(1:100,3:6)];
% cough_liz_features=[cough_liz(1:100,1:2) cough_liz(1:100,3:6)];
% down_liz_features=[down_liz(1:100,1:2) down_liz(1:100,3:6)];
% 
% 
% adopt_lana_features=[adopt_lana(1:100,1:2) adopt_lana(1:100,3:6)];
% coat_lana_features=[coat_lana(1:100,1:2) coat_lana(1:100,3:6)];
% awkward_lana_features=[awkward_lana(1:100,1:2) awkward_lana(1:100,3:6)];
% behavior_lana_features=[behavior_lana(1:100,1:2) behavior_lana(1:100,3:6)];
% come_on_lana_features=[come_on_lana(1:100,1:2) come_on_lana(1:100,3:6)];
% dress_lana_features=[dress_lana(1:100,1:2) dress_lana(1:100,3:6)];
% dog_lana_features=[dog_lana(1:100,1:2) dog_lana(1:100,3:6)];
% dont_like_lana_features=[dont_like_lana(1:100,1:2) dont_like_lana(1:100,3:6)];
% cough_lana_features=[cough_lana(1:100,1:2) cough_lana(1:100,3:6)];
% down_lana_features=[down_lana(1:100,1:2) down_lana(1:100,3:6)];


% % % % COMPARE ORIENTATION AND axis lengths
% adopt_dana_features=[adopt_dana(1:100,1:2) adopt_dana(1:100,7:10)];
% coat_dana_features=[coat_dana(1:100,1:2) coat_dana(1:100,7:10)];
% awkward_dana_features=[awkward_dana(1:100,1:2) awkward_dana(1:100,7:10)];
% behavior_dana_features=[behavior_dana(1:100,1:2) behavior_dana(1:100,7:10)];
% come_on_dana_features=[come_on_dana(1:100,1:2) come_on_dana(1:100,7:10)];
% dress_dana_features=[dress_dana(1:100,1:2) dress_dana(1:100,7:10)];
% dog_dana_features=[dog_dana(1:100,1:2) dog_dana(1:100,7:10)];
% dont_like_dana_features=[dont_like_dana(1:100,1:2) dont_like_dana(1:100,7:10)];
% cough_dana_features=[cough_dana(1:100,1:2) cough_dana(1:100,7:10)];
% down_dana_features=[down_dana(1:100,1:2) down_dana(1:100,7:10)];
% 
% 
% adopt_liz_features=[adopt_liz(1:100,1:2) adopt_liz(1:100,7:10)];
% coat_liz_features=[coat_liz(1:100,1:2) coat_liz(1:100,7:10)];
% awkward_liz_features=[awkward_liz(1:100,1:2) awkward_liz(1:100,7:10)];
% behavior_liz_features=[behavior_liz(1:100,1:2) behavior_liz(1:100,7:10)];
% come_on_liz_features=[come_on_liz(1:100,1:2) come_on_liz(1:100,7:10)];
% dress_liz_features=[dress_liz(1:100,1:2) dress_liz(1:100,7:10)];
% dog_liz_features=[dog_liz(1:100,1:2) dog_liz(1:100,7:10)];
% dont_like_liz_features=[dont_like_liz(1:100,1:2) dont_like_liz(1:100,7:10)];
% cough_liz_features=[cough_liz(1:100,1:2) cough_liz(1:100,7:10)];
% down_liz_features=[down_liz(1:100,1:2) down_liz(1:100,7:10)];
% 
% 
% adopt_lana_features=[adopt_lana(1:100,1:2) adopt_lana(1:100,7:10)];
% coat_lana_features=[coat_lana(1:100,1:2) coat_lana(1:100,7:10)];
% awkward_lana_features=[awkward_lana(1:100,1:2) awkward_lana(1:100,7:10)];
% behavior_lana_features=[behavior_lana(1:100,1:2) behavior_lana(1:100,7:10)];
% come_on_lana_features=[come_on_lana(1:100,1:2) come_on_lana(1:100,7:10)];
% dress_lana_features=[dress_lana(1:100,1:2) dress_lana(1:100,7:10)];
% dog_lana_features=[dog_lana(1:100,1:2) dog_lana(1:100,7:10)];
% dont_like_lana_features=[dont_like_lana(1:100,1:2) dont_like_lana(1:100,7:10)];
% cough_lana_features=[cough_lana(1:100,1:2) cough_lana(1:100,7:10)];
% down_lana_features=[down_lana(1:100,1:2) down_lana(1:100,7:10)];

% % % Other experiments
adopt_dana_features=[adopt_dana(1:100,1:6) adopt_dana(1:100,7:10)];
coat_dana_features=[coat_dana(1:100,1:6) coat_dana(1:100,7:10)];
awkward_dana_features=[awkward_dana(1:100,1:6) awkward_dana(1:100,7:10)];
behavior_dana_features=[behavior_dana(1:100,1:6) behavior_dana(1:100,7:10)];
come_on_dana_features=[come_on_dana(1:100,1:6) come_on_dana(1:100,7:10)];
dress_dana_features=[dress_dana(1:100,1:6) dress_dana(1:100,7:10)];
dog_dana_features=[dog_dana(1:100,1:6) dog_dana(1:100,7:10)];
dont_like_dana_features=[dont_like_dana(1:100,1:6) dont_like_dana(1:100,7:10)];
cough_dana_features=[cough_dana(1:100,1:6) cough_dana(1:100,7:10)];
down_dana_features=[down_dana(1:100,1:6) down_dana(1:100,7:10)];


adopt_liz_features=[adopt_liz(1:100,1:6) adopt_liz(1:100,7:10)];
coat_liz_features=[coat_liz(1:100,1:6) coat_liz(1:100,7:10)];
awkward_liz_features=[awkward_liz(1:100,1:6) awkward_liz(1:100,7:10)];
behavior_liz_features=[behavior_liz(1:100,1:6) behavior_liz(1:100,7:10)];
come_on_liz_features=[come_on_liz(1:100,1:6) come_on_liz(1:100,7:10)];
dress_liz_features=[dress_liz(1:100,1:6) dress_liz(1:100,7:10)];
dog_liz_features=[dog_liz(1:100,1:6) dog_liz(1:100,7:10)];
dont_like_liz_features=[dont_like_liz(1:100,1:6) dont_like_liz(1:100,7:10)];
cough_liz_features=[cough_liz(1:100,1:6) cough_liz(1:100,7:10)];
down_liz_features=[down_liz(1:100,1:6) down_liz(1:100,7:10)];


adopt_lana_features=[adopt_lana(1:100,1:6) adopt_lana(1:100,7:10)];
coat_lana_features=[coat_lana(1:100,1:6) coat_lana(1:100,7:10)];
awkward_lana_features=[awkward_lana(1:100,1:6) awkward_lana(1:100,7:10)];
behavior_lana_features=[behavior_lana(1:100,1:6) behavior_lana(1:100,7:10)];
come_on_lana_features=[come_on_lana(1:100,1:6) come_on_lana(1:100,7:10)];
dress_lana_features=[dress_lana(1:100,1:6) dress_lana(1:100,7:10)];
dog_lana_features=[dog_lana(1:100,1:6) dog_lana(1:100,7:10)];
dont_like_lana_features=[dont_like_lana(1:100,1:6) dont_like_lana(1:100,7:10)];
cough_lana_features=[cough_lana(1:100,1:6) cough_lana(1:100,7:10)];
down_lana_features=[down_lana(1:100,1:6) down_lana(1:100,7:10)];



%% To find variance Si over our training sample
 array=[adopt_lana_features; coat_lana_features; awkward_lana_features; behavior_lana_features; come_on_lana_features; dress_lana_features; dog_lana_features; dont_like_lana_features; cough_lana_features; down_lana_features;
     adopt_liz_features ; coat_liz_features ; awkward_liz_features ;behavior_liz_features ; come_on_liz_features ; dress_liz_features ; dog_liz_features ; dont_like_liz_features ; cough_liz_features ; down_liz_features] ;
 
 myvariance=var(array)




distance_mahal_dana_lana(1,1)=dtw_mahal(adopt_dana_features,adopt_lana_features,50,myvariance);
distance_mahal_dana_lana(1,2)=dtw_mahal(adopt_dana_features,coat_lana_features,50,myvariance);
distance_mahal_dana_lana(1,3)=dtw_mahal(adopt_dana_features,awkward_lana_features,50,myvariance);
distance_mahal_dana_lana(1,4)=dtw_mahal(adopt_dana_features,behavior_lana_features,50,myvariance);
distance_mahal_dana_lana(1,5)=dtw_mahal(adopt_dana_features,come_on_lana_features,50,myvariance);
distance_mahal_dana_lana(1,6)=dtw_mahal(adopt_dana_features,dress_lana_features,50,myvariance);
distance_mahal_dana_lana(1,7)=dtw_mahal(adopt_dana_features,dog_lana_features,50,myvariance);
distance_mahal_dana_lana(1,8)=dtw_mahal(adopt_dana_features,dont_like_lana_features,50,myvariance);
distance_mahal_dana_lana(1,9)=dtw_mahal(adopt_dana_features,cough_lana_features,50,myvariance);
distance_mahal_dana_lana(1,10)=dtw_mahal(adopt_dana_features,down_lana_features,50,myvariance);

fprintf('\n TEST1 \n');

distance_mahal_dana_lana(2,1)=dtw_mahal(coat_dana_features,adopt_lana_features,50,myvariance);
distance_mahal_dana_lana(2,2)=dtw_mahal(coat_dana_features,coat_lana_features,50,myvariance);
distance_mahal_dana_lana(2,3)=dtw_mahal(coat_dana_features,awkward_lana_features,50,myvariance);
distance_mahal_dana_lana(2,4)=dtw_mahal(coat_dana_features,behavior_lana_features,50,myvariance);
distance_mahal_dana_lana(2,5)=dtw_mahal(coat_dana_features,come_on_lana_features,50,myvariance);
distance_mahal_dana_lana(2,6)=dtw_mahal(coat_dana_features,dress_lana_features,50,myvariance);
distance_mahal_dana_lana(2,7)=dtw_mahal(coat_dana_features,dog_lana_features,50,myvariance);
distance_mahal_dana_lana(2,8)=dtw_mahal(coat_dana_features,dont_like_lana_features,50,myvariance);
distance_mahal_dana_lana(2,9)=dtw_mahal(coat_dana_features,cough_lana_features,50,myvariance);
distance_mahal_dana_lana(2,10)=dtw_mahal(coat_dana_features,down_lana_features,50,myvariance);
fprintf('\n TEST1 \n');
distance_mahal_dana_lana(3,1)=dtw_mahal(awkward_dana_features,adopt_lana_features,50,myvariance);
distance_mahal_dana_lana(3,2)=dtw_mahal(awkward_dana_features,coat_lana_features,50,myvariance);
distance_mahal_dana_lana(3,3)=dtw_mahal(awkward_dana_features,awkward_lana_features,50,myvariance);
distance_mahal_dana_lana(3,4)=dtw_mahal(awkward_dana_features,behavior_lana_features,50,myvariance);
distance_mahal_dana_lana(3,5)=dtw_mahal(awkward_dana_features,come_on_lana_features,50,myvariance);
distance_mahal_dana_lana(3,6)=dtw_mahal(awkward_dana_features,dress_lana_features,50,myvariance);
distance_mahal_dana_lana(3,7)=dtw_mahal(awkward_dana_features,dog_lana_features,50,myvariance);
distance_mahal_dana_lana(3,8)=dtw_mahal(awkward_dana_features,dont_like_lana_features,50,myvariance);
distance_mahal_dana_lana(3,9)=dtw_mahal(awkward_dana_features,cough_lana_features,50,myvariance);
distance_mahal_dana_lana(3,10)=dtw_mahal(awkward_dana_features,down_lana_features,50,myvariance);
fprintf('\n TEST1 \n');
distance_mahal_dana_lana(4,1)=dtw_mahal(behavior_dana_features,adopt_lana_features,50,myvariance);
distance_mahal_dana_lana(4,2)=dtw_mahal(behavior_dana_features,coat_lana_features,50,myvariance);
distance_mahal_dana_lana(4,3)=dtw_mahal(behavior_dana_features,awkward_lana_features,50,myvariance);
distance_mahal_dana_lana(4,4)=dtw_mahal(behavior_dana_features,behavior_lana_features,50,myvariance);
distance_mahal_dana_lana(4,5)=dtw_mahal(behavior_dana_features,come_on_lana_features,50,myvariance);
distance_mahal_dana_lana(4,6)=dtw_mahal(behavior_dana_features,dress_lana_features,50,myvariance);
distance_mahal_dana_lana(4,7)=dtw_mahal(behavior_dana_features,dog_lana_features,50,myvariance);
distance_mahal_dana_lana(4,8)=dtw_mahal(behavior_dana_features,dont_like_lana_features,50,myvariance);
distance_mahal_dana_lana(4,9)=dtw_mahal(behavior_dana_features,cough_lana_features,50,myvariance);
distance_mahal_dana_lana(4,10)=dtw_mahal(behavior_dana_features,down_lana_features,50,myvariance);

distance_mahal_dana_lana(5,1)=dtw_mahal(come_on_dana_features,adopt_lana_features,50,myvariance);
distance_mahal_dana_lana(5,2)=dtw_mahal(come_on_dana_features,dress_lana_features,50,myvariance);
distance_mahal_dana_lana(5,3)=dtw_mahal(come_on_dana_features,awkward_lana_features,50,myvariance);
distance_mahal_dana_lana(5,4)=dtw_mahal(come_on_dana_features,behavior_lana_features,50,myvariance);
distance_mahal_dana_lana(5,5)=dtw_mahal(come_on_dana_features,come_on_lana_features,50,myvariance);
distance_mahal_dana_lana(5,6)=dtw_mahal(come_on_dana_features,dress_lana_features,50,myvariance);
distance_mahal_dana_lana(5,7)=dtw_mahal(come_on_dana_features,dog_lana_features,50,myvariance);
distance_mahal_dana_lana(5,8)=dtw_mahal(come_on_dana_features,dont_like_lana_features,50,myvariance);
distance_mahal_dana_lana(5,9)=dtw_mahal(come_on_dana_features,cough_lana_features,50,myvariance);
distance_mahal_dana_lana(5,10)=dtw_mahal(come_on_dana_features,down_lana_features,50,myvariance);

distance_mahal_dana_lana(6,1)=dtw_mahal(dress_dana_features,adopt_lana_features,50,myvariance);
distance_mahal_dana_lana(6,2)=dtw_mahal(dress_dana_features,coat_lana_features,50,myvariance);
distance_mahal_dana_lana(6,3)=dtw_mahal(dress_dana_features,awkward_lana_features,50,myvariance);
distance_mahal_dana_lana(6,4)=dtw_mahal(dress_dana_features,behavior_lana_features,50,myvariance);
distance_mahal_dana_lana(6,5)=dtw_mahal(dress_dana_features,come_on_lana_features,50,myvariance);
distance_mahal_dana_lana(6,6)=dtw_mahal(dress_dana_features,dress_lana_features,50,myvariance);
distance_mahal_dana_lana(6,7)=dtw_mahal(dress_dana_features,dog_lana_features,50,myvariance);
distance_mahal_dana_lana(6,8)=dtw_mahal(dress_dana_features,dont_like_lana_features,50,myvariance);
distance_mahal_dana_lana(6,9)=dtw_mahal(dress_dana_features,cough_lana_features,50,myvariance);
distance_mahal_dana_lana(6,10)=dtw_mahal(dress_dana_features,down_lana_features,50,myvariance);
fprintf('\n TEST1 \n');
distance_mahal_dana_lana(7,1)=dtw_mahal(dog_dana_features,adopt_lana_features,50,myvariance);
distance_mahal_dana_lana(7,2)=dtw_mahal(dog_dana_features,coat_lana_features,50,myvariance);
distance_mahal_dana_lana(7,3)=dtw_mahal(dog_dana_features,awkward_lana_features,50,myvariance);
distance_mahal_dana_lana(7,4)=dtw_mahal(dog_dana_features,behavior_lana_features,50,myvariance);
distance_mahal_dana_lana(7,5)=dtw_mahal(dog_dana_features,come_on_lana_features,50,myvariance);
distance_mahal_dana_lana(7,6)=dtw_mahal(dog_dana_features,dress_lana_features,50,myvariance);
distance_mahal_dana_lana(7,7)=dtw_mahal(dog_dana_features,dog_lana_features,50,myvariance);
distance_mahal_dana_lana(7,8)=dtw_mahal(dog_dana_features,dont_like_lana_features,50,myvariance);
distance_mahal_dana_lana(7,9)=dtw_mahal(dog_dana_features,cough_lana_features,50,myvariance);
distance_mahal_dana_lana(7,10)=dtw_mahal(dog_dana_features,down_lana_features,50,myvariance);

distance_mahal_dana_lana(8,1)=dtw_mahal(dont_like_dana_features,adopt_lana_features,50,myvariance);
distance_mahal_dana_lana(8,2)=dtw_mahal(dont_like_dana_features,coat_lana_features,50,myvariance);
distance_mahal_dana_lana(8,3)=dtw_mahal(dont_like_dana_features,awkward_lana_features,50,myvariance);
distance_mahal_dana_lana(8,4)=dtw_mahal(dont_like_dana_features,behavior_lana_features,50,myvariance);
distance_mahal_dana_lana(8,5)=dtw_mahal(dont_like_dana_features,come_on_lana_features,50,myvariance);
distance_mahal_dana_lana(8,6)=dtw_mahal(dont_like_dana_features,dress_lana_features,50,myvariance);
distance_mahal_dana_lana(8,7)=dtw_mahal(dont_like_dana_features,dog_lana_features,50,myvariance);
distance_mahal_dana_lana(8,8)=dtw_mahal(dont_like_dana_features,dont_like_lana_features,50,myvariance);
distance_mahal_dana_lana(8,9)=dtw_mahal(dont_like_dana_features,cough_lana_features,50,myvariance);
distance_mahal_dana_lana(8,10)=dtw_mahal(dont_like_dana_features,down_lana_features,50,myvariance);
fprintf('\n TEST1 \n');
distance_mahal_dana_lana(9,1)=dtw_mahal(cough_dana_features,adopt_lana_features,50,myvariance);
distance_mahal_dana_lana(9,2)=dtw_mahal(cough_dana_features,coat_lana_features,50,myvariance);
distance_mahal_dana_lana(9,3)=dtw_mahal(cough_dana_features,awkward_lana_features,50,myvariance);
distance_mahal_dana_lana(9,4)=dtw_mahal(cough_dana_features,behavior_lana_features,50,myvariance);
distance_mahal_dana_lana(9,5)=dtw_mahal(cough_dana_features,come_on_lana_features,50,myvariance);
distance_mahal_dana_lana(9,6)=dtw_mahal(cough_dana_features,dress_lana_features,50,myvariance);
distance_mahal_dana_lana(9,7)=dtw_mahal(cough_dana_features,dog_lana_features,50,myvariance);
distance_mahal_dana_lana(9,8)=dtw_mahal(cough_dana_features,dont_like_lana_features,50,myvariance);
distance_mahal_dana_lana(9,9)=dtw_mahal(cough_dana_features,cough_lana_features,50,myvariance);
distance_mahal_dana_lana(9,10)=dtw_mahal(cough_dana_features,down_lana_features,50,myvariance);

distance_mahal_dana_lana(10,1)=dtw_mahal(down_dana_features,adopt_lana_features,50,myvariance);
distance_mahal_dana_lana(10,2)=dtw_mahal(down_dana_features,coat_lana_features,50,myvariance);
distance_mahal_dana_lana(10,3)=dtw_mahal(down_dana_features,awkward_lana_features,50,myvariance);
distance_mahal_dana_lana(10,4)=dtw_mahal(down_dana_features,behavior_lana_features,50,myvariance);
distance_mahal_dana_lana(10,5)=dtw_mahal(down_dana_features,come_on_lana_features,50,myvariance);
distance_mahal_dana_lana(10,6)=dtw_mahal(down_dana_features,dress_lana_features,50,myvariance);
distance_mahal_dana_lana(10,7)=dtw_mahal(down_dana_features,dog_lana_features,50,myvariance);
distance_mahal_dana_lana(10,8)=dtw_mahal(down_dana_features,dont_like_lana_features,50,myvariance);
distance_mahal_dana_lana(10,9)=dtw_mahal(down_dana_features,cough_lana_features,50,myvariance);
distance_mahal_dana_lana(10,10)=dtw_mahal(down_dana_features,down_lana_features,50,myvariance);