# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Tiki/ClionProjects/AdvancedProgramming/ex5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/client.dir/flags.make

CMakeFiles/client.dir/src/DriverClient.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/DriverClient.cpp.o: ../src/DriverClient.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Tiki/ClionProjects/AdvancedProgramming/ex5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/client.dir/src/DriverClient.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/src/DriverClient.cpp.o -c /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/DriverClient.cpp

CMakeFiles/client.dir/src/DriverClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/DriverClient.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/DriverClient.cpp > CMakeFiles/client.dir/src/DriverClient.cpp.i

CMakeFiles/client.dir/src/DriverClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/DriverClient.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/DriverClient.cpp -o CMakeFiles/client.dir/src/DriverClient.cpp.s

CMakeFiles/client.dir/src/DriverClient.cpp.o.requires:

.PHONY : CMakeFiles/client.dir/src/DriverClient.cpp.o.requires

CMakeFiles/client.dir/src/DriverClient.cpp.o.provides: CMakeFiles/client.dir/src/DriverClient.cpp.o.requires
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/DriverClient.cpp.o.provides.build
.PHONY : CMakeFiles/client.dir/src/DriverClient.cpp.o.provides

CMakeFiles/client.dir/src/DriverClient.cpp.o.provides.build: CMakeFiles/client.dir/src/DriverClient.cpp.o


CMakeFiles/client.dir/src/sockets/Tcp.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/sockets/Tcp.cpp.o: ../src/sockets/Tcp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Tiki/ClionProjects/AdvancedProgramming/ex5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/client.dir/src/sockets/Tcp.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/src/sockets/Tcp.cpp.o -c /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/sockets/Tcp.cpp

CMakeFiles/client.dir/src/sockets/Tcp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/sockets/Tcp.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/sockets/Tcp.cpp > CMakeFiles/client.dir/src/sockets/Tcp.cpp.i

CMakeFiles/client.dir/src/sockets/Tcp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/sockets/Tcp.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/sockets/Tcp.cpp -o CMakeFiles/client.dir/src/sockets/Tcp.cpp.s

CMakeFiles/client.dir/src/sockets/Tcp.cpp.o.requires:

.PHONY : CMakeFiles/client.dir/src/sockets/Tcp.cpp.o.requires

CMakeFiles/client.dir/src/sockets/Tcp.cpp.o.provides: CMakeFiles/client.dir/src/sockets/Tcp.cpp.o.requires
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/sockets/Tcp.cpp.o.provides.build
.PHONY : CMakeFiles/client.dir/src/sockets/Tcp.cpp.o.provides

CMakeFiles/client.dir/src/sockets/Tcp.cpp.o.provides.build: CMakeFiles/client.dir/src/sockets/Tcp.cpp.o


CMakeFiles/client.dir/src/sockets/Socket.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/sockets/Socket.cpp.o: ../src/sockets/Socket.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Tiki/ClionProjects/AdvancedProgramming/ex5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/client.dir/src/sockets/Socket.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/src/sockets/Socket.cpp.o -c /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/sockets/Socket.cpp

CMakeFiles/client.dir/src/sockets/Socket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/sockets/Socket.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/sockets/Socket.cpp > CMakeFiles/client.dir/src/sockets/Socket.cpp.i

CMakeFiles/client.dir/src/sockets/Socket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/sockets/Socket.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/sockets/Socket.cpp -o CMakeFiles/client.dir/src/sockets/Socket.cpp.s

CMakeFiles/client.dir/src/sockets/Socket.cpp.o.requires:

.PHONY : CMakeFiles/client.dir/src/sockets/Socket.cpp.o.requires

CMakeFiles/client.dir/src/sockets/Socket.cpp.o.provides: CMakeFiles/client.dir/src/sockets/Socket.cpp.o.requires
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/sockets/Socket.cpp.o.provides.build
.PHONY : CMakeFiles/client.dir/src/sockets/Socket.cpp.o.provides

