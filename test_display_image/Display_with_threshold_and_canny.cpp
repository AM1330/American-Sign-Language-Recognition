#include <stdio.h>
#include <opencv2/opencv.hpp>
#include <string>
#include <iostream>
#include <sstream> 
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include <unistd.h>
using namespace cv;
using namespace std;

//Function headers
void Hist_and_Backproj( );
void pickPoint (int event, int x, int y, int, void* );

//gloabal variables
int h_bins = 30;
int s_bins =32;
Mat hsv,src;
 Mat imgLines,imgLines_contours;
Mat mask;
 Mat imgThresholded;
 
int lo = 20; int up = 40;
int iLowThresh=100;
const char* window_image = "Source image";


int main(int argc, char** argv )
{

    
 ///ARXIKOPOIHSEIS  
    Mat image,gray_image;
    int frame_counter=1;
    string frame_counter_string;
   std::string image_name ;
    ostringstream convert;
    string image_final_path;

    

   int iLowH = 0;
 int iHighH = 50;

  int iLowS = 0; 
 int iHighS = 255;

  int iLowV = 60;
 int iHighV = 255;
 
int iLowThresh = 25;


    
    
  while(true){
    ///DIAVASMA EIKONAS
    frame_counter_string="";
    convert << frame_counter; 
    frame_counter_string = convert.str();
    
    std::string image_file_path ("/home/alex/diplwmatikh/test_display_image/against1a/");
    
    
    if( frame_counter >= 10 ){ 
      frame_counter_string= frame_counter_string.substr (frame_counter_string.length()-2,frame_counter_string.length());
      image_name="Image000000"+ frame_counter_string +"_0"+ frame_counter_string +".jpg"; 
      if (waitKey(0)==99){
	frame_counter--;
      }else{frame_counter++;}//stelnw thn epomenh eikona  
    }
    else{
      frame_counter_string= frame_counter_string.substr (frame_counter_string.length()-1,frame_counter_string.length());
      image_name="Image0000000"+ frame_counter_string +"_00"+ frame_counter_string +".jpg";     
      if (waitKey(0)==99){
	frame_counter--;
      }else{frame_counter++;}//stelnw thn epomenh eikona
    }

    image_final_path=image_file_path+image_name;
    image = imread(image_final_path, CV_LOAD_IMAGE_COLOR);

    
    
    
    if ( !image.data )
    {
        printf("\nSequence completed...No image data \n");
      return -1;
    }
    
   
    imgLines = Mat::zeros( image.size(), CV_8UC3 );
imgLines_contours = Mat::zeros( image.size(), CV_8UC3 );
    
    
    
    //TELOS DIAVASMATOS ARXIKHS EIKONAS KAI ARXH EPEKSERGASIAS    
    

   cvtColor(image, hsv, COLOR_BGR2HSV); //Convert the captured frame from BGR to HSV
   src=image;
   namedWindow( window_image, WINDOW_AUTOSIZE );

    namedWindow("Control", CV_WINDOW_NORMAL); //create a window called "Control"  
  


  //Create trackbars in "Control" window
 createTrackbar("LowH", "Control", &iLowH, 179); //Hue (0 - 179)
 createTrackbar("HighH", "Control", &iHighH, 179);

  createTrackbar("LowS", "Control", &iLowS, 255); //Saturation (0 - 255)
 createTrackbar("HighS", "Control", &iHighS, 255);

  createTrackbar("LowV", "Control", &iLowV, 255);//Value (0 - 255)
 createTrackbar("HighV", "Control", &iHighV, 255);
 
   createTrackbar("LowThresh(enable canny first)", "Control", &iLowThresh, 100);//Value (0 - 100)



   inRange(hsv, Scalar(iLowH, iLowS, iLowV), Scalar(iHighH, iHighS, iHighV), imgThresholded); //Threshold the image

   //Canny( imgThresholded,imgThresholded, iLowThresh, iLowThresh*2, 3 );    
  
  
  //morphological opening (removes small objects from the foreground)
   int kernel_size=3;
  erode(imgThresholded, imgThresholded, getStructuringElement(MORPH_CROSS, Size(kernel_size, kernel_size)) );//MORPH_ELLIPSE //MORPH_CROSS//MORPH_RECT
  dilate( imgThresholded, imgThresholded, getStructuringElement(MORPH_CROSS, Size(kernel_size, kernel_size)) ); 

   //morphological closing (removes small holes from the foreground)
  dilate( imgThresholded, imgThresholded, getStructuringElement(MORPH_CROSS, Size(kernel_size, kernel_size)) ); 
  erode(imgThresholded, imgThresholded, getStructuringElement(MORPH_CROSS, Size(kernel_size, kernel_size)) );
  
   std::vector< std::vector<cv::Point> > contours;
std::vector<cv::Point> points;
Rect bounding_rect,bounding_rect2,bounding_rect3;
  cv::Point p,p2,p3;
 findContours(imgThresholded,contours,CV_RETR_EXTERNAL, CV_CHAIN_APPROX_SIMPLE);
 
         double a;
	double largest_area;
	
for (size_t i=0; i<contours.size(); i++) {
    for (size_t j = 0; j < contours[i].size(); j++) {
        p = contours[i][j];
        points.push_back(p);
	
a=contourArea( contours[i],false);

      if(a>largest_area){
            largest_area=a;cout<<i<<" area  "<<a<<endl;
      }
    }
}

int largestIndex = 0;
double largestContour = 0;
int secondLargestIndex = 0;
double secondLargestContour = 0;
int thirdLargestIndex = 0;
double thirdLargestContour = 0;

for( int i = 0; i< contours.size(); i++ )
{
  a=contourArea( contours[i],false);
    if(a > largestContour){
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
}

    bounding_rect=boundingRect(contours[largestIndex]);
    bounding_rect2=boundingRect(contours[secondLargestIndex]);
    bounding_rect3=boundingRect(contours[thirdLargestIndex]);
//Scalar color = Scalar(0,0,255);
//Scalar color2 = Scalar(100,150,200);
//drawContours( imgLines, contours, largestIndex, color, CV_FILLED, 8);
//drawContours( imgLines, contours, secondLargestIndex, color2, CV_FILLED, 8);

     imgLines = Mat::zeros( src.size(), CV_8UC3 ); //gia na diagrafei to prohgoumeno tetragwno apo thn eikona 
     printf("%f %f %f \n",largestContour, secondLargestContour,thirdLargestContour );
  
  if(largestContour>4000){

    rectangle( imgLines,bounding_rect , Scalar(10,10,255),0,8 );//Point( p.x-30, p.y-30 ), Point( p.x+30, p.y+30) RED

  }
    if(secondLargestContour>100){

    rectangle( imgLines,bounding_rect2 , Scalar(255,10,10),0,8 ); //BLUE

  }
    if(thirdLargestContour>100){

    rectangle( imgLines,bounding_rect3 , Scalar(10,255,10),0,8 ); //GREEN
  }

   imshow("Thresholded Image", imgThresholded); //show the thresholded image

   src = src + imgLines;
  imshow("Original", src); //show the original image
  
  
  
  
  
   
    if (waitKey(1) == 27)
       {
            cout << "esc key is pressed by user" << endl;
            return -1; 
       }

      
  }
  
  
  
    return 0;
}