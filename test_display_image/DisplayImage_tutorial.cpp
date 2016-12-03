#include <stdio.h>
#include <opencv2/opencv.hpp>
#include <string>
#include <iostream>
#include <sstream> 
#include <fstream> 
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include <unistd.h>
#include <math.h>  

using namespace cv;
using namespace std;

//Function headers
std::vector< std::vector<cv::Point> > Hist_Backproj_Contours(Mat src );

void pickPoint (int event, int x, int y, int, void* );
double drawAxis(Mat&, Point, Point, Scalar, const float);
double* getOrientation(const vector<Point> &, Mat&);
//gloabal variables
int h_bins = 30;
int s_bins =32;

Mat src;
Point seed = Point( 56, 30 ); //BLACK
Mat mask;
bool flag=true;
 
int lo = 40; int up = 50;  //LIZ
//int lo = 100; int up = 110; //DANA
//int lo = 85; int up = 90; //LANA
//int lo = 85; int up = 90; //TYLER
int iLowThresh=100;
const char* window_image = "Source image";


int main(int argc, char** argv )
{

    
 ///ARXIKOPOIHSEIS  
    Mat image;
    int frame_counter=0;
    string frame_counter_string,largestIndex_string,secondLargestIndex_string,thirdLargestIndex_string,orientation_string,point_string_x[3],point_string_y[3];
   std::string image_name ;
    ostringstream convert,convert2,convert3,convert4,convert5,convert6;
    string image_final_path,image_final_path2;
  std::vector< std::vector<cv::Point> > contours;
  Mat imgLines,imgLines_contours;
  std::vector<cv::Point> points;
  cv::Point p;
  vector<Vec4i> hierarchy;
  double a,temp_double1,temp_double2,temp_double3;
  double *returned_array;
  Rect bounding_rect,bounding_rect2,bounding_rect3;
  std::ofstream outfile,outfile2,outfile3,outfile4,outfile5;
 std::string argv1=argv[1];//"all_right/DANA";
 
 string file1="Database/"+argv1+"/features_contours.txt";
 string file2="Database/"+argv1+"/features_contours_orientation.txt";
 string file3="Database/"+argv1+"/features_contours_centre_x.txt";
 string file4="Database/"+argv1+"/features_contours_centre_y.txt";
 string file5="Database/"+argv1+"/features_contours_xy_lengths.txt";
  outfile.open (file1.c_str());
  outfile2.open (file2.c_str());
  outfile3.open (file3.c_str());
  outfile4.open (file4.c_str());
  outfile5.open(file5.c_str());

  while(true){
    ///DIAVASMA EIKONAS
    frame_counter_string="";
    convert << frame_counter; 
    frame_counter_string = convert.str();
    
    std::string image_file_path ("Database/"+argv1+"/");
    std::string image_file_path2 ("Database/"+argv1+"/rear/");

    if(frame_counter>=100){ 
      frame_counter_string= frame_counter_string.substr (frame_counter_string.length()-3,frame_counter_string.length());
      image_name=frame_counter_string+".ppm"; 
      if (waitKey(0)==99){
	frame_counter--;
      }else{frame_counter++;}//stelnw thn epomenh eikona  
    }
    else if( frame_counter >= 10 && frame_counter<100){ 
      frame_counter_string= frame_counter_string.substr (frame_counter_string.length()-2,frame_counter_string.length());
      image_name="0"+ frame_counter_string+".ppm"; 
      if (waitKey(0)==99){
	frame_counter--;
      }else{frame_counter++;}//stelnw thn epomenh eikona  
    }
    else{
      frame_counter_string= frame_counter_string.substr (frame_counter_string.length()-1,frame_counter_string.length());
      image_name="00"+ frame_counter_string +".ppm";     
      if (waitKey(0)==99){
	frame_counter--;
      }else{frame_counter++;}//stelnw thn epomenh eikona
    }

    image_final_path=image_file_path+image_name;
    image_final_path2=image_file_path2+image_name;
    image = imread(image_final_path, CV_LOAD_IMAGE_COLOR);
    //src_rear=imread(image_final_path2, CV_LOAD_IMAGE_COLOR);
    src=image;
    
    printf("Next frame: %d \n",frame_counter);
    
    if ( !image.data )
    {
        printf("\nSequence completed...No image data \n");
      return -1;
    }
    
    imgLines = Mat::zeros( image.size(), CV_8UC3 );
    imgLines_contours = Mat::zeros( image.size(), CV_8UC3 );

    
    
    
    //TELOS DIAVASMATOS ARXIKHS EIKONAS KAI ARXH EPEKSERGASIAS    
    

   
   namedWindow( window_image, WINDOW_AUTOSIZE );
  // namedWindow( "REAR", WINDOW_AUTOSIZE );

   
  /* In terms of statistics, the values stored in BackProjection represent the probability that a pixel in Test Image belongs to a skin area, based on the model histogram that we use. For instance in our Test image, the brighter areas are more probable to be skin area (as they actually are), whereas the darker areas have less probability (notice that these “dark” areas belong to surfaces that have some shadow on it, which in turns affects the detection).
   */
  /// Set Trackbars for floodfill thresholds
  createTrackbar( "Low thresh", window_image, &lo, 255, 0 );
  createTrackbar( "High thresh", window_image, &up, 255, 0 );
  createTrackbar("iLowThresh", window_image, &iLowThresh, 100);
  createTrackbar("h_bins", window_image, &h_bins, 100);
  createTrackbar("s_bins", window_image, &s_bins, 100);
  /// Set a Mouse Callback
  setMouseCallback( window_image, pickPoint, 0 );
   

  
  
  contours=Hist_Backproj_Contours(image);
  vector<Moments> mu(contours.size() );
  vector<Point2f> mc( contours.size() );
//classify head , hands 
   for (size_t i=0; i<contours.size(); i++) {
    for (size_t j = 0; j < contours[i].size(); j++) {
        p = contours[i][j];
        points.push_back(p);
	drawContours(imgLines_contours, contours, i, Scalar(120,120,120), 2, 8, hierarchy, 0, Point() );
    }
    	a=contourArea( contours[i],false);
	mu[i] = moments( contours[i], false );
	mc[i] = Point2f( mu[i].m10/mu[i].m00 , mu[i].m01/mu[i].m00 );
	circle( imgLines_contours, mc[i], 4, Scalar(0,0,250), -1, 8, 0 );
	 //printf("Contour %d = %f ...(%f,%f) ...orientation = %lf \n",i,a,mc[i].x,mc[i].y,getOrientation(contours[i], imgLines_contours));
	//printf("Contour %d = %f ...(%f,%f) \n",i,a,mc[i].x,mc[i].y);
}


  
  
  
  int largestIndex = 0;
double largestContour = 0.0;
int secondLargestIndex = 0;
double secondLargestContour = 0.0;
int thirdLargestIndex = 0;
double thirdLargestContour = 0.0;
   
for( int i = 0; i< contours.size(); i++ )
{
  if( mc[i].x < 100 || mc[i].x >500 || mc[i].y < 100  || mc[i].y > 405) { //prepei (mc[i].y > 415) gia thn dana epeidh einai konth. gia tous allous ftanei to 400
    continue;
  } 
  a=contourArea( contours[i],false);
    if(a > largestContour){
      	thirdLargestContour = secondLargestContour;
        thirdLargestIndex = secondLargestIndex;
        secondLargestContour = largestContour;
        secondLargestIndex = largestIndex;
        largestContour = a;
        largestIndex = i;
    }else if(a > secondLargestContour){
	thirdLargestContour = secondLargestContour;
        thirdLargestIndex = secondLargestIndex;
        secondLargestContour = a;
        secondLargestIndex = i;
    }else if(a > thirdLargestContour){
        thirdLargestContour = a;
        thirdLargestIndex = i;
    } 
if(mc[2].x!=mc[2].x){mc[2].x=0.0;mc[2].y=0.0;}
}
 printf("First:%f , Second: %f , Third: %f \n",largestContour,secondLargestContour,thirdLargestContour);

    bounding_rect=boundingRect(contours[largestIndex]);
    bounding_rect2=boundingRect(contours[secondLargestIndex]);
    bounding_rect3=boundingRect(contours[thirdLargestIndex]);

    
	if (contours.size()==0){continue;}

	if (contours.size() >0){
	  
	  mu[0] = moments( contours[largestIndex], false );
	  mc[0] = Point2f( mu[0].m10/mu[0].m00 , mu[0].m01/mu[0].m00 );
	  if(isnan(mc[0].x)!=0){mc[0].x=0;mc[0].y=0;}
	  point_string_x[0]="";
	  convert4 << mc[0].x;
	  point_string_x[0] = convert4.str();
	  convert4.str(std::string());
	  
	   point_string_y[0]="";
	  convert5 << mc[0].y;
	  point_string_y[0] = convert5.str();
	  convert5.str(std::string());
	  
	}
	if (contours.size() >1){
	mu[1] = moments( contours[secondLargestIndex], false );
	mc[1] = Point2f( mu[1].m10/mu[1].m00 , mu[1].m01/mu[1].m00 );
	if(isnan(mc[1].x)!=0){mc[1].x=0;mc[1].y=0;}
	  point_string_x[1]="";
	  convert4 << mc[1].x;
	  point_string_x[1] = convert4.str();
	  convert4.str(std::string());
	  
	  point_string_y[1]="";
	  convert5 << mc[1].y;
	  point_string_y[1] = convert5.str();
	  convert5.str(std::string());
	}
		
	if (contours.size() >2){

	  mu[2] = moments( contours[thirdLargestIndex], false );
	  mc[2] = Point2f( mu[2].m10/mu[2].m00 , mu[2].m01/mu[2].m00 );
	  if(isnan(mc[2].x)!=0){mc[2].x=0;mc[2].y=0;}
	  point_string_x[2]="";
	  convert4 << mc[2].x;
	  point_string_x[2] = convert4.str();
	  convert4.str(std::string());
	  
	  point_string_y[2]="";
	  convert5 << mc[2].y;
	  point_string_y[2] = convert5.str();
	  convert5.str(std::string());

	}


	

	
    largestIndex_string="";
    convert2 << largestIndex; 
    largestIndex_string = convert2.str();
    convert2.str(std::string());
    secondLargestIndex_string="";
    convert2 << secondLargestIndex; 
    secondLargestIndex_string = convert2.str();
    convert2.str(std::string());
    thirdLargestIndex_string="";
    convert2 << thirdLargestIndex; 
    thirdLargestIndex_string = convert2.str();
    convert2.str(std::string());
    
    
    //Ta arxeia einai se morfh HEAD LEFT_HAND RIGHT_HAND OVERLAP


//Gia thn LANA se single handed xeironomies (fabs(secondLargestContour - thirdLargestContour) < 4000) alliws 2600
    if(( (mc[0].y < 230)||(mc[1].y < 230) ||(mc[2].y < 230) ) && (fabs(secondLargestContour - thirdLargestContour) < 4000 || secondLargestContour/thirdLargestContour < 5) && (secondLargestContour > 100.000000)  ){
      
    if(mc[0].y<230){
      rectangle( imgLines_contours,bounding_rect , Scalar(0,255,0),0,8 ); //GREEN - HEAD
            orientation_string="";
	    
	    
	    returned_array=getOrientation(contours[largestIndex], imgLines_contours);
      convert3 << returned_array[0]; 
      orientation_string = convert3.str();
      convert3.str(std::string());

      outfile << largestIndex_string+" ";
      

      

      if (mc[1].x<mc[2].x){
	rectangle( imgLines_contours,bounding_rect2 , Scalar(255,0,0),0,8 ); //BLUE-aristera opws koitame thn o8onh
	rectangle( imgLines_contours,bounding_rect3 , Scalar(0,0,255),0,8 ); //RED-deksia opws koitame thn o8onh

	outfile << secondLargestIndex_string+" ";
	outfile << thirdLargestIndex_string+" "+"*" << endl;
	
	orientation_string="";
	returned_array=getOrientation(contours[secondLargestIndex], imgLines_contours); 
	convert3 << returned_array[0];
	temp_double1=returned_array[1]; //pernaw ton pinaka se metavlhth double ka8ws to stringstream kanei string thn dieyuynsh toy pinaka an pernaga convert<<returned_array[1]
	temp_double2=returned_array[2];
	//printf("\nDistance p1 = %lf , Distance p2 = %lf \n",temp_double1,temp_double2);
	orientation_string = convert3.str();
	outfile2 << orientation_string+" ";	
	convert3.str(std::string());
        orientation_string="";
	
	convert6 << temp_double1;  //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to X (mhkos aksona dhladh)
	outfile5 << convert6.str()+" ";	
	convert6.str(std::string());
	convert6 << temp_double2; //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to Y (mhkos aksona dhladh)
	outfile5 << convert6.str()+" ";	
	convert6.str(std::string());
	
	
	returned_array=getOrientation(contours[thirdLargestIndex], imgLines_contours); 
	convert3 << returned_array[0]; 
	temp_double1=returned_array[1]; //pernaw ton pinaka se metavlhth double ka8ws to stringstream kanei string thn dieyuynsh toy pinaka an pernaga convert<<returned_array[1]
	temp_double2=returned_array[2];
	//	printf("\nDistance p1 = %lf , Distance p2 = %lf \n",temp_double1,temp_double2);
	orientation_string = convert3.str();
	outfile2 << orientation_string << endl;
	convert3.str(std::string());
	
		convert6 << temp_double1;  //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to X (mhkos aksona dhladh)
	outfile5 << convert6.str()+" ";	

	convert6.str(std::string());
	convert6 << temp_double2; //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to Y (mhkos aksona dhladh)
	outfile5 << convert6.str() << endl;	
	convert6.str(std::string());


	outfile3 << point_string_x[1]+" ";
	outfile3 << point_string_x[2] << endl;
	
	outfile4 << point_string_y[1]+" ";
	outfile4 << point_string_y[2] << endl;

      }
      else{
	rectangle( imgLines_contours,bounding_rect3 , Scalar(255,0,0),0,8 ); //BLUE aristera
	rectangle( imgLines_contours,bounding_rect2 , Scalar(0,0,255),0,8 ); //RED

	outfile << thirdLargestIndex_string+" ";
	outfile << secondLargestIndex_string+" "+"*" << endl;
	
	orientation_string="";
	
	
	returned_array=getOrientation(contours[thirdLargestIndex], imgLines_contours); 
	convert3 << returned_array[0]; 
	temp_double1=returned_array[1]; //pernaw ton pinaka se metavlhth double ka8ws to stringstream kanei string thn dieyuynsh toy pinaka an pernaga convert<<returned_array[1]
	temp_double2=returned_array[2];
	printf("\nDistance p1 = %lf , Distance p2 = %lf \n",temp_double1,temp_double2);
	orientation_string = convert3.str();
	outfile2 << orientation_string+" ";
	
	convert3.str(std::string());
	orientation_string="";
		convert6 << temp_double1;  //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to X (mhkos aksona dhladh)
	outfile5 << convert6.str()+" ";	
	convert6.str(std::string());
	convert6 << temp_double2; //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to Y (mhkos aksona dhladh)
	outfile5 << convert6.str()+" ";	
	convert6.str(std::string());

	returned_array=getOrientation(contours[secondLargestIndex], imgLines_contours);
	convert3 << returned_array[0]; 
	temp_double1=returned_array[1]; //pernaw ton pinaka se metavlhth double ka8ws to stringstream kanei string thn dieyuynsh toy pinaka an pernaga convert<<returned_array[1]
	temp_double2=returned_array[2];
		printf("\nDistance p1 = %lf , Distance p2 = %lf \n",temp_double1,temp_double2);
	orientation_string = convert3.str();
	
	outfile2 << orientation_string << endl;
	convert3.str(std::string());
		convert6 << temp_double1;  //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to X (mhkos aksona dhladh)
	outfile5 << convert6.str()+" ";	
	convert6.str(std::string());
	convert6 << temp_double2; //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to Y (mhkos aksona dhladh)
	outfile5 << convert6.str()<< endl;	
	convert6.str(std::string());
	
	outfile3 << point_string_x[2]+" ";
	outfile3 << point_string_x[1] << endl;
	
	outfile4 << point_string_y[2]+" ";
	outfile4 << point_string_y[1] << endl;
	
      }
    }
    else if (mc[1].y < 230){
            rectangle( imgLines_contours,bounding_rect2 , Scalar(0,255,0),0,8 ); //GREEN - HEAD
            orientation_string="";
	    

	returned_array=getOrientation(contours[secondLargestIndex], imgLines_contours);
	convert3 << returned_array[0]; 
      
      orientation_string = convert3.str();
      convert3.str(std::string());

      outfile << largestIndex_string+" ";

      

      if (mc[0].x<mc[2].x){
	rectangle( imgLines_contours,bounding_rect , Scalar(255,0,0),0,8 ); //BLUE-aristera opws koitame thn o8onh
	rectangle( imgLines_contours,bounding_rect3 , Scalar(0,0,255),0,8 ); //RED-deksia opws koitame thn o8onh

	outfile << largestIndex_string+" ";
	outfile << thirdLargestIndex_string+" "+"*" << endl;
	
	orientation_string="";


	
	returned_array=getOrientation(contours[largestIndex], imgLines_contours);
	convert3 << returned_array[0]; 
	temp_double1=returned_array[1]; //pernaw ton pinaka se metavlhth double ka8ws to stringstream kanei string thn dieyuynsh toy pinaka an pernaga convert<<returned_array[1]
	temp_double2=returned_array[2];
	
	orientation_string = convert3.str();
	outfile2 << orientation_string+" ";
	
	convert3.str(std::string());
        orientation_string="";
		convert6 << temp_double1;  //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to X (mhkos aksona dhladh)
	outfile5 << convert6.str()+" ";	
	convert6.str(std::string());
	convert6 << temp_double2; //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to Y (mhkos aksona dhladh)
	outfile5 << convert6.str()+" ";	
	convert6.str(std::string());
	
	returned_array=getOrientation(contours[thirdLargestIndex], imgLines_contours); 
	convert3 << returned_array[0]; 
	temp_double1=returned_array[1]; //pernaw ton pinaka se metavlhth double ka8ws to stringstream kanei string thn dieyuynsh toy pinaka an pernaga convert<<returned_array[1]
	temp_double2=returned_array[2];
	
	
	orientation_string = convert3.str();
	outfile2 << orientation_string << endl;
	convert3.str(std::string());
		convert6 << temp_double1;  //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to X (mhkos aksona dhladh)
	outfile5 << convert6.str()+" ";	
	convert6.str(std::string());
	convert6 << temp_double2; //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to Y (mhkos aksona dhladh)
	outfile5 << convert6.str() << endl;	
	convert6.str(std::string());
	
	outfile3 << point_string_x[0]+" ";
	outfile3 << point_string_x[2] << endl;
	
	outfile4 << point_string_y[0]+" ";
	outfile4 << point_string_y[2] << endl;

      }
      else{
	rectangle( imgLines_contours,bounding_rect3 , Scalar(255,0,0),0,8 ); //BLUE aristera
	rectangle( imgLines_contours,bounding_rect , Scalar(0,0,255),0,8 ); //RED

	outfile << thirdLargestIndex_string+" ";
	outfile << largestIndex_string+" "+"*" << endl;
	
	orientation_string="";
	
	returned_array=getOrientation(contours[thirdLargestIndex], imgLines_contours); 
	convert3 << returned_array[0]; 
	temp_double1=returned_array[1]; //pernaw ton pinaka se metavlhth double ka8ws to stringstream kanei string thn dieyuynsh toy pinaka an pernaga convert<<returned_array[1]
	temp_double2=returned_array[2];
	
	orientation_string = convert3.str();
	outfile2 << orientation_string+" ";
	
	convert3.str(std::string());
			convert6 << temp_double1;  //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to X (mhkos aksona dhladh)
	outfile5 << convert6.str()+" ";	
	convert6.str(std::string());
	convert6 << temp_double2; //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to Y (mhkos aksona dhladh)
	outfile5 << convert6.str()+" ";	
	convert6.str(std::string());
	
	orientation_string="";
	
	returned_array=getOrientation(contours[largestIndex], imgLines_contours);
	convert3 << returned_array[0]; 
	temp_double1=returned_array[1]; //pernaw ton pinaka se metavlhth double ka8ws to stringstream kanei string thn dieyuynsh toy pinaka an pernaga convert<<returned_array[1]
	temp_double2=returned_array[2];
	orientation_string = convert3.str();
	
	outfile2 << orientation_string << endl;
	convert3.str(std::string());
		convert6 << temp_double1;  //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to X (mhkos aksona dhladh)
	outfile5 << convert6.str()+" ";	
	convert6.str(std::string());
	convert6 << temp_double2; //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to Y (mhkos aksona dhladh)
	outfile5 << convert6.str()<< endl;	
	convert6.str(std::string());

	
	outfile3 << point_string_x[2]+" ";
	outfile3 << point_string_x[0] << endl;
	
	outfile4 << point_string_y[2]+" ";
	outfile4 << point_string_y[0] << endl;
	
      }
    }
    else{
      rectangle( imgLines_contours,bounding_rect3 , Scalar(0,255,0),0,8 ); //GREEN - HEAD
            orientation_string="";
	    
      	returned_array=getOrientation(contours[thirdLargestIndex], imgLines_contours); 
	convert3 << returned_array[0]; 

      
      orientation_string = convert3.str();
      convert3.str(std::string());

      outfile << largestIndex_string+" ";


      if (mc[0].x<mc[1].x){
	rectangle( imgLines_contours,bounding_rect , Scalar(255,0,0),0,8 ); //BLUE-aristera opws koitame thn o8onh
	rectangle( imgLines_contours,bounding_rect2 , Scalar(0,0,255),0,8 ); //RED-deksia opws koitame thn o8onh

	outfile << largestIndex_string+" ";
	outfile << secondLargestIndex_string+" "+"*" << endl;
	
	orientation_string="";
	
	returned_array=getOrientation(contours[largestIndex], imgLines_contours);
	convert3 << returned_array[0]; 
	temp_double1=returned_array[1]; //pernaw ton pinaka se metavlhth double ka8ws to stringstream kanei string thn dieyuynsh toy pinaka an pernaga convert<<returned_array[1]
	temp_double2=returned_array[2];
	orientation_string = convert3.str();
	outfile2 << orientation_string+" ";
	
	convert3.str(std::string());
        orientation_string="";
	convert6 << temp_double1;  //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to X (mhkos aksona dhladh)
	outfile5 << convert6.str()+" ";	
	convert6.str(std::string());
	convert6 << temp_double2; //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to Y (mhkos aksona dhladh)
	outfile5 << convert6.str()+" ";	
	convert6.str(std::string());
	
	returned_array=getOrientation(contours[secondLargestIndex], imgLines_contours);
	convert3 << returned_array[0]; 
	temp_double1=returned_array[1]; //pernaw ton pinaka se metavlhth double ka8ws to stringstream kanei string thn dieyuynsh toy pinaka an pernaga convert<<returned_array[1]
	temp_double2=returned_array[2];
	
	orientation_string = convert3.str();
	outfile2 << orientation_string << endl;
	convert3.str(std::string());
			convert6 << temp_double1;  //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to X (mhkos aksona dhladh)
	outfile5 << convert6.str()+" ";	
	convert6.str(std::string());
	convert6 << temp_double2; //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to Y (mhkos aksona dhladh)
	outfile5 << convert6.str()<< endl;	
	convert6.str(std::string());
	
	outfile3 << point_string_x[0]+" ";
	outfile3 << point_string_x[1] << endl;
	
	outfile4 << point_string_y[0]+" ";
	outfile4 << point_string_y[1] << endl;

      }
      else{
	rectangle( imgLines_contours,bounding_rect2 , Scalar(255,0,0),0,8 ); //BLUE aristera
	rectangle( imgLines_contours,bounding_rect , Scalar(0,0,255),0,8 ); //RED

	outfile << secondLargestIndex_string+" ";
	outfile << largestIndex_string+" "+"*" << endl;
	
	orientation_string="";
	

	returned_array=getOrientation(contours[secondLargestIndex], imgLines_contours);
	convert3 << returned_array[0]; 
	temp_double1=returned_array[1];
	temp_double2=returned_array[2];
	
	orientation_string = convert3.str();
	outfile2 << orientation_string+" ";
	
	convert3.str(std::string());
	convert6 << temp_double1;  //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to X (mhkos aksona dhladh)
	outfile5 << convert6.str()+" ";	
	convert6.str(std::string());
	convert6 << temp_double2; //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to Y (mhkos aksona dhladh)
	outfile5 << convert6.str()+" ";	
	convert6.str(std::string());
	
	orientation_string="";
	
	returned_array=getOrientation(contours[largestIndex], imgLines_contours);
	convert3 << returned_array[0]; 
	temp_double1=returned_array[1];
	temp_double2=returned_array[2];
	orientation_string = convert3.str();
	
	outfile2 << orientation_string << endl;
	convert3.str(std::string());
		convert6 << temp_double1;  //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to X (mhkos aksona dhladh)
	outfile5 << convert6.str()+" ";	
	convert6.str(std::string());
	convert6 << temp_double2; //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to Y (mhkos aksona dhladh)
	outfile5 << convert6.str()<< endl;	
	convert6.str(std::string());
	
	outfile3 << point_string_x[1]+" ";
	outfile3 << point_string_x[0] << endl;
	
	outfile4 << point_string_y[1]+" ";
	outfile4 << point_string_y[0] << endl;
	
      }
    }
      
    


    }
    else{
      if (mc[0].y > 230){
	
	rectangle( imgLines_contours,bounding_rect , Scalar(100,255,50),0,8 ); //OVERLAP	
	rectangle( imgLines_contours,bounding_rect2 , Scalar(0,255,0),0,8 ); //HEAD
	

	
	outfile << secondLargestIndex_string+" "+"* * ";
	outfile << largestIndex_string << endl;
	
	orientation_string="";
	

	convert3.str(std::string());
	orientation_string="";
	
	returned_array=getOrientation(contours[largestIndex], imgLines_contours);
	convert3 << returned_array[0]; 
		temp_double1=returned_array[1];
	temp_double2=returned_array[2];
	orientation_string = convert3.str();
	
	outfile2 << orientation_string+" "+orientation_string << endl;
	convert3.str(std::string());
		convert6 << temp_double1;  //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to X (mhkos aksona dhladh)
	outfile5 << convert6.str()+" ";	//apo8hkeuw to mhkos tou overlap kai sta dyo xeria
	convert6.str(std::string());
	convert6 << temp_double2; //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to Y (mhkos aksona dhladh)
	outfile5 << convert6.str()+" ";	
	convert6.str(std::string());
		convert6 << temp_double1;  //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to X (mhkos aksona dhladh)
	outfile5 << convert6.str()+" ";	
	convert6.str(std::string());
	convert6 << temp_double2; //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to Y (mhkos aksona dhladh)
	outfile5 << convert6.str()<< endl;	
	convert6.str(std::string());
	
	outfile3 << point_string_x[0]+" ";
	outfile3 << point_string_x[0] << endl;
	
	outfile4 << point_string_y[0]+" ";
	outfile4 << point_string_y[0] << endl;
	
      }
      else{
	rectangle( imgLines_contours,bounding_rect2 , Scalar(100,255,50),0,8 ); //OVERLAP
	rectangle( imgLines_contours,bounding_rect , Scalar(0,255,0),0,8 ); //HEAD

	outfile << largestIndex_string+" "+"* * ";
	outfile << secondLargestIndex_string << endl;
	
	orientation_string="";

	convert3.str(std::string());
	orientation_string="";
	
	returned_array=getOrientation(contours[secondLargestIndex], imgLines_contours);

	temp_double1=returned_array[1];
	temp_double2=returned_array[2];
	temp_double3=returned_array[0];
	convert3 << temp_double3; 

	orientation_string = convert3.str();
	
	outfile2 << orientation_string+" "+orientation_string << endl;
	convert3.str(std::string());
		convert6 << temp_double1;  //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to X (mhkos aksona dhladh)
	outfile5 << convert6.str()+" ";	
	convert6.str(std::string());
	convert6 << temp_double2; //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to Y (mhkos aksona dhladh)
	outfile5 << convert6.str()+" ";	
	convert6.str(std::string());
		convert6 << temp_double1;  //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to X (mhkos aksona dhladh)
	outfile5 << convert6.str()+" ";	
	convert6.str(std::string());
	convert6 << temp_double2; //store thn apostash tou contour centre (aristera opws koitame thn o8onh) apo to Y (mhkos aksona dhladh)
	outfile5 << convert6.str()<< endl;	
	convert6.str(std::string());
	
	outfile3 << point_string_x[1]+" ";
	outfile3 << point_string_x[1] << endl;
	
	outfile4 << point_string_y[1]+" ";
	outfile4 << point_string_y[1] << endl;
	
      }
    }
    

    
    

  circle(imgLines_contours, seed, 3, Scalar(0, 255, 0), 2);
  imgLines_contours=imgLines_contours + image;
  imshow( window_image, imgLines_contours);
//End of classification 
    if (waitKey(1) == 27)
       {
            cout << "esc key is pressed by user" << endl;
            return -1; 
       }

      
  }
  
  
   outfile.close();
   outfile2.close();
   outfile3.close();
   outfile4.close();
   outfile5.close();
    return 0;
}



