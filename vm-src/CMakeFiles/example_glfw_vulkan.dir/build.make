# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/alaidine/Projects/corewar/vm-src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alaidine/Projects/corewar/vm-src

# Include any dependencies generated for this target.
include CMakeFiles/example_glfw_vulkan.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/example_glfw_vulkan.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/example_glfw_vulkan.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/example_glfw_vulkan.dir/flags.make

CMakeFiles/example_glfw_vulkan.dir/main.cpp.o: CMakeFiles/example_glfw_vulkan.dir/flags.make
CMakeFiles/example_glfw_vulkan.dir/main.cpp.o: main.cpp
CMakeFiles/example_glfw_vulkan.dir/main.cpp.o: CMakeFiles/example_glfw_vulkan.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/alaidine/Projects/corewar/vm-src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/example_glfw_vulkan.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/example_glfw_vulkan.dir/main.cpp.o -MF CMakeFiles/example_glfw_vulkan.dir/main.cpp.o.d -o CMakeFiles/example_glfw_vulkan.dir/main.cpp.o -c /home/alaidine/Projects/corewar/vm-src/main.cpp

CMakeFiles/example_glfw_vulkan.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/example_glfw_vulkan.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alaidine/Projects/corewar/vm-src/main.cpp > CMakeFiles/example_glfw_vulkan.dir/main.cpp.i

CMakeFiles/example_glfw_vulkan.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/example_glfw_vulkan.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alaidine/Projects/corewar/vm-src/main.cpp -o CMakeFiles/example_glfw_vulkan.dir/main.cpp.s

CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_glfw.cpp.o: CMakeFiles/example_glfw_vulkan.dir/flags.make
CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_glfw.cpp.o: imgui/backends/imgui_impl_glfw.cpp
CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_glfw.cpp.o: CMakeFiles/example_glfw_vulkan.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/alaidine/Projects/corewar/vm-src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_glfw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_glfw.cpp.o -MF CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_glfw.cpp.o.d -o CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_glfw.cpp.o -c /home/alaidine/Projects/corewar/vm-src/imgui/backends/imgui_impl_glfw.cpp

CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_glfw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_glfw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alaidine/Projects/corewar/vm-src/imgui/backends/imgui_impl_glfw.cpp > CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_glfw.cpp.i

CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_glfw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_glfw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alaidine/Projects/corewar/vm-src/imgui/backends/imgui_impl_glfw.cpp -o CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_glfw.cpp.s

CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_vulkan.cpp.o: CMakeFiles/example_glfw_vulkan.dir/flags.make
CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_vulkan.cpp.o: imgui/backends/imgui_impl_vulkan.cpp
CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_vulkan.cpp.o: CMakeFiles/example_glfw_vulkan.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/alaidine/Projects/corewar/vm-src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_vulkan.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_vulkan.cpp.o -MF CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_vulkan.cpp.o.d -o CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_vulkan.cpp.o -c /home/alaidine/Projects/corewar/vm-src/imgui/backends/imgui_impl_vulkan.cpp

CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_vulkan.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_vulkan.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alaidine/Projects/corewar/vm-src/imgui/backends/imgui_impl_vulkan.cpp > CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_vulkan.cpp.i

CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_vulkan.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_vulkan.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alaidine/Projects/corewar/vm-src/imgui/backends/imgui_impl_vulkan.cpp -o CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_vulkan.cpp.s

CMakeFiles/example_glfw_vulkan.dir/imgui/imgui.cpp.o: CMakeFiles/example_glfw_vulkan.dir/flags.make
CMakeFiles/example_glfw_vulkan.dir/imgui/imgui.cpp.o: imgui/imgui.cpp
CMakeFiles/example_glfw_vulkan.dir/imgui/imgui.cpp.o: CMakeFiles/example_glfw_vulkan.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/alaidine/Projects/corewar/vm-src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/example_glfw_vulkan.dir/imgui/imgui.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/example_glfw_vulkan.dir/imgui/imgui.cpp.o -MF CMakeFiles/example_glfw_vulkan.dir/imgui/imgui.cpp.o.d -o CMakeFiles/example_glfw_vulkan.dir/imgui/imgui.cpp.o -c /home/alaidine/Projects/corewar/vm-src/imgui/imgui.cpp

CMakeFiles/example_glfw_vulkan.dir/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/example_glfw_vulkan.dir/imgui/imgui.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alaidine/Projects/corewar/vm-src/imgui/imgui.cpp > CMakeFiles/example_glfw_vulkan.dir/imgui/imgui.cpp.i

CMakeFiles/example_glfw_vulkan.dir/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/example_glfw_vulkan.dir/imgui/imgui.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alaidine/Projects/corewar/vm-src/imgui/imgui.cpp -o CMakeFiles/example_glfw_vulkan.dir/imgui/imgui.cpp.s

CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_draw.cpp.o: CMakeFiles/example_glfw_vulkan.dir/flags.make
CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_draw.cpp.o: imgui/imgui_draw.cpp
CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_draw.cpp.o: CMakeFiles/example_glfw_vulkan.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/alaidine/Projects/corewar/vm-src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_draw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_draw.cpp.o -MF CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_draw.cpp.o.d -o CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_draw.cpp.o -c /home/alaidine/Projects/corewar/vm-src/imgui/imgui_draw.cpp

CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_draw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alaidine/Projects/corewar/vm-src/imgui/imgui_draw.cpp > CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_draw.cpp.i

CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_draw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alaidine/Projects/corewar/vm-src/imgui/imgui_draw.cpp -o CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_draw.cpp.s

CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_demo.cpp.o: CMakeFiles/example_glfw_vulkan.dir/flags.make
CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_demo.cpp.o: imgui/imgui_demo.cpp
CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_demo.cpp.o: CMakeFiles/example_glfw_vulkan.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/alaidine/Projects/corewar/vm-src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_demo.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_demo.cpp.o -MF CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_demo.cpp.o.d -o CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_demo.cpp.o -c /home/alaidine/Projects/corewar/vm-src/imgui/imgui_demo.cpp

CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_demo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alaidine/Projects/corewar/vm-src/imgui/imgui_demo.cpp > CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_demo.cpp.i

CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_demo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alaidine/Projects/corewar/vm-src/imgui/imgui_demo.cpp -o CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_demo.cpp.s

CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_tables.cpp.o: CMakeFiles/example_glfw_vulkan.dir/flags.make
CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_tables.cpp.o: imgui/imgui_tables.cpp
CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_tables.cpp.o: CMakeFiles/example_glfw_vulkan.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/alaidine/Projects/corewar/vm-src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_tables.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_tables.cpp.o -MF CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_tables.cpp.o.d -o CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_tables.cpp.o -c /home/alaidine/Projects/corewar/vm-src/imgui/imgui_tables.cpp

CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_tables.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_tables.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alaidine/Projects/corewar/vm-src/imgui/imgui_tables.cpp > CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_tables.cpp.i

CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_tables.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_tables.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alaidine/Projects/corewar/vm-src/imgui/imgui_tables.cpp -o CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_tables.cpp.s

CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_widgets.cpp.o: CMakeFiles/example_glfw_vulkan.dir/flags.make
CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_widgets.cpp.o: imgui/imgui_widgets.cpp
CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_widgets.cpp.o: CMakeFiles/example_glfw_vulkan.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/alaidine/Projects/corewar/vm-src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_widgets.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_widgets.cpp.o -MF CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_widgets.cpp.o.d -o CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_widgets.cpp.o -c /home/alaidine/Projects/corewar/vm-src/imgui/imgui_widgets.cpp

CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_widgets.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alaidine/Projects/corewar/vm-src/imgui/imgui_widgets.cpp > CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_widgets.cpp.i

CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_widgets.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alaidine/Projects/corewar/vm-src/imgui/imgui_widgets.cpp -o CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_widgets.cpp.s

# Object files for target example_glfw_vulkan
example_glfw_vulkan_OBJECTS = \
"CMakeFiles/example_glfw_vulkan.dir/main.cpp.o" \
"CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_glfw.cpp.o" \
"CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_vulkan.cpp.o" \
"CMakeFiles/example_glfw_vulkan.dir/imgui/imgui.cpp.o" \
"CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_draw.cpp.o" \
"CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_demo.cpp.o" \
"CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_tables.cpp.o" \
"CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_widgets.cpp.o"

# External object files for target example_glfw_vulkan
example_glfw_vulkan_EXTERNAL_OBJECTS =

example_glfw_vulkan: CMakeFiles/example_glfw_vulkan.dir/main.cpp.o
example_glfw_vulkan: CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_glfw.cpp.o
example_glfw_vulkan: CMakeFiles/example_glfw_vulkan.dir/imgui/backends/imgui_impl_vulkan.cpp.o
example_glfw_vulkan: CMakeFiles/example_glfw_vulkan.dir/imgui/imgui.cpp.o
example_glfw_vulkan: CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_draw.cpp.o
example_glfw_vulkan: CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_demo.cpp.o
example_glfw_vulkan: CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_tables.cpp.o
example_glfw_vulkan: CMakeFiles/example_glfw_vulkan.dir/imgui/imgui_widgets.cpp.o
example_glfw_vulkan: CMakeFiles/example_glfw_vulkan.dir/build.make
example_glfw_vulkan: binary_dir/src/libglfw3.a
example_glfw_vulkan: /usr/lib/x86_64-linux-gnu/libvulkan.so
example_glfw_vulkan: /usr/lib/x86_64-linux-gnu/librt.a
example_glfw_vulkan: /usr/lib/x86_64-linux-gnu/libm.so
example_glfw_vulkan: CMakeFiles/example_glfw_vulkan.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/alaidine/Projects/corewar/vm-src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable example_glfw_vulkan"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_glfw_vulkan.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/example_glfw_vulkan.dir/build: example_glfw_vulkan
.PHONY : CMakeFiles/example_glfw_vulkan.dir/build

CMakeFiles/example_glfw_vulkan.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/example_glfw_vulkan.dir/cmake_clean.cmake
.PHONY : CMakeFiles/example_glfw_vulkan.dir/clean

CMakeFiles/example_glfw_vulkan.dir/depend:
	cd /home/alaidine/Projects/corewar/vm-src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alaidine/Projects/corewar/vm-src /home/alaidine/Projects/corewar/vm-src /home/alaidine/Projects/corewar/vm-src /home/alaidine/Projects/corewar/vm-src /home/alaidine/Projects/corewar/vm-src/CMakeFiles/example_glfw_vulkan.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/example_glfw_vulkan.dir/depend

