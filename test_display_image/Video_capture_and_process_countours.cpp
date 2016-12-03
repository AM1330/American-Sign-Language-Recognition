
   

#include <iostream>
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include <stdio.h>

using namespace cv;
using namespace std;

 int main( int argc, char** argv )
 {
    VideoCapture cap("scene7-camera1.mov"); //capture the video from web cam
    if ( !cap.isOpened() )  // if not success, exit program
    {
         cout << "Cannot open the web cam" << endl;
         return -1;
    }

    namedWindow("Control", CV_WINDOW_NORMAL); //create a window called "Control"

  int iLowH = 0;
 int iHighH = 50;

  int iLowS = 0; 
 int iHighS = 255;

  int iLowV = 60;
 int iHighV = 255;
 
int iLowThresh = 25;

  //Create trackbars in "Control" window
 createTrackbar("LowH", "Control", &iLowH, 179); //Hue (0 - 179)
 createTrackbar("HighH", "Control", &iHighH, 179);

  createTrackbar("LowS", "Control", &iLowS, 255); //Saturation (0 - 255)
 createTrackbar("HighS", "Control", &iHighS, 255);

  createTrackbar("LowV", "Control", &iLowV, 255);//Value (0 - 255)
 createTrackbar("HighV", "Control", &iHighV, 255);
 
   createTrackbar("LowThresh(enable canny first)", "Control", &iLowThresh, 100);//Value (0 - 100)


  int iLastX = -1; 
 int iLastY = -1;

  //Capture a temporary image from the camera
 Mat imgTmp;
 cap.read(imgTmp); 

  //Create a black image with the size as the camera output
 Mat imgLines = Mat::zeros( imgTmp.size(), CV_8UC3 );;
 

    while (true)
    {
        Mat imgOriginal;

        bool bSuccess = cap.read(imgOriginal); // read a new frame from video



         if (!bSuccess) //if not success, break loop
        {
             cout << "Cannot read a frame from video stream" << endl;
             break;
        }

    Mat imgHSV;

   cvtColor(imgOriginal, imgHSV, COLOR_BGR2HSV); //Convert the captured frame from BGR to HSV
 
  Mat imgThresholded;

   inRange(imgHSV, Scalar(iLowH, iLowS, iLowV), Scalar(iHighH, iHighS, iHighV), imgThresholded); //Threshold the image
   
   
  //Canny( imgThresholded,imgThresholded, iLowThresh, iLowThresh*2, 3 );    
  
  
  //morphological opening (removes small objects from the foreground)
   int kernel_size=9;
  erode(imgThresholded, imgThresholded, getStructuringElement(MORPH_CROSS, Size(kernel_size, kernel_size)) );//MORPH_ELLIPSE //MORPH_CROSS//MORPH_RECT
  dilate( imgThresholded, imgThresholded, getStructuringElement(MORPH_CROSS, Size(kernel_size, kernel_size)) ); 

   //morphological closing (removes small holes from the foreground)
  dilate( imgThresholded, imgThresholded, getStructuringElement(MORPH_CROSS, Size(kernel_size, kernel_size)) ); 
  erode(imgThresholded, imgThresholded, getStructuringElement(MORPH_CROSS, Size(kernel_size, kernel_size)) );

   //Calculate the moments of the thresholded image
  Moments oMoments = moments(imgThresholded);

   double dM01 = oMoments.m01;
  double dM10 = oMoments.m10;
  double dArea = oMoments.m00;
  
  
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

     imgLines = Mat::zeros( imgTmp.size(), CV_8UC3 ); //gia na diagrafei to prohgoumeno tetragwno apo thn eikona 
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

   imgOriginal = imgOriginal + imgLines;
  imshow("Original", imgOriginal); //show the original image

        if (waitKey(1) == 27) //wait for 'esc' key press for 30ms. If 'esc' key is pressed, break loop
       {
            cout << "esc key is pressed by user" << endl;
            break; 
       }
    }

   return 0;
}