CMakeFiles/client.dir/src/sockets/Socket.cpp.o.provides.build: CMakeFiles/client.dir/src/sockets/Socket.cpp.o


CMakeFiles/client.dir/src/Driver.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/Driver.cpp.o: ../src/Driver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Tiki/ClionProjects/AdvancedProgramming/ex5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/client.dir/src/Driver.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/src/Driver.cpp.o -c /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Driver.cpp

CMakeFiles/client.dir/src/Driver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/Driver.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Driver.cpp > CMakeFiles/client.dir/src/Driver.cpp.i

CMakeFiles/client.dir/src/Driver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/Driver.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Driver.cpp -o CMakeFiles/client.dir/src/Driver.cpp.s

CMakeFiles/client.dir/src/Driver.cpp.o.requires:

.PHONY : CMakeFiles/client.dir/src/Driver.cpp.o.requires

CMakeFiles/client.dir/src/Driver.cpp.o.provides: CMakeFiles/client.dir/src/Driver.cpp.o.requires
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Driver.cpp.o.provides.build
.PHONY : CMakeFiles/client.dir/src/Driver.cpp.o.provides

CMakeFiles/client.dir/src/Driver.cpp.o.provides.build: CMakeFiles/client.dir/src/Driver.cpp.o


CMakeFiles/client.dir/src/BFS.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/BFS.cpp.o: ../src/BFS.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Tiki/ClionProjects/AdvancedProgramming/ex5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/client.dir/src/BFS.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/src/BFS.cpp.o -c /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/BFS.cpp

CMakeFiles/client.dir/src/BFS.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/BFS.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/BFS.cpp > CMakeFiles/client.dir/src/BFS.cpp.i

CMakeFiles/client.dir/src/BFS.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/BFS.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/BFS.cpp -o CMakeFiles/client.dir/src/BFS.cpp.s

CMakeFiles/client.dir/src/BFS.cpp.o.requires:

.PHONY : CMakeFiles/client.dir/src/BFS.cpp.o.requires

CMakeFiles/client.dir/src/BFS.cpp.o.provides: CMakeFiles/client.dir/src/BFS.cpp.o.requires
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/BFS.cpp.o.provides.build
.PHONY : CMakeFiles/client.dir/src/BFS.cpp.o.provides

CMakeFiles/client.dir/src/BFS.cpp.o.provides.build: CMakeFiles/client.dir/src/BFS.cpp.o


CMakeFiles/client.dir/src/City.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/City.cpp.o: ../src/City.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Tiki/ClionProjects/AdvancedProgramming/ex5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/client.dir/src/City.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/src/City.cpp.o -c /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/City.cpp

CMakeFiles/client.dir/src/City.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/City.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/City.cpp > CMakeFiles/client.dir/src/City.cpp.i

CMakeFiles/client.dir/src/City.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/City.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/City.cpp -o CMakeFiles/client.dir/src/City.cpp.s

CMakeFiles/client.dir/src/City.cpp.o.requires:

.PHONY : CMakeFiles/client.dir/src/City.cpp.o.requires

CMakeFiles/client.dir/src/City.cpp.o.provides: CMakeFiles/client.dir/src/City.cpp.o.requires
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/City.cpp.o.provides.build
.PHONY : CMakeFiles/client.dir/src/City.cpp.o.provides

CMakeFiles/client.dir/src/City.cpp.o.provides.build: CMakeFiles/client.dir/src/City.cpp.o


CMakeFiles/client.dir/src/Clock.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/Clock.cpp.o: ../src/Clock.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Tiki/ClionProjects/AdvancedProgramming/ex5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/client.dir/src/Clock.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/src/Clock.cpp.o -c /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Clock.cpp

CMakeFiles/client.dir/src/Clock.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/Clock.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Clock.cpp > CMakeFiles/client.dir/src/Clock.cpp.i

CMakeFiles/client.dir/src/Clock.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/Clock.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Clock.cpp -o CMakeFiles/client.dir/src/Clock.cpp.s

CMakeFiles/client.dir/src/Clock.cpp.o.requires:

.PHONY : CMakeFiles/client.dir/src/Clock.cpp.o.requires

CMakeFiles/client.dir/src/Clock.cpp.o.provides: CMakeFiles/client.dir/src/Clock.cpp.o.requires
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Clock.cpp.o.provides.build
.PHONY : CMakeFiles/client.dir/src/Clock.cpp.o.provides

CMakeFiles/client.dir/src/Clock.cpp.o.provides.build: CMakeFiles/client.dir/src/Clock.cpp.o


CMakeFiles/client.dir/src/Coordinate.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/Coordinate.cpp.o: ../src/Coordinate.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Tiki/ClionProjects/AdvancedProgramming/ex5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/client.dir/src/Coordinate.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/src/Coordinate.cpp.o -c /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Coordinate.cpp

CMakeFiles/client.dir/src/Coordinate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/Coordinate.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Coordinate.cpp > CMakeFiles/client.dir/src/Coordinate.cpp.i

CMakeFiles/client.dir/src/Coordinate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/Coordinate.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Coordinate.cpp -o CMakeFiles/client.dir/src/Coordinate.cpp.s

CMakeFiles/client.dir/src/Coordinate.cpp.o.requires:

.PHONY : CMakeFiles/client.dir/src/Coordinate.cpp.o.requires

CMakeFiles/client.dir/src/Coordinate.cpp.o.provides: CMakeFiles/client.dir/src/Coordinate.cpp.o.requires
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Coordinate.cpp.o.provides.build
.PHONY : CMakeFiles/client.dir/src/Coordinate.cpp.o.provides

CMakeFiles/client.dir/src/Coordinate.cpp.o.provides.build: CMakeFiles/client.dir/src/Coordinate.cpp.o


CMakeFiles/client.dir/src/Graph.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/Graph.cpp.o: ../src/Graph.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Tiki/ClionProjects/AdvancedProgramming/ex5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/client.dir/src/Graph.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/src/Graph.cpp.o -c /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Graph.cpp

CMakeFiles/client.dir/src/Graph.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/Graph.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Graph.cpp > CMakeFiles/client.dir/src/Graph.cpp.i

CMakeFiles/client.dir/src/Graph.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/Graph.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Graph.cpp -o CMakeFiles/client.dir/src/Graph.cpp.s

CMakeFiles/client.dir/src/Graph.cpp.o.requires:

.PHONY : CMakeFiles/client.dir/src/Graph.cpp.o.requires

CMakeFiles/client.dir/src/Graph.cpp.o.provides: CMakeFiles/client.dir/src/Graph.cpp.o.requires
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Graph.cpp.o.provides.build
.PHONY : CMakeFiles/client.dir/src/Graph.cpp.o.provides

CMakeFiles/client.dir/src/Graph.cpp.o.provides.build: CMakeFiles/client.dir/src/Graph.cpp.o


CMakeFiles/client.dir/src/Grid.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/Grid.cpp.o: ../src/Grid.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Tiki/ClionProjects/AdvancedProgramming/ex5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/client.dir/src/Grid.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/src/Grid.cpp.o -c /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Grid.cpp

CMakeFiles/client.dir/src/Grid.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/Grid.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Grid.cpp > CMakeFiles/client.dir/src/Grid.cpp.i

CMakeFiles/client.dir/src/Grid.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/Grid.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Grid.cpp -o CMakeFiles/client.dir/src/Grid.cpp.s

CMakeFiles/client.dir/src/Grid.cpp.o.requires:

.PHONY : CMakeFiles/client.dir/src/Grid.cpp.o.requires

