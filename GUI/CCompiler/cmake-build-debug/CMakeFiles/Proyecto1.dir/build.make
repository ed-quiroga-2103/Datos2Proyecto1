# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /home/eduardo/clion-2017.3.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/eduardo/clion-2017.3.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/eduardo/CLionProjects/Proyecto1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/eduardo/CLionProjects/Proyecto1/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Proyecto1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Proyecto1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Proyecto1.dir/flags.make

CMakeFiles/Proyecto1.dir/main.cpp.o: CMakeFiles/Proyecto1.dir/flags.make
CMakeFiles/Proyecto1.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eduardo/CLionProjects/Proyecto1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Proyecto1.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Proyecto1.dir/main.cpp.o -c /home/eduardo/CLionProjects/Proyecto1/main.cpp

CMakeFiles/Proyecto1.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Proyecto1.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eduardo/CLionProjects/Proyecto1/main.cpp > CMakeFiles/Proyecto1.dir/main.cpp.i

CMakeFiles/Proyecto1.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Proyecto1.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eduardo/CLionProjects/Proyecto1/main.cpp -o CMakeFiles/Proyecto1.dir/main.cpp.s

CMakeFiles/Proyecto1.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/Proyecto1.dir/main.cpp.o.requires

CMakeFiles/Proyecto1.dir/main.cpp.o.provides: CMakeFiles/Proyecto1.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Proyecto1.dir/build.make CMakeFiles/Proyecto1.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/Proyecto1.dir/main.cpp.o.provides

CMakeFiles/Proyecto1.dir/main.cpp.o.provides.build: CMakeFiles/Proyecto1.dir/main.cpp.o


CMakeFiles/Proyecto1.dir/Logger.cpp.o: CMakeFiles/Proyecto1.dir/flags.make
CMakeFiles/Proyecto1.dir/Logger.cpp.o: ../Logger.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eduardo/CLionProjects/Proyecto1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Proyecto1.dir/Logger.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Proyecto1.dir/Logger.cpp.o -c /home/eduardo/CLionProjects/Proyecto1/Logger.cpp

CMakeFiles/Proyecto1.dir/Logger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Proyecto1.dir/Logger.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eduardo/CLionProjects/Proyecto1/Logger.cpp > CMakeFiles/Proyecto1.dir/Logger.cpp.i

CMakeFiles/Proyecto1.dir/Logger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Proyecto1.dir/Logger.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eduardo/CLionProjects/Proyecto1/Logger.cpp -o CMakeFiles/Proyecto1.dir/Logger.cpp.s

CMakeFiles/Proyecto1.dir/Logger.cpp.o.requires:

.PHONY : CMakeFiles/Proyecto1.dir/Logger.cpp.o.requires

CMakeFiles/Proyecto1.dir/Logger.cpp.o.provides: CMakeFiles/Proyecto1.dir/Logger.cpp.o.requires
	$(MAKE) -f CMakeFiles/Proyecto1.dir/build.make CMakeFiles/Proyecto1.dir/Logger.cpp.o.provides.build
.PHONY : CMakeFiles/Proyecto1.dir/Logger.cpp.o.provides

CMakeFiles/Proyecto1.dir/Logger.cpp.o.provides.build: CMakeFiles/Proyecto1.dir/Logger.cpp.o


CMakeFiles/Proyecto1.dir/mserver_client.cpp.o: CMakeFiles/Proyecto1.dir/flags.make
CMakeFiles/Proyecto1.dir/mserver_client.cpp.o: ../mserver_client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eduardo/CLionProjects/Proyecto1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Proyecto1.dir/mserver_client.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Proyecto1.dir/mserver_client.cpp.o -c /home/eduardo/CLionProjects/Proyecto1/mserver_client.cpp

CMakeFiles/Proyecto1.dir/mserver_client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Proyecto1.dir/mserver_client.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eduardo/CLionProjects/Proyecto1/mserver_client.cpp > CMakeFiles/Proyecto1.dir/mserver_client.cpp.i

CMakeFiles/Proyecto1.dir/mserver_client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Proyecto1.dir/mserver_client.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eduardo/CLionProjects/Proyecto1/mserver_client.cpp -o CMakeFiles/Proyecto1.dir/mserver_client.cpp.s

CMakeFiles/Proyecto1.dir/mserver_client.cpp.o.requires:

.PHONY : CMakeFiles/Proyecto1.dir/mserver_client.cpp.o.requires

CMakeFiles/Proyecto1.dir/mserver_client.cpp.o.provides: CMakeFiles/Proyecto1.dir/mserver_client.cpp.o.requires
	$(MAKE) -f CMakeFiles/Proyecto1.dir/build.make CMakeFiles/Proyecto1.dir/mserver_client.cpp.o.provides.build
.PHONY : CMakeFiles/Proyecto1.dir/mserver_client.cpp.o.provides

CMakeFiles/Proyecto1.dir/mserver_client.cpp.o.provides.build: CMakeFiles/Proyecto1.dir/mserver_client.cpp.o


CMakeFiles/Proyecto1.dir/Parser.cpp.o: CMakeFiles/Proyecto1.dir/flags.make
CMakeFiles/Proyecto1.dir/Parser.cpp.o: ../Parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eduardo/CLionProjects/Proyecto1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Proyecto1.dir/Parser.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Proyecto1.dir/Parser.cpp.o -c /home/eduardo/CLionProjects/Proyecto1/Parser.cpp

