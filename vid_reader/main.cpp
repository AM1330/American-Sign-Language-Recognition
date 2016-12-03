#include "VidHeader.h"
#include <iostream>   // std::cout
#include <string>     // std::string, std::stoi
#include <sstream>
using namespace std;
int main(int argc, char * argv[])
{
	VidHeader * vid = new VidHeader(argv[1], NULL);
	


	int start_frame;
	int stop_frame;
	
	
	istringstream buffer(argv[2]);
	buffer >> start_frame; 
	
	istringstream buffer2(argv[3]);
	buffer2 >> stop_frame;

	printf("Star frame : %d ,Stop frame:  %d \n",start_frame,stop_frame);
	
	char outfile[3000];
	//V:\PortableCapture_project\compressed_video\08-18-2010-test\scene1-camera1.vid
	//V:\ASL_lexicon_project\asl-data3\ASL_2010_08_10_Liz_additional_lexicon_signs\scene1-camera1.vid
	int frame_number = start_frame;
	int counter=0;
	while( frame_number <= stop_frame)//vid -> num_frames )
	{
		vid -> readFrameFromVideoFile( frame_number );
		sprintf(outfile,"./frames/%03d.ppm", counter);
		vid -> writePPMimage(outfile, vid -> pixmap);
		
		frame_number+=1;
		counter=counter+1;
		//break;
	}

	delete vid;
	return 0;
}

