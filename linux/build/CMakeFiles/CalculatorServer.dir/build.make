# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_SOURCE_DIR = /mnt/linux

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/linux/build

# Include any dependencies generated for this target.
include CMakeFiles/CalculatorServer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CalculatorServer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CalculatorServer.dir/flags.make

CMakeFiles/CalculatorServer.dir/CalculatorServer.cpp.o: CMakeFiles/CalculatorServer.dir/flags.make
CMakeFiles/CalculatorServer.dir/CalculatorServer.cpp.o: ../CalculatorServer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/linux/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CalculatorServer.dir/CalculatorServer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CalculatorServer.dir/CalculatorServer.cpp.o -c /mnt/linux/CalculatorServer.cpp

CMakeFiles/CalculatorServer.dir/CalculatorServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CalculatorServer.dir/CalculatorServer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/linux/CalculatorServer.cpp > CMakeFiles/CalculatorServer.dir/CalculatorServer.cpp.i

CMakeFiles/CalculatorServer.dir/CalculatorServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CalculatorServer.dir/CalculatorServer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/linux/CalculatorServer.cpp -o CMakeFiles/CalculatorServer.dir/CalculatorServer.cpp.s

CMakeFiles/CalculatorServer.dir/src/Calculator.cpp.o: CMakeFiles/CalculatorServer.dir/flags.make
CMakeFiles/CalculatorServer.dir/src/Calculator.cpp.o: ../src/Calculator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/linux/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CalculatorServer.dir/src/Calculator.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CalculatorServer.dir/src/Calculator.cpp.o -c /mnt/linux/src/Calculator.cpp

CMakeFiles/CalculatorServer.dir/src/Calculator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CalculatorServer.dir/src/Calculator.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/linux/src/Calculator.cpp > CMakeFiles/CalculatorServer.dir/src/Calculator.cpp.i

CMakeFiles/CalculatorServer.dir/src/Calculator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CalculatorServer.dir/src/Calculator.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/linux/src/Calculator.cpp -o CMakeFiles/CalculatorServer.dir/src/Calculator.cpp.s

CMakeFiles/CalculatorServer.dir/src/CalculatorController.cpp.o: CMakeFiles/CalculatorServer.dir/flags.make
CMakeFiles/CalculatorServer.dir/src/CalculatorController.cpp.o: ../src/CalculatorController.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/linux/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/CalculatorServer.dir/src/CalculatorController.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CalculatorServer.dir/src/CalculatorController.cpp.o -c /mnt/linux/src/CalculatorController.cpp

CMakeFiles/CalculatorServer.dir/src/CalculatorController.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CalculatorServer.dir/src/CalculatorController.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/linux/src/CalculatorController.cpp > CMakeFiles/CalculatorServer.dir/src/CalculatorController.cpp.i

CMakeFiles/CalculatorServer.dir/src/CalculatorController.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CalculatorServer.dir/src/CalculatorController.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/linux/src/CalculatorController.cpp -o CMakeFiles/CalculatorServer.dir/src/CalculatorController.cpp.s

CMakeFiles/CalculatorServer.dir/src/CalculatorView.cpp.o: CMakeFiles/CalculatorServer.dir/flags.make
CMakeFiles/CalculatorServer.dir/src/CalculatorView.cpp.o: ../src/CalculatorView.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/linux/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/CalculatorServer.dir/src/CalculatorView.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CalculatorServer.dir/src/CalculatorView.cpp.o -c /mnt/linux/src/CalculatorView.cpp

CMakeFiles/CalculatorServer.dir/src/CalculatorView.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CalculatorServer.dir/src/CalculatorView.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/linux/src/CalculatorView.cpp > CMakeFiles/CalculatorServer.dir/src/CalculatorView.cpp.i

CMakeFiles/CalculatorServer.dir/src/CalculatorView.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CalculatorServer.dir/src/CalculatorView.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/linux/src/CalculatorView.cpp -o CMakeFiles/CalculatorServer.dir/src/CalculatorView.cpp.s

# Object files for target CalculatorServer
CalculatorServer_OBJECTS = \
"CMakeFiles/CalculatorServer.dir/CalculatorServer.cpp.o" \
"CMakeFiles/CalculatorServer.dir/src/Calculator.cpp.o" \
"CMakeFiles/CalculatorServer.dir/src/CalculatorController.cpp.o" \
"CMakeFiles/CalculatorServer.dir/src/CalculatorView.cpp.o"

# External object files for target CalculatorServer
CalculatorServer_EXTERNAL_OBJECTS =

CalculatorServer: CMakeFiles/CalculatorServer.dir/CalculatorServer.cpp.o
CalculatorServer: CMakeFiles/CalculatorServer.dir/src/Calculator.cpp.o
CalculatorServer: CMakeFiles/CalculatorServer.dir/src/CalculatorController.cpp.o
CalculatorServer: CMakeFiles/CalculatorServer.dir/src/CalculatorView.cpp.o
CalculatorServer: CMakeFiles/CalculatorServer.dir/build.make
CalculatorServer: CMakeFiles/CalculatorServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/linux/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable CalculatorServer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CalculatorServer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CalculatorServer.dir/build: CalculatorServer

.PHONY : CMakeFiles/CalculatorServer.dir/build

CMakeFiles/CalculatorServer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CalculatorServer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CalculatorServer.dir/clean

CMakeFiles/CalculatorServer.dir/depend:
	cd /mnt/linux/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/linux /mnt/linux /mnt/linux/build /mnt/linux/build /mnt/linux/build/CMakeFiles/CalculatorServer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CalculatorServer.dir/depend