CMakeFiles/Proyecto1.dir/Parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Proyecto1.dir/Parser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eduardo/CLionProjects/Proyecto1/Parser.cpp > CMakeFiles/Proyecto1.dir/Parser.cpp.i

CMakeFiles/Proyecto1.dir/Parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Proyecto1.dir/Parser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eduardo/CLionProjects/Proyecto1/Parser.cpp -o CMakeFiles/Proyecto1.dir/Parser.cpp.s

CMakeFiles/Proyecto1.dir/Parser.cpp.o.requires:

.PHONY : CMakeFiles/Proyecto1.dir/Parser.cpp.o.requires

CMakeFiles/Proyecto1.dir/Parser.cpp.o.provides: CMakeFiles/Proyecto1.dir/Parser.cpp.o.requires
	$(MAKE) -f CMakeFiles/Proyecto1.dir/build.make CMakeFiles/Proyecto1.dir/Parser.cpp.o.provides.build
.PHONY : CMakeFiles/Proyecto1.dir/Parser.cpp.o.provides

CMakeFiles/Proyecto1.dir/Parser.cpp.o.provides.build: CMakeFiles/Proyecto1.dir/Parser.cpp.o


CMakeFiles/Proyecto1.dir/Compiler.cpp.o: CMakeFiles/Proyecto1.dir/flags.make
CMakeFiles/Proyecto1.dir/Compiler.cpp.o: ../Compiler.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eduardo/CLionProjects/Proyecto1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Proyecto1.dir/Compiler.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Proyecto1.dir/Compiler.cpp.o -c /home/eduardo/CLionProjects/Proyecto1/Compiler.cpp

CMakeFiles/Proyecto1.dir/Compiler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Proyecto1.dir/Compiler.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eduardo/CLionProjects/Proyecto1/Compiler.cpp > CMakeFiles/Proyecto1.dir/Compiler.cpp.i

CMakeFiles/Proyecto1.dir/Compiler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Proyecto1.dir/Compiler.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eduardo/CLionProjects/Proyecto1/Compiler.cpp -o CMakeFiles/Proyecto1.dir/Compiler.cpp.s

CMakeFiles/Proyecto1.dir/Compiler.cpp.o.requires:

.PHONY : CMakeFiles/Proyecto1.dir/Compiler.cpp.o.requires

CMakeFiles/Proyecto1.dir/Compiler.cpp.o.provides: CMakeFiles/Proyecto1.dir/Compiler.cpp.o.requires
	$(MAKE) -f CMakeFiles/Proyecto1.dir/build.make CMakeFiles/Proyecto1.dir/Compiler.cpp.o.provides.build
.PHONY : CMakeFiles/Proyecto1.dir/Compiler.cpp.o.provides

CMakeFiles/Proyecto1.dir/Compiler.cpp.o.provides.build: CMakeFiles/Proyecto1.dir/Compiler.cpp.o


# Object files for target Proyecto1
Proyecto1_OBJECTS = \
"CMakeFiles/Proyecto1.dir/main.cpp.o" \
"CMakeFiles/Proyecto1.dir/Logger.cpp.o" \
"CMakeFiles/Proyecto1.dir/mserver_client.cpp.o" \
"CMakeFiles/Proyecto1.dir/Parser.cpp.o" \
"CMakeFiles/Proyecto1.dir/Compiler.cpp.o"

# External object files for target Proyecto1
Proyecto1_EXTERNAL_OBJECTS =

Proyecto1: CMakeFiles/Proyecto1.dir/main.cpp.o
Proyecto1: CMakeFiles/Proyecto1.dir/Logger.cpp.o
Proyecto1: CMakeFiles/Proyecto1.dir/mserver_client.cpp.o
Proyecto1: CMakeFiles/Proyecto1.dir/Parser.cpp.o
Proyecto1: CMakeFiles/Proyecto1.dir/Compiler.cpp.o
Proyecto1: CMakeFiles/Proyecto1.dir/build.make
Proyecto1: CMakeFiles/Proyecto1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/eduardo/CLionProjects/Proyecto1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable Proyecto1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Proyecto1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Proyecto1.dir/build: Proyecto1

.PHONY : CMakeFiles/Proyecto1.dir/build

CMakeFiles/Proyecto1.dir/requires: CMakeFiles/Proyecto1.dir/main.cpp.o.requires
CMakeFiles/Proyecto1.dir/requires: CMakeFiles/Proyecto1.dir/Logger.cpp.o.requires
CMakeFiles/Proyecto1.dir/requires: CMakeFiles/Proyecto1.dir/mserver_client.cpp.o.requires
CMakeFiles/Proyecto1.dir/requires: CMakeFiles/Proyecto1.dir/Parser.cpp.o.requires
CMakeFiles/Proyecto1.dir/requires: CMakeFiles/Proyecto1.dir/Compiler.cpp.o.requires

.PHONY : CMakeFiles/Proyecto1.dir/requires

CMakeFiles/Proyecto1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Proyecto1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Proyecto1.dir/clean

CMakeFiles/Proyecto1.dir/depend:
	cd /home/eduardo/CLionProjects/Proyecto1/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eduardo/CLionProjects/Proyecto1 /home/eduardo/CLionProjects/Proyecto1 /home/eduardo/CLionProjects/Proyecto1/cmake-build-debug /home/eduardo/CLionProjects/Proyecto1/cmake-build-debug /home/eduardo/CLionProjects/Proyecto1/cmake-build-debug/CMakeFiles/Proyecto1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Proyecto1.dir/depend

