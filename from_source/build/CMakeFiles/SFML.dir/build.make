# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.1

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/hendriki/stuff/dtanks/from_source/SFML-2.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/hendriki/stuff/dtanks/from_source/build

# Include any dependencies generated for this target.
include CMakeFiles/SFML.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SFML.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SFML.dir/flags.make

dummy.cpp:
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/hendriki/stuff/dtanks/from_source/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating dummy.cpp"
	touch /Users/hendriki/stuff/dtanks/from_source/build/dummy.cpp

SFML.framework/Versions/2.0.0/Headers/Audio.hpp: /Users/hendriki/stuff/dtanks/from_source/SFML-2.0/include/SFML/Audio.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Copying OS X content SFML.framework/Versions/2.0.0/Headers/Audio.hpp"
	$(CMAKE_COMMAND) -E copy /Users/hendriki/stuff/dtanks/from_source/SFML-2.0/include/SFML/Audio.hpp SFML.framework/Versions/2.0.0/Headers/Audio.hpp

SFML.framework/Versions/2.0.0/Headers/Config.hpp: /Users/hendriki/stuff/dtanks/from_source/SFML-2.0/include/SFML/Config.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Copying OS X content SFML.framework/Versions/2.0.0/Headers/Config.hpp"
	$(CMAKE_COMMAND) -E copy /Users/hendriki/stuff/dtanks/from_source/SFML-2.0/include/SFML/Config.hpp SFML.framework/Versions/2.0.0/Headers/Config.hpp

SFML.framework/Versions/2.0.0/Headers/Graphics.hpp: /Users/hendriki/stuff/dtanks/from_source/SFML-2.0/include/SFML/Graphics.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Copying OS X content SFML.framework/Versions/2.0.0/Headers/Graphics.hpp"
	$(CMAKE_COMMAND) -E copy /Users/hendriki/stuff/dtanks/from_source/SFML-2.0/include/SFML/Graphics.hpp SFML.framework/Versions/2.0.0/Headers/Graphics.hpp

SFML.framework/Versions/2.0.0/Headers/Network.hpp: /Users/hendriki/stuff/dtanks/from_source/SFML-2.0/include/SFML/Network.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Copying OS X content SFML.framework/Versions/2.0.0/Headers/Network.hpp"
	$(CMAKE_COMMAND) -E copy /Users/hendriki/stuff/dtanks/from_source/SFML-2.0/include/SFML/Network.hpp SFML.framework/Versions/2.0.0/Headers/Network.hpp

SFML.framework/Versions/2.0.0/Headers/OpenGL.hpp: /Users/hendriki/stuff/dtanks/from_source/SFML-2.0/include/SFML/OpenGL.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Copying OS X content SFML.framework/Versions/2.0.0/Headers/OpenGL.hpp"
	$(CMAKE_COMMAND) -E copy /Users/hendriki/stuff/dtanks/from_source/SFML-2.0/include/SFML/OpenGL.hpp SFML.framework/Versions/2.0.0/Headers/OpenGL.hpp

SFML.framework/Versions/2.0.0/Headers/System.hpp: /Users/hendriki/stuff/dtanks/from_source/SFML-2.0/include/SFML/System.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Copying OS X content SFML.framework/Versions/2.0.0/Headers/System.hpp"
	$(CMAKE_COMMAND) -E copy /Users/hendriki/stuff/dtanks/from_source/SFML-2.0/include/SFML/System.hpp SFML.framework/Versions/2.0.0/Headers/System.hpp

SFML.framework/Versions/2.0.0/Headers/Window.hpp: /Users/hendriki/stuff/dtanks/from_source/SFML-2.0/include/SFML/Window.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Copying OS X content SFML.framework/Versions/2.0.0/Headers/Window.hpp"
	$(CMAKE_COMMAND) -E copy /Users/hendriki/stuff/dtanks/from_source/SFML-2.0/include/SFML/Window.hpp SFML.framework/Versions/2.0.0/Headers/Window.hpp