CMakeFiles/client.dir/src/Grid.cpp.o.provides: CMakeFiles/client.dir/src/Grid.cpp.o.requires
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Grid.cpp.o.provides.build
.PHONY : CMakeFiles/client.dir/src/Grid.cpp.o.provides

CMakeFiles/client.dir/src/Grid.cpp.o.provides.build: CMakeFiles/client.dir/src/Grid.cpp.o


CMakeFiles/client.dir/src/LuxuryCab.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/LuxuryCab.cpp.o: ../src/LuxuryCab.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Tiki/ClionProjects/AdvancedProgramming/ex5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/client.dir/src/LuxuryCab.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/src/LuxuryCab.cpp.o -c /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/LuxuryCab.cpp

CMakeFiles/client.dir/src/LuxuryCab.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/LuxuryCab.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/LuxuryCab.cpp > CMakeFiles/client.dir/src/LuxuryCab.cpp.i

CMakeFiles/client.dir/src/LuxuryCab.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/LuxuryCab.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/LuxuryCab.cpp -o CMakeFiles/client.dir/src/LuxuryCab.cpp.s

CMakeFiles/client.dir/src/LuxuryCab.cpp.o.requires:

.PHONY : CMakeFiles/client.dir/src/LuxuryCab.cpp.o.requires

CMakeFiles/client.dir/src/LuxuryCab.cpp.o.provides: CMakeFiles/client.dir/src/LuxuryCab.cpp.o.requires
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/LuxuryCab.cpp.o.provides.build
.PHONY : CMakeFiles/client.dir/src/LuxuryCab.cpp.o.provides

CMakeFiles/client.dir/src/LuxuryCab.cpp.o.provides.build: CMakeFiles/client.dir/src/LuxuryCab.cpp.o


CMakeFiles/client.dir/src/Node.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/Node.cpp.o: ../src/Node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Tiki/ClionProjects/AdvancedProgramming/ex5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/client.dir/src/Node.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/src/Node.cpp.o -c /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Node.cpp

CMakeFiles/client.dir/src/Node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/Node.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Node.cpp > CMakeFiles/client.dir/src/Node.cpp.i

CMakeFiles/client.dir/src/Node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/Node.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Node.cpp -o CMakeFiles/client.dir/src/Node.cpp.s

CMakeFiles/client.dir/src/Node.cpp.o.requires:

.PHONY : CMakeFiles/client.dir/src/Node.cpp.o.requires

CMakeFiles/client.dir/src/Node.cpp.o.provides: CMakeFiles/client.dir/src/Node.cpp.o.requires
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Node.cpp.o.provides.build
.PHONY : CMakeFiles/client.dir/src/Node.cpp.o.provides

CMakeFiles/client.dir/src/Node.cpp.o.provides.build: CMakeFiles/client.dir/src/Node.cpp.o


CMakeFiles/client.dir/src/Passenger.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/Passenger.cpp.o: ../src/Passenger.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Tiki/ClionProjects/AdvancedProgramming/ex5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/client.dir/src/Passenger.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/src/Passenger.cpp.o -c /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Passenger.cpp

CMakeFiles/client.dir/src/Passenger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/Passenger.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Passenger.cpp > CMakeFiles/client.dir/src/Passenger.cpp.i

CMakeFiles/client.dir/src/Passenger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/Passenger.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Passenger.cpp -o CMakeFiles/client.dir/src/Passenger.cpp.s

CMakeFiles/client.dir/src/Passenger.cpp.o.requires:

.PHONY : CMakeFiles/client.dir/src/Passenger.cpp.o.requires

CMakeFiles/client.dir/src/Passenger.cpp.o.provides: CMakeFiles/client.dir/src/Passenger.cpp.o.requires
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Passenger.cpp.o.provides.build
.PHONY : CMakeFiles/client.dir/src/Passenger.cpp.o.provides

CMakeFiles/client.dir/src/Passenger.cpp.o.provides.build: CMakeFiles/client.dir/src/Passenger.cpp.o


