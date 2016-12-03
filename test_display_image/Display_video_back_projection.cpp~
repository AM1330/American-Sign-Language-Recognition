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


   
  /* In terms of statistics, the values stored in BackProjection represent the probability that a pixel in Test Image belongs to a skin area, based on the model histogram that we use. For instance in our Test image, the brighter areas are more probable to be skin area (as they actually are), whereas the darker areas have less probability (notice that these “dark” areas belong to surfaces that have some shadow on it, which in turns affects the detection).
   */
  /// Set Trackbars for floodfill thresholds
  createTrackbar( "Low thresh", window_image, &lo, 255, 0 );
  createTrackbar( "High thresh", window_image, &up, 255, 0 );
  createTrackbar("iLowThresh", window_image, &iLowThresh, 100);
  createTrackbar("h_bins", window_image, &h_bins, 100);
    createTrackbar("s_bins", window_image, &s_bins, 100);
  /// Set a Mouse Callback
 // setMouseCallback( window_image, pickPoint, 0 );
   

  
  
  Hist_and_Backproj( );

   

   
   
    if (waitKey(1) == 27)
       {
            cout << "esc key is pressed by user" << endl;
            return -1; 
       }

      
  }
  
  
  
    return 0;
}



void Hist_and_Backproj( )
{
  MatND hist;

  int histSize[] = { h_bins, s_bins };

  float h_range[] = { 0, 179 };
  float s_range[] = { 0, 255 };
  const float* ranges[] = { h_range, s_range };

  int channels[] = { 0, 1 };

  std::vector<cv::Point> points;
  std::vector< std::vector<cv::Point> > contours;
  Rect bounding_rect,bounding_rect2,bounding_rect3;
  cv::Point p;
  //Pick point
  
      Point seed = Point( 296, 143 ); //kapou anamesa sta matia kai thn myth

  int newMaskVal = 255;
  Scalar newVal = Scalar( 120, 120, 120 );

  int connectivity = 8;
  int flags = connectivity + (newMaskVal << 8 ) + FLOODFILL_FIXED_RANGE + FLOODFILL_MASK_ONLY;

  Mat mask2 = Mat::zeros( src.rows + 2, src.cols + 2, CV_8UC1 );
  floodFill( src, mask2, seed, newVal, 0, Scalar( lo, lo, lo ), Scalar( up, up, up), flags );
  mask = mask2( Range( 1, mask2.rows - 1 ), Range( 1, mask2.cols - 1 ) );
  
  
  
  //End pick point
  
  
  /// Get the Histogram and normalize it
  calcHist( &hsv, 1, channels, mask, hist, 2, histSize, ranges, true, false );

  normalize( hist, hist, 0, 255, NORM_MINMAX, -1, Mat() );

  /// Get Backprojection
  MatND backproj,backproj2;
  calcBackProject( &hsv, 1, channels, hist, backproj, ranges, 1, true );
  calcBackProject( &hsv, 1, channels, hist, backproj2, ranges, 1, true );

 for(int y=0;y<backproj.rows;y++)
    {
        for(int x=0;x<backproj.cols;x++)
        {
	  
	  Scalar color = backproj.at<uchar>(Point(x, y));

        if(backproj.at<uchar>(y, x) > 10)
        {
            backproj.at<uchar>(y, x) = 255;
        }
        else{
	    backproj.at<uchar>(y, x) = 0;
	}

      }
    }
    
    
 for(int y=0;y<backproj2.rows;y++)
    {
        for(int x=0;x<backproj2.cols;x++)
        {
	  
	  Scalar color = backproj2.at<uchar>(Point(x, y));

        if(backproj2.at<uchar>(y, x) > 10)
        {
            backproj2.at<uchar>(y, x) = 255;
        }
        else{
	    backproj2.at<uchar>(y, x) = 0;
	}

      }
    }

   // int kernel_size=3;
//  erode(backproj2, backproj2, getStructuringElement(MORPH_CROSS, Size(kernel_size, kernel_size)) );//MORPH_ELLIPSE //MORPH_CROSS//MORPH_RECT
  //dilate( backproj2, backproj2, getStructuringElement(MORPH_CROSS, Size(kernel_size, kernel_size)) ); 

   //morphological closing (removes small holes from the foreground)
//  dilate( backproj2, backproj2, getStructuringElement(MORPH_CROSS, Size(kernel_size, kernel_size)) ); 
  //erode(backproj2, backproj2, getStructuringElement(MORPH_CROSS, Size(kernel_size, kernel_size)) );
  // blur( backproj2, backproj2, Size(3,3) );
    
    //Canny( backproj2,backproj2, iLowThresh, iLowThresh*3, 3 ); 
    
     findContours(backproj2,contours,CV_RETR_LIST, CV_CHAIN_APPROX_SIMPLE);
     
              double a;
	double largest_area;
	
for (size_t i=0; i<contours.size(); i++) {
    for (size_t j = 0; j < contours[i].size(); j++) {
        p = contours[i][j];
        points.push_back(p);
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
     
     
     


if(largestContour>3000){

    rectangle( imgLines_contours,bounding_rect , Scalar(0,0,255),0,8 );// RED
    //printf("RED area=%f ",largestContour);
  }
    if(secondLargestContour>900 && secondLargestContour<2000 ){
    rectangle( imgLines_contours,bounding_rect2 , Scalar(255,0,0),0,8 ); //BLUE
    //printf("BLUE area=%f ",secondLargestContour);
  }
    if(thirdLargestContour>350 && thirdLargestContour<2000){
    rectangle( imgLines_contours,bounding_rect3 , Scalar(0,255,0),0,8 ); //GREEN
    //printf("GREEN area=%f \n",thirdLargestContour);
  }




  /// Draw the backproj
  imshow( "BackProj", backproj );
imshow( "BackProj2", backproj2 );
  //namedWindow( "Canny", WINDOW_AUTOSIZE );
  
   
  
 // imshow( "Canny", imgLines );
  


  
      imgLines_contours=imgLines_contours + src;
  imshow( window_image, imgLines_contours);
  
  
  
  
  
}


void pickPoint (int event, int x, int y, int, void* )
{
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

  //imshow( "Mask", mask );
printf("x=%d y=%d\n", x,y);
  Hist_and_Backproj( );
}

