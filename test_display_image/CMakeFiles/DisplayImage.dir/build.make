# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/alex/diplwmatikh/test_display_image

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alex/diplwmatikh/test_display_image

# Include any dependencies generated for this target.
include CMakeFiles/DisplayImage.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/DisplayImage.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DisplayImage.dir/flags.make

CMakeFiles/DisplayImage.dir/test.cpp.o: CMakeFiles/DisplayImage.dir/flags.make
CMakeFiles/DisplayImage.dir/test.cpp.o: test.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/alex/diplwmatikh/test_display_image/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/DisplayImage.dir/test.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/DisplayImage.dir/test.cpp.o -c /home/alex/diplwmatikh/test_display_image/test.cpp

CMakeFiles/DisplayImage.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DisplayImage.dir/test.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/alex/diplwmatikh/test_display_image/test.cpp > CMakeFiles/DisplayImage.dir/test.cpp.i

CMakeFiles/DisplayImage.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DisplayImage.dir/test.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/alex/diplwmatikh/test_display_image/test.cpp -o CMakeFiles/DisplayImage.dir/test.cpp.s

CMakeFiles/DisplayImage.dir/test.cpp.o.requires:
.PHONY : CMakeFiles/DisplayImage.dir/test.cpp.o.requires

CMakeFiles/DisplayImage.dir/test.cpp.o.provides: CMakeFiles/DisplayImage.dir/test.cpp.o.requires
	$(MAKE) -f CMakeFiles/DisplayImage.dir/build.make CMakeFiles/DisplayImage.dir/test.cpp.o.provides.build
.PHONY : CMakeFiles/DisplayImage.dir/test.cpp.o.provides

CMakeFiles/DisplayImage.dir/test.cpp.o.provides.build: CMakeFiles/DisplayImage.dir/test.cpp.o

# Object files for target DisplayImage
DisplayImage_OBJECTS = \
"CMakeFiles/DisplayImage.dir/test.cpp.o"

# External object files for target DisplayImage
DisplayImage_EXTERNAL_OBJECTS =

DisplayImage: CMakeFiles/DisplayImage.dir/test.cpp.o
DisplayImage: CMakeFiles/DisplayImage.dir/build.make
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_videostab.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_video.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_ts.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_superres.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_stitching.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_photo.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_ocl.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_objdetect.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_ml.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_legacy.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_imgproc.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_highgui.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_gpu.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_flann.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_features2d.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_core.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_contrib.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_calib3d.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_photo.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_legacy.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_video.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_objdetect.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_ml.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_calib3d.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_features2d.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_highgui.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_imgproc.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_flann.so.2.4.8
DisplayImage: /usr/lib/i386-linux-gnu/libopencv_core.so.2.4.8
DisplayImage: CMakeFiles/DisplayImage.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable DisplayImage"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DisplayImage.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/DisplayImage.dir/build: DisplayImage
.PHONY : CMakeFiles/DisplayImage.dir/build

CMakeFiles/DisplayImage.dir/requires: CMakeFiles/DisplayImage.dir/test.cpp.o.requires
.PHONY : CMakeFiles/DisplayImage.dir/requires

CMakeFiles/DisplayImage.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/DisplayImage.dir/cmake_clean.cmake
.PHONY : CMakeFiles/DisplayImage.dir/clean

CMakeFiles/DisplayImage.dir/depend:
	cd /home/alex/diplwmatikh/test_display_image && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alex/diplwmatikh/test_display_image /home/alex/diplwmatikh/test_display_image /home/alex/diplwmatikh/test_display_image /home/alex/diplwmatikh/test_display_image /home/alex/diplwmatikh/test_display_image/CMakeFiles/DisplayImage.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/DisplayImage.dir/depend