CMakeFiles/client.dir/src/Point.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/Point.cpp.o: ../src/Point.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Tiki/ClionProjects/AdvancedProgramming/ex5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/client.dir/src/Point.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/src/Point.cpp.o -c /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Point.cpp

CMakeFiles/client.dir/src/Point.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/Point.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Point.cpp > CMakeFiles/client.dir/src/Point.cpp.i

CMakeFiles/client.dir/src/Point.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/Point.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Point.cpp -o CMakeFiles/client.dir/src/Point.cpp.s

CMakeFiles/client.dir/src/Point.cpp.o.requires:

.PHONY : CMakeFiles/client.dir/src/Point.cpp.o.requires

CMakeFiles/client.dir/src/Point.cpp.o.provides: CMakeFiles/client.dir/src/Point.cpp.o.requires
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Point.cpp.o.provides.build
.PHONY : CMakeFiles/client.dir/src/Point.cpp.o.provides

CMakeFiles/client.dir/src/Point.cpp.o.provides.build: CMakeFiles/client.dir/src/Point.cpp.o


CMakeFiles/client.dir/src/StandardCab.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/StandardCab.cpp.o: ../src/StandardCab.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Tiki/ClionProjects/AdvancedProgramming/ex5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/client.dir/src/StandardCab.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/src/StandardCab.cpp.o -c /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/StandardCab.cpp

CMakeFiles/client.dir/src/StandardCab.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/StandardCab.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/StandardCab.cpp > CMakeFiles/client.dir/src/StandardCab.cpp.i

CMakeFiles/client.dir/src/StandardCab.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/StandardCab.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/StandardCab.cpp -o CMakeFiles/client.dir/src/StandardCab.cpp.s

CMakeFiles/client.dir/src/StandardCab.cpp.o.requires:

.PHONY : CMakeFiles/client.dir/src/StandardCab.cpp.o.requires

CMakeFiles/client.dir/src/StandardCab.cpp.o.provides: CMakeFiles/client.dir/src/StandardCab.cpp.o.requires
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/StandardCab.cpp.o.provides.build
.PHONY : CMakeFiles/client.dir/src/StandardCab.cpp.o.provides

CMakeFiles/client.dir/src/StandardCab.cpp.o.provides.build: CMakeFiles/client.dir/src/StandardCab.cpp.o


CMakeFiles/client.dir/src/Taxi.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/Taxi.cpp.o: ../src/Taxi.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Tiki/ClionProjects/AdvancedProgramming/ex5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/client.dir/src/Taxi.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/src/Taxi.cpp.o -c /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Taxi.cpp

CMakeFiles/client.dir/src/Taxi.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/Taxi.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Taxi.cpp > CMakeFiles/client.dir/src/Taxi.cpp.i

CMakeFiles/client.dir/src/Taxi.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/Taxi.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Taxi.cpp -o CMakeFiles/client.dir/src/Taxi.cpp.s

CMakeFiles/client.dir/src/Taxi.cpp.o.requires:

.PHONY : CMakeFiles/client.dir/src/Taxi.cpp.o.requires

CMakeFiles/client.dir/src/Taxi.cpp.o.provides: CMakeFiles/client.dir/src/Taxi.cpp.o.requires
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Taxi.cpp.o.provides.build
.PHONY : CMakeFiles/client.dir/src/Taxi.cpp.o.provides

CMakeFiles/client.dir/src/Taxi.cpp.o.provides.build: CMakeFiles/client.dir/src/Taxi.cpp.o


CMakeFiles/client.dir/src/TaxiCenter.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/TaxiCenter.cpp.o: ../src/TaxiCenter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Tiki/ClionProjects/AdvancedProgramming/ex5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/client.dir/src/TaxiCenter.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/src/TaxiCenter.cpp.o -c /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/TaxiCenter.cpp