std::vector< std::vector<cv::Point> > Hist_Backproj_Contours(Mat src)
{
  MatND hist;

  int histSize[] = { h_bins, s_bins };
  Mat hsv;
  float h_range[] = { 0, 179 };
  float s_range[] = { 0, 255 };
  const float* ranges[] = { h_range, s_range };
  int newMaskVal,connectivity,flags;
  int channels[] = { 0, 1 };
  Mat imgLines,imgLines_contours;

  std::vector<cv::Point> points;
  std::vector< std::vector<cv::Point> > contours;
  
  cv::Point p;

  
  imgLines = Mat::zeros( src.size(), CV_8UC3 );
  imgLines_contours = Mat::zeros( src.size(), CV_8UC3 );
  cvtColor(src, hsv, COLOR_BGR2HSV);
  //Pick point
  


    newMaskVal = 255;
    Scalar newVal = Scalar( 120, 120, 120 );

    connectivity = 8;
    flags = connectivity + (newMaskVal << 8 ) + FLOODFILL_FIXED_RANGE + FLOODFILL_MASK_ONLY;

    Mat mask2 = Mat::zeros( src.rows + 2, src.cols + 2, CV_8UC1 );
    floodFill( src, mask2, seed, newVal, 0, Scalar( lo, lo, lo ), Scalar( up, up, up), flags );
    mask = mask2( Range( 1, mask2.rows - 1 ), Range( 1, mask2.cols - 1 ) );

  
  //End pick point
  
  
  /// Get the Histogram and normalize it
 // calcHist( &hsv, 1, channels, mask, hist, 2, histSize, ranges, true, false );

  //normalize( hist, hist, 0, 255, NORM_MINMAX, -1, Mat() );

  /// Get Backprojection
  MatND backproj2=hsv;

  //calcBackProject( &hsv, 1, channels, hist, backproj2, ranges, 1, true );

 for(int y=0;y<mask.rows;y++)
    {
        for(int x=0;x<mask.cols;x++)
        {
	  
	  Scalar color = mask.at<uchar>(Point(x, y));

        if(mask.at<uchar>(y, x) > 10)
        {
            mask.at<uchar>(y, x) = 0;
        }
        else{
	    mask.at<uchar>(y, x) = 255;
	}

      }
    }
 

    int kernel_size=9;
    vector<Vec4i> hierarchy;
  erode(backproj2, backproj2, getStructuringElement(MORPH_CROSS, Size(kernel_size, kernel_size)) );//MORPH_ELLIPSE //MORPH_CROSS//MORPH_RECT
  dilate( backproj2, backproj2, getStructuringElement(MORPH_CROSS, Size(kernel_size, kernel_size)) ); 
  
   //morphological closing (removes small holes from the foreground)
  dilate( backproj2, backproj2, getStructuringElement(MORPH_CROSS, Size(kernel_size, kernel_size)) ); 
  erode(backproj2, backproj2, getStructuringElement(MORPH_CROSS, Size(kernel_size, kernel_size)) );
  // blur( backproj2, backproj2, Size(3,3) );
    
    //Canny( backproj2,backproj2, iLowThresh, iLowThresh*3, 3 ); 
    
     findContours(mask,contours,hierarchy,CV_RETR_EXTERNAL, CV_CHAIN_APPROX_TC89_KCOS);
  //imshow( "Backproj", backproj2);
  
  return(contours);
  
}
double* getOrientation(const vector<Point> &pts, Mat &img)
{
    //Construct a buffer used by the pca analysis
    int sz = static_cast<int>(pts.size());
    double* return_array;
    return_array=new double[3];

        return_array[0]=0.0;
    return_array[1]=0.0;
    return_array[2]=0.0;

    Mat data_pts = Mat(sz, 2, CV_64FC1);
    for (int i = 0; i < data_pts.rows; ++i)
    {
        data_pts.at<double>(i, 0) = pts[i].x;
        data_pts.at<double>(i, 1) = pts[i].y;
    }
    //Perform PCA analysis
    PCA pca_analysis(data_pts, Mat(), CV_PCA_DATA_AS_ROW);
    //Store the center of the object
    Point cntr = Point(static_cast<int>(pca_analysis.mean.at<double>(0, 0)),
                      static_cast<int>(pca_analysis.mean.at<double>(0, 1)));
    //Store the eigenvalues and eigenvectors
    vector<Point2d> eigen_vecs(2);
    vector<double> eigen_val(2);
    for (int i = 0; i < 2; ++i)
    {
        eigen_vecs[i] = Point2d(pca_analysis.eigenvectors.at<double>(i, 0),
                                pca_analysis.eigenvectors.at<double>(i, 1));
        eigen_val[i] = pca_analysis.eigenvalues.at<double>(0, i);
    }
    // Draw the principal components
    circle(img, cntr, 3, Scalar(255, 0, 255), 2);
    Point p1 = cntr + 0.02 * Point(static_cast<int>(eigen_vecs[0].x * eigen_val[0]), static_cast<int>(eigen_vecs[0].y * eigen_val[0]));
    Point p2 = cntr - 0.02 * Point(static_cast<int>(eigen_vecs[1].x * eigen_val[1]), static_cast<int>(eigen_vecs[1].y * eigen_val[1]));

    return_array[1]=drawAxis(img, cntr, p1, Scalar(0, 255, 0), 1);
    return_array[2]=drawAxis(img, cntr, p2, Scalar(255, 255, 0), 5);
    return_array[0] = atan2(eigen_vecs[0].y, eigen_vecs[0].x); // orientation in radians
    

    return return_array;
}