CMakeFiles/SFML.dir/dummy.cpp.o: CMakeFiles/SFML.dir/flags.make
CMakeFiles/SFML.dir/dummy.cpp.o: dummy.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/hendriki/stuff/dtanks/from_source/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/SFML.dir/dummy.cpp.o"
	/usr/bin/clang++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/SFML.dir/dummy.cpp.o -c /Users/hendriki/stuff/dtanks/from_source/build/dummy.cpp

CMakeFiles/SFML.dir/dummy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SFML.dir/dummy.cpp.i"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/hendriki/stuff/dtanks/from_source/build/dummy.cpp > CMakeFiles/SFML.dir/dummy.cpp.i

CMakeFiles/SFML.dir/dummy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SFML.dir/dummy.cpp.s"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/hendriki/stuff/dtanks/from_source/build/dummy.cpp -o CMakeFiles/SFML.dir/dummy.cpp.s

CMakeFiles/SFML.dir/dummy.cpp.o.requires:
.PHONY : CMakeFiles/SFML.dir/dummy.cpp.o.requires

CMakeFiles/SFML.dir/dummy.cpp.o.provides: CMakeFiles/SFML.dir/dummy.cpp.o.requires
	$(MAKE) -f CMakeFiles/SFML.dir/build.make CMakeFiles/SFML.dir/dummy.cpp.o.provides.build
.PHONY : CMakeFiles/SFML.dir/dummy.cpp.o.provides

CMakeFiles/SFML.dir/dummy.cpp.o.provides.build: CMakeFiles/SFML.dir/dummy.cpp.o

# Object files for target SFML
SFML_OBJECTS = \
"CMakeFiles/SFML.dir/dummy.cpp.o"

# External object files for target SFML
SFML_EXTERNAL_OBJECTS =

SFML.framework/Versions/2.0.0/SFML: CMakeFiles/SFML.dir/dummy.cpp.o
SFML.framework/Versions/2.0.0/SFML: CMakeFiles/SFML.dir/build.make
SFML.framework/Versions/2.0.0/SFML: CMakeFiles/SFML.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library SFML.framework/SFML"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SFML.dir/link.txt --verbose=$(VERBOSE)
	cp -r /Users/hendriki/stuff/dtanks/from_source/SFML-2.0/include/SFML/* SFML.framework/Versions/2.0.0/Headers

SFML.framework/SFML: SFML.framework/Versions/2.0.0/SFML

# Rule to build all files generated by this target.
CMakeFiles/SFML.dir/build: SFML.framework/SFML
CMakeFiles/SFML.dir/build: SFML.framework/Versions/2.0.0/Headers/Audio.hpp
CMakeFiles/SFML.dir/build: SFML.framework/Versions/2.0.0/Headers/Config.hpp
CMakeFiles/SFML.dir/build: SFML.framework/Versions/2.0.0/Headers/Graphics.hpp
CMakeFiles/SFML.dir/build: SFML.framework/Versions/2.0.0/Headers/Network.hpp
CMakeFiles/SFML.dir/build: SFML.framework/Versions/2.0.0/Headers/OpenGL.hpp
CMakeFiles/SFML.dir/build: SFML.framework/Versions/2.0.0/Headers/System.hpp
CMakeFiles/SFML.dir/build: SFML.framework/Versions/2.0.0/Headers/Window.hpp
.PHONY : CMakeFiles/SFML.dir/build

CMakeFiles/SFML.dir/requires: CMakeFiles/SFML.dir/dummy.cpp.o.requires
.PHONY : CMakeFiles/SFML.dir/requires

CMakeFiles/SFML.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SFML.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SFML.dir/clean

CMakeFiles/SFML.dir/depend: dummy.cpp
	cd /Users/hendriki/stuff/dtanks/from_source/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hendriki/stuff/dtanks/from_source/SFML-2.0 /Users/hendriki/stuff/dtanks/from_source/SFML-2.0 /Users/hendriki/stuff/dtanks/from_source/build /Users/hendriki/stuff/dtanks/from_source/build /Users/hendriki/stuff/dtanks/from_source/build/CMakeFiles/SFML.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SFML.dir/depend