CMakeFiles/client.dir/src/TaxiCenter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/TaxiCenter.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/TaxiCenter.cpp > CMakeFiles/client.dir/src/TaxiCenter.cpp.i

CMakeFiles/client.dir/src/TaxiCenter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/TaxiCenter.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/TaxiCenter.cpp -o CMakeFiles/client.dir/src/TaxiCenter.cpp.s

CMakeFiles/client.dir/src/TaxiCenter.cpp.o.requires:

.PHONY : CMakeFiles/client.dir/src/TaxiCenter.cpp.o.requires

CMakeFiles/client.dir/src/TaxiCenter.cpp.o.provides: CMakeFiles/client.dir/src/TaxiCenter.cpp.o.requires
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/TaxiCenter.cpp.o.provides.build
.PHONY : CMakeFiles/client.dir/src/TaxiCenter.cpp.o.provides

CMakeFiles/client.dir/src/TaxiCenter.cpp.o.provides.build: CMakeFiles/client.dir/src/TaxiCenter.cpp.o


CMakeFiles/client.dir/src/Trip.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/Trip.cpp.o: ../src/Trip.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Tiki/ClionProjects/AdvancedProgramming/ex5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object CMakeFiles/client.dir/src/Trip.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/src/Trip.cpp.o -c /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Trip.cpp

CMakeFiles/client.dir/src/Trip.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/Trip.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Trip.cpp > CMakeFiles/client.dir/src/Trip.cpp.i

CMakeFiles/client.dir/src/Trip.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/Trip.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/src/Trip.cpp -o CMakeFiles/client.dir/src/Trip.cpp.s

CMakeFiles/client.dir/src/Trip.cpp.o.requires:

.PHONY : CMakeFiles/client.dir/src/Trip.cpp.o.requires

CMakeFiles/client.dir/src/Trip.cpp.o.provides: CMakeFiles/client.dir/src/Trip.cpp.o.requires
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/src/Trip.cpp.o.provides.build
.PHONY : CMakeFiles/client.dir/src/Trip.cpp.o.provides

CMakeFiles/client.dir/src/Trip.cpp.o.provides.build: CMakeFiles/client.dir/src/Trip.cpp.o


# Object files for target client
client_OBJECTS = \
"CMakeFiles/client.dir/src/DriverClient.cpp.o" \
"CMakeFiles/client.dir/src/sockets/Tcp.cpp.o" \
"CMakeFiles/client.dir/src/sockets/Socket.cpp.o" \
"CMakeFiles/client.dir/src/Driver.cpp.o" \
"CMakeFiles/client.dir/src/BFS.cpp.o" \
"CMakeFiles/client.dir/src/City.cpp.o" \
"CMakeFiles/client.dir/src/Clock.cpp.o" \
"CMakeFiles/client.dir/src/Coordinate.cpp.o" \
"CMakeFiles/client.dir/src/Graph.cpp.o" \
"CMakeFiles/client.dir/src/Grid.cpp.o" \
"CMakeFiles/client.dir/src/LuxuryCab.cpp.o" \
"CMakeFiles/client.dir/src/Node.cpp.o" \
"CMakeFiles/client.dir/src/Passenger.cpp.o" \
"CMakeFiles/client.dir/src/Point.cpp.o" \
"CMakeFiles/client.dir/src/StandardCab.cpp.o" \
"CMakeFiles/client.dir/src/Taxi.cpp.o" \
"CMakeFiles/client.dir/src/TaxiCenter.cpp.o" \
"CMakeFiles/client.dir/src/Trip.cpp.o"

# External object files for target client
client_EXTERNAL_OBJECTS =

