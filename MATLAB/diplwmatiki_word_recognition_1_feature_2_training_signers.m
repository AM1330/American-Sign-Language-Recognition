
%%otan 8eloume na kanoume diaforetika peiramata kalytera na trexoume ta apo katw
%%4 statements 1 fora kai ystera na ta vazoume se sxolia gia pio grhgoro
%%execution

% 
% % 
% read_feature_files;%diavazw ta feature files kai ta apo8hkeuw se pinakes
% filecreation; %gia na valw sta matrix me ta features to neo feature pou parhgaga mesw matlab(dx_dy)
%  compare_dana_lana; %sygkrinw tous 2 signers
%  compare_dana_liz;
%  mahal_compare_dana_liz;
%  mahal_compare_dana_lana;

adopt=1;
coat=2;
awkward=3;
behavior=4;
come_on=5;
dress_v=6;
dog=7;
dont_like=8;
cough=9;
down=10;

% put an initialization to make recognition for a specific word . 
%example. word=adopt

%dia8esimoi pinakes apostasewn
%distance_orientation_dana_lana , distance_orientation_dana_liz,
%distance_dx_dy_dana_lana, distance_dx_dy_dana_liz,
%distance_centre_dana_lana,distance_centre_dana_liz,
%distance_axis_dana_lana,distance_axis_dana_liz,
%distance_mahal_dana_liz,distance_mahal_dana_lana

word=cough; %%h leksh pou testaroume . O ari8mos pou vazoume 8a emfanistei mesa sto element sthn analogh 8esh pou anagnwristhke




%edw vazoume tous pinakes me tis apostaseis pou 8eloume na sygkrinoume
%p.x to orientation me testing thn dana kai training tis lana kai liz einai distance_orientation_dana_lana(word,:).
[num,ind]=sort(distance_axis_dana_lana(word,:)); %mhn ksexasw na kanw thn idia allagh kai stis ypoloipes emfaniseis ston kwdika
num=num(1:10); %take the 3 first choices
ind=ind(1:10);

[num2,ind2]=sort(distance_axis_dana_liz(word,:));
num2=num2(1:10); %take the 3 first choices
ind2=ind2(1:10);




num_array=[num num2];
[sorted_final,index_secondary]=sort(num_array(:));


for idx = 1:20
    if (index_secondary(idx) > 10 )
        element(idx) = ind2(index_secondary(idx)-10);
    else
        element(idx) = ind(index_secondary(idx));
    end
end
%gia na mhn exoume thn idia leksh sto top3 pragmatopoihmenh apo
%diaforetikous signers kanoume "normalize" sthn epomenh mikroterh apostash.
while(element(1)==element(2) || element(1) == element(3) || element(2) == element(3) )
    if element(1)==element(2)
        n=3;
        element(2)=element(3);
        element(n:19)=element(n+1:20);
        element(20)=100;
    else
        n=3;
        element(n:19)=element(n+1:20);
        element(20)=100;
    end
    
end

%fprintf('\n Your corresponding word is : %i . Check this row number for the proper result. \n',word);
fprintf('Training Signer 1: ');
distance_mahal_dana_lana(word,:)
fprintf('Training Signer 2: ');
distance_mahal_dana_liz(word,:)
fprintf('Distances sorted: \n');
sorted_final
fprintf('Indexes sorted and normalized (we normalize if there is the same word by 2 different signers in the top3):');
element
answer=find(element==word);
fprintf('The searched word is being placed in position number: %i \n',answer(1));




