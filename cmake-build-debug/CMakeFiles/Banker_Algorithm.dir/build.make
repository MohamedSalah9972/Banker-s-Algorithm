# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.2.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.2.2\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\Mo\Desktop\Edu\Year3_Second_Term\Advanced OS\Banker Algorithm"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Mo\Desktop\Edu\Year3_Second_Term\Advanced OS\Banker Algorithm\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Banker_Algorithm.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Banker_Algorithm.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Banker_Algorithm.dir/flags.make

CMakeFiles/Banker_Algorithm.dir/main.cpp.obj: CMakeFiles/Banker_Algorithm.dir/flags.make
CMakeFiles/Banker_Algorithm.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Mo\Desktop\Edu\Year3_Second_Term\Advanced OS\Banker Algorithm\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Banker_Algorithm.dir/main.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Banker_Algorithm.dir\main.cpp.obj -c "C:\Users\Mo\Desktop\Edu\Year3_Second_Term\Advanced OS\Banker Algorithm\main.cpp"

CMakeFiles/Banker_Algorithm.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Banker_Algorithm.dir/main.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Mo\Desktop\Edu\Year3_Second_Term\Advanced OS\Banker Algorithm\main.cpp" > CMakeFiles\Banker_Algorithm.dir\main.cpp.i

CMakeFiles/Banker_Algorithm.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Banker_Algorithm.dir/main.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Mo\Desktop\Edu\Year3_Second_Term\Advanced OS\Banker Algorithm\main.cpp" -o CMakeFiles\Banker_Algorithm.dir\main.cpp.s

# Object files for target Banker_Algorithm
Banker_Algorithm_OBJECTS = \
"CMakeFiles/Banker_Algorithm.dir/main.cpp.obj"

# External object files for target Banker_Algorithm
Banker_Algorithm_EXTERNAL_OBJECTS =

Banker_Algorithm.exe: CMakeFiles/Banker_Algorithm.dir/main.cpp.obj
Banker_Algorithm.exe: CMakeFiles/Banker_Algorithm.dir/build.make
Banker_Algorithm.exe: CMakeFiles/Banker_Algorithm.dir/linklibs.rsp
Banker_Algorithm.exe: CMakeFiles/Banker_Algorithm.dir/objects1.rsp
Banker_Algorithm.exe: CMakeFiles/Banker_Algorithm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\Mo\Desktop\Edu\Year3_Second_Term\Advanced OS\Banker Algorithm\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Banker_Algorithm.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Banker_Algorithm.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Banker_Algorithm.dir/build: Banker_Algorithm.exe

.PHONY : CMakeFiles/Banker_Algorithm.dir/build

CMakeFiles/Banker_Algorithm.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Banker_Algorithm.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Banker_Algorithm.dir/clean

CMakeFiles/Banker_Algorithm.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Mo\Desktop\Edu\Year3_Second_Term\Advanced OS\Banker Algorithm" "C:\Users\Mo\Desktop\Edu\Year3_Second_Term\Advanced OS\Banker Algorithm" "C:\Users\Mo\Desktop\Edu\Year3_Second_Term\Advanced OS\Banker Algorithm\cmake-build-debug" "C:\Users\Mo\Desktop\Edu\Year3_Second_Term\Advanced OS\Banker Algorithm\cmake-build-debug" "C:\Users\Mo\Desktop\Edu\Year3_Second_Term\Advanced OS\Banker Algorithm\cmake-build-debug\CMakeFiles\Banker_Algorithm.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Banker_Algorithm.dir/depend