double drawAxis(Mat& img, Point p, Point q, Scalar colour, const float scale = 0.2)
{
    double angle;
    double hypotenuse;
    angle = atan2( (double) p.y - q.y, (double) p.x - q.x ); // angle in radians
    hypotenuse = sqrt( (double) (p.y - q.y) * (p.y - q.y) + (p.x - q.x) * (p.x - q.x));
//    double degrees = angle * 180 / CV_PI; // convert radians to degrees (0-180 range)
//    cout << "Degrees: " << abs(degrees - 180) << endl; // angle in 0-360 degrees range
    // Here we lengthen the arrow by a factor of scale
    q.x = (int) (p.x - scale * hypotenuse * cos(angle));
    q.y = (int) (p.y - scale * hypotenuse * sin(angle));
    line(img, p, q, colour, 1, CV_AA);
    // create the arrow hooks
    p.x = (int) (q.x + 9 * cos(angle + CV_PI / 4));
    p.y = (int) (q.y + 9 * sin(angle + CV_PI / 4));
    line(img, p, q, colour, 1, CV_AA);
    p.x = (int) (q.x + 9 * cos(angle - CV_PI / 4));
    p.y = (int) (q.y + 9 * sin(angle - CV_PI / 4));
    line(img, p, q, colour, 1, CV_AA);
   // printf("sqrt((%d - %d)^2 + (%d - %d)^2) = %lf \n",p.x,q.x,p.y,q.y,sqrt((pow(abs(p.x-q.x),2))+(pow(abs(p.y-q.y),2))));
    return(sqrt((pow(abs(p.x-q.x),2))+(pow(abs(p.y-q.y),2))));
}

void pickPoint (int event, int x, int y, int, void* )
{
  Mat mask;
  if( event != EVENT_LBUTTONDOWN )
    { return; }

  // Fill and get the mask
  Point seed = Point( x, y );

  int newMaskVal = 255;
  Scalar newVal = Scalar( 120, 120, 120 );

  int connectivity = 8;
  int flags = connectivity + (newMaskVal << 8 ) + FLOODFILL_FIXED_RANGE + FLOODFILL_MASK_ONLY;

  Mat mask2 = Mat::zeros( src.rows + 2, src.cols + 2, CV_8UC1 );
  floodFill( src, mask2, seed, newVal, 0, Scalar( lo, lo, lo ), Scalar( up, up, up), flags );
  mask = mask2( Range( 1, mask2.rows - 1 ), Range( 1, mask2.cols - 1 ) );

  imshow( "Mask", mask );
printf("x=%d y=%d\n", x,y);

}