client: CMakeFiles/client.dir/src/DriverClient.cpp.o
client: CMakeFiles/client.dir/src/sockets/Tcp.cpp.o
client: CMakeFiles/client.dir/src/sockets/Socket.cpp.o
client: CMakeFiles/client.dir/src/Driver.cpp.o
client: CMakeFiles/client.dir/src/BFS.cpp.o
client: CMakeFiles/client.dir/src/City.cpp.o
client: CMakeFiles/client.dir/src/Clock.cpp.o
client: CMakeFiles/client.dir/src/Coordinate.cpp.o
client: CMakeFiles/client.dir/src/Graph.cpp.o
client: CMakeFiles/client.dir/src/Grid.cpp.o
client: CMakeFiles/client.dir/src/LuxuryCab.cpp.o
client: CMakeFiles/client.dir/src/Node.cpp.o
client: CMakeFiles/client.dir/src/Passenger.cpp.o
client: CMakeFiles/client.dir/src/Point.cpp.o
client: CMakeFiles/client.dir/src/StandardCab.cpp.o
client: CMakeFiles/client.dir/src/Taxi.cpp.o
client: CMakeFiles/client.dir/src/TaxiCenter.cpp.o
client: CMakeFiles/client.dir/src/Trip.cpp.o
client: CMakeFiles/client.dir/build.make
client: libsockets.a
client: /opt/local/lib/libboost_serialization-mt.dylib
client: /opt/local/lib/libboost_system-mt.dylib
client: libsockets.a
client: CMakeFiles/client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Tiki/ClionProjects/AdvancedProgramming/ex5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Linking CXX executable client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/client.dir/build: client

.PHONY : CMakeFiles/client.dir/build

CMakeFiles/client.dir/requires: CMakeFiles/client.dir/src/DriverClient.cpp.o.requires
CMakeFiles/client.dir/requires: CMakeFiles/client.dir/src/sockets/Tcp.cpp.o.requires
CMakeFiles/client.dir/requires: CMakeFiles/client.dir/src/sockets/Socket.cpp.o.requires
CMakeFiles/client.dir/requires: CMakeFiles/client.dir/src/Driver.cpp.o.requires
CMakeFiles/client.dir/requires: CMakeFiles/client.dir/src/BFS.cpp.o.requires
CMakeFiles/client.dir/requires: CMakeFiles/client.dir/src/City.cpp.o.requires
CMakeFiles/client.dir/requires: CMakeFiles/client.dir/src/Clock.cpp.o.requires
CMakeFiles/client.dir/requires: CMakeFiles/client.dir/src/Coordinate.cpp.o.requires
CMakeFiles/client.dir/requires: CMakeFiles/client.dir/src/Graph.cpp.o.requires
CMakeFiles/client.dir/requires: CMakeFiles/client.dir/src/Grid.cpp.o.requires
CMakeFiles/client.dir/requires: CMakeFiles/client.dir/src/LuxuryCab.cpp.o.requires
CMakeFiles/client.dir/requires: CMakeFiles/client.dir/src/Node.cpp.o.requires
CMakeFiles/client.dir/requires: CMakeFiles/client.dir/src/Passenger.cpp.o.requires
CMakeFiles/client.dir/requires: CMakeFiles/client.dir/src/Point.cpp.o.requires
CMakeFiles/client.dir/requires: CMakeFiles/client.dir/src/StandardCab.cpp.o.requires
CMakeFiles/client.dir/requires: CMakeFiles/client.dir/src/Taxi.cpp.o.requires
CMakeFiles/client.dir/requires: CMakeFiles/client.dir/src/TaxiCenter.cpp.o.requires
CMakeFiles/client.dir/requires: CMakeFiles/client.dir/src/Trip.cpp.o.requires

.PHONY : CMakeFiles/client.dir/requires

CMakeFiles/client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/client.dir/clean

CMakeFiles/client.dir/depend:
	cd /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Tiki/ClionProjects/AdvancedProgramming/ex5 /Users/Tiki/ClionProjects/AdvancedProgramming/ex5 /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/cmake-build-debug /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/cmake-build-debug /Users/Tiki/ClionProjects/AdvancedProgramming/ex5/cmake-build-debug/CMakeFiles/client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/client.dir/depend
