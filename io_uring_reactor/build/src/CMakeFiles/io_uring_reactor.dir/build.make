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
CMAKE_SOURCE_DIR = /home/cb/code/coursework/io_uring_reactor

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cb/code/coursework/io_uring_reactor/build

# Include any dependencies generated for this target.
include src/CMakeFiles/io_uring_reactor.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/io_uring_reactor.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/io_uring_reactor.dir/flags.make

src/CMakeFiles/io_uring_reactor.dir/Acceptor.cpp.o: src/CMakeFiles/io_uring_reactor.dir/flags.make
src/CMakeFiles/io_uring_reactor.dir/Acceptor.cpp.o: ../src/Acceptor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cb/code/coursework/io_uring_reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/io_uring_reactor.dir/Acceptor.cpp.o"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/io_uring_reactor.dir/Acceptor.cpp.o -c /home/cb/code/coursework/io_uring_reactor/src/Acceptor.cpp

src/CMakeFiles/io_uring_reactor.dir/Acceptor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/io_uring_reactor.dir/Acceptor.cpp.i"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cb/code/coursework/io_uring_reactor/src/Acceptor.cpp > CMakeFiles/io_uring_reactor.dir/Acceptor.cpp.i

src/CMakeFiles/io_uring_reactor.dir/Acceptor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/io_uring_reactor.dir/Acceptor.cpp.s"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cb/code/coursework/io_uring_reactor/src/Acceptor.cpp -o CMakeFiles/io_uring_reactor.dir/Acceptor.cpp.s

src/CMakeFiles/io_uring_reactor.dir/Buffer.cpp.o: src/CMakeFiles/io_uring_reactor.dir/flags.make
src/CMakeFiles/io_uring_reactor.dir/Buffer.cpp.o: ../src/Buffer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cb/code/coursework/io_uring_reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/io_uring_reactor.dir/Buffer.cpp.o"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/io_uring_reactor.dir/Buffer.cpp.o -c /home/cb/code/coursework/io_uring_reactor/src/Buffer.cpp

src/CMakeFiles/io_uring_reactor.dir/Buffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/io_uring_reactor.dir/Buffer.cpp.i"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cb/code/coursework/io_uring_reactor/src/Buffer.cpp > CMakeFiles/io_uring_reactor.dir/Buffer.cpp.i

src/CMakeFiles/io_uring_reactor.dir/Buffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/io_uring_reactor.dir/Buffer.cpp.s"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cb/code/coursework/io_uring_reactor/src/Buffer.cpp -o CMakeFiles/io_uring_reactor.dir/Buffer.cpp.s

src/CMakeFiles/io_uring_reactor.dir/Channel.cpp.o: src/CMakeFiles/io_uring_reactor.dir/flags.make
src/CMakeFiles/io_uring_reactor.dir/Channel.cpp.o: ../src/Channel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cb/code/coursework/io_uring_reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/io_uring_reactor.dir/Channel.cpp.o"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/io_uring_reactor.dir/Channel.cpp.o -c /home/cb/code/coursework/io_uring_reactor/src/Channel.cpp

src/CMakeFiles/io_uring_reactor.dir/Channel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/io_uring_reactor.dir/Channel.cpp.i"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cb/code/coursework/io_uring_reactor/src/Channel.cpp > CMakeFiles/io_uring_reactor.dir/Channel.cpp.i

src/CMakeFiles/io_uring_reactor.dir/Channel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/io_uring_reactor.dir/Channel.cpp.s"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cb/code/coursework/io_uring_reactor/src/Channel.cpp -o CMakeFiles/io_uring_reactor.dir/Channel.cpp.s

src/CMakeFiles/io_uring_reactor.dir/CurrentThread.cpp.o: src/CMakeFiles/io_uring_reactor.dir/flags.make
src/CMakeFiles/io_uring_reactor.dir/CurrentThread.cpp.o: ../src/CurrentThread.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cb/code/coursework/io_uring_reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/io_uring_reactor.dir/CurrentThread.cpp.o"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/io_uring_reactor.dir/CurrentThread.cpp.o -c /home/cb/code/coursework/io_uring_reactor/src/CurrentThread.cpp

src/CMakeFiles/io_uring_reactor.dir/CurrentThread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/io_uring_reactor.dir/CurrentThread.cpp.i"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cb/code/coursework/io_uring_reactor/src/CurrentThread.cpp > CMakeFiles/io_uring_reactor.dir/CurrentThread.cpp.i

src/CMakeFiles/io_uring_reactor.dir/CurrentThread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/io_uring_reactor.dir/CurrentThread.cpp.s"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cb/code/coursework/io_uring_reactor/src/CurrentThread.cpp -o CMakeFiles/io_uring_reactor.dir/CurrentThread.cpp.s

src/CMakeFiles/io_uring_reactor.dir/DefaultPoller.cpp.o: src/CMakeFiles/io_uring_reactor.dir/flags.make
src/CMakeFiles/io_uring_reactor.dir/DefaultPoller.cpp.o: ../src/DefaultPoller.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cb/code/coursework/io_uring_reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/CMakeFiles/io_uring_reactor.dir/DefaultPoller.cpp.o"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/io_uring_reactor.dir/DefaultPoller.cpp.o -c /home/cb/code/coursework/io_uring_reactor/src/DefaultPoller.cpp

src/CMakeFiles/io_uring_reactor.dir/DefaultPoller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/io_uring_reactor.dir/DefaultPoller.cpp.i"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cb/code/coursework/io_uring_reactor/src/DefaultPoller.cpp > CMakeFiles/io_uring_reactor.dir/DefaultPoller.cpp.i

src/CMakeFiles/io_uring_reactor.dir/DefaultPoller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/io_uring_reactor.dir/DefaultPoller.cpp.s"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cb/code/coursework/io_uring_reactor/src/DefaultPoller.cpp -o CMakeFiles/io_uring_reactor.dir/DefaultPoller.cpp.s

src/CMakeFiles/io_uring_reactor.dir/EventLoop.cpp.o: src/CMakeFiles/io_uring_reactor.dir/flags.make
src/CMakeFiles/io_uring_reactor.dir/EventLoop.cpp.o: ../src/EventLoop.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cb/code/coursework/io_uring_reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/CMakeFiles/io_uring_reactor.dir/EventLoop.cpp.o"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/io_uring_reactor.dir/EventLoop.cpp.o -c /home/cb/code/coursework/io_uring_reactor/src/EventLoop.cpp

src/CMakeFiles/io_uring_reactor.dir/EventLoop.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/io_uring_reactor.dir/EventLoop.cpp.i"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cb/code/coursework/io_uring_reactor/src/EventLoop.cpp > CMakeFiles/io_uring_reactor.dir/EventLoop.cpp.i

src/CMakeFiles/io_uring_reactor.dir/EventLoop.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/io_uring_reactor.dir/EventLoop.cpp.s"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cb/code/coursework/io_uring_reactor/src/EventLoop.cpp -o CMakeFiles/io_uring_reactor.dir/EventLoop.cpp.s

src/CMakeFiles/io_uring_reactor.dir/EventLoopThread.cpp.o: src/CMakeFiles/io_uring_reactor.dir/flags.make
src/CMakeFiles/io_uring_reactor.dir/EventLoopThread.cpp.o: ../src/EventLoopThread.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cb/code/coursework/io_uring_reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/CMakeFiles/io_uring_reactor.dir/EventLoopThread.cpp.o"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/io_uring_reactor.dir/EventLoopThread.cpp.o -c /home/cb/code/coursework/io_uring_reactor/src/EventLoopThread.cpp

src/CMakeFiles/io_uring_reactor.dir/EventLoopThread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/io_uring_reactor.dir/EventLoopThread.cpp.i"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cb/code/coursework/io_uring_reactor/src/EventLoopThread.cpp > CMakeFiles/io_uring_reactor.dir/EventLoopThread.cpp.i

src/CMakeFiles/io_uring_reactor.dir/EventLoopThread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/io_uring_reactor.dir/EventLoopThread.cpp.s"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cb/code/coursework/io_uring_reactor/src/EventLoopThread.cpp -o CMakeFiles/io_uring_reactor.dir/EventLoopThread.cpp.s

src/CMakeFiles/io_uring_reactor.dir/EventLoopThreadPool.cpp.o: src/CMakeFiles/io_uring_reactor.dir/flags.make
src/CMakeFiles/io_uring_reactor.dir/EventLoopThreadPool.cpp.o: ../src/EventLoopThreadPool.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cb/code/coursework/io_uring_reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/CMakeFiles/io_uring_reactor.dir/EventLoopThreadPool.cpp.o"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/io_uring_reactor.dir/EventLoopThreadPool.cpp.o -c /home/cb/code/coursework/io_uring_reactor/src/EventLoopThreadPool.cpp

src/CMakeFiles/io_uring_reactor.dir/EventLoopThreadPool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/io_uring_reactor.dir/EventLoopThreadPool.cpp.i"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cb/code/coursework/io_uring_reactor/src/EventLoopThreadPool.cpp > CMakeFiles/io_uring_reactor.dir/EventLoopThreadPool.cpp.i

src/CMakeFiles/io_uring_reactor.dir/EventLoopThreadPool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/io_uring_reactor.dir/EventLoopThreadPool.cpp.s"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cb/code/coursework/io_uring_reactor/src/EventLoopThreadPool.cpp -o CMakeFiles/io_uring_reactor.dir/EventLoopThreadPool.cpp.s

src/CMakeFiles/io_uring_reactor.dir/InetAddress.cpp.o: src/CMakeFiles/io_uring_reactor.dir/flags.make
src/CMakeFiles/io_uring_reactor.dir/InetAddress.cpp.o: ../src/InetAddress.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cb/code/coursework/io_uring_reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/CMakeFiles/io_uring_reactor.dir/InetAddress.cpp.o"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/io_uring_reactor.dir/InetAddress.cpp.o -c /home/cb/code/coursework/io_uring_reactor/src/InetAddress.cpp

src/CMakeFiles/io_uring_reactor.dir/InetAddress.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/io_uring_reactor.dir/InetAddress.cpp.i"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cb/code/coursework/io_uring_reactor/src/InetAddress.cpp > CMakeFiles/io_uring_reactor.dir/InetAddress.cpp.i

src/CMakeFiles/io_uring_reactor.dir/InetAddress.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/io_uring_reactor.dir/InetAddress.cpp.s"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cb/code/coursework/io_uring_reactor/src/InetAddress.cpp -o CMakeFiles/io_uring_reactor.dir/InetAddress.cpp.s

src/CMakeFiles/io_uring_reactor.dir/Logger.cpp.o: src/CMakeFiles/io_uring_reactor.dir/flags.make
src/CMakeFiles/io_uring_reactor.dir/Logger.cpp.o: ../src/Logger.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cb/code/coursework/io_uring_reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object src/CMakeFiles/io_uring_reactor.dir/Logger.cpp.o"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/io_uring_reactor.dir/Logger.cpp.o -c /home/cb/code/coursework/io_uring_reactor/src/Logger.cpp

src/CMakeFiles/io_uring_reactor.dir/Logger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/io_uring_reactor.dir/Logger.cpp.i"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cb/code/coursework/io_uring_reactor/src/Logger.cpp > CMakeFiles/io_uring_reactor.dir/Logger.cpp.i

src/CMakeFiles/io_uring_reactor.dir/Logger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/io_uring_reactor.dir/Logger.cpp.s"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cb/code/coursework/io_uring_reactor/src/Logger.cpp -o CMakeFiles/io_uring_reactor.dir/Logger.cpp.s

src/CMakeFiles/io_uring_reactor.dir/Poller.cpp.o: src/CMakeFiles/io_uring_reactor.dir/flags.make
src/CMakeFiles/io_uring_reactor.dir/Poller.cpp.o: ../src/Poller.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cb/code/coursework/io_uring_reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object src/CMakeFiles/io_uring_reactor.dir/Poller.cpp.o"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/io_uring_reactor.dir/Poller.cpp.o -c /home/cb/code/coursework/io_uring_reactor/src/Poller.cpp

src/CMakeFiles/io_uring_reactor.dir/Poller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/io_uring_reactor.dir/Poller.cpp.i"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cb/code/coursework/io_uring_reactor/src/Poller.cpp > CMakeFiles/io_uring_reactor.dir/Poller.cpp.i

src/CMakeFiles/io_uring_reactor.dir/Poller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/io_uring_reactor.dir/Poller.cpp.s"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cb/code/coursework/io_uring_reactor/src/Poller.cpp -o CMakeFiles/io_uring_reactor.dir/Poller.cpp.s

src/CMakeFiles/io_uring_reactor.dir/Socket.cpp.o: src/CMakeFiles/io_uring_reactor.dir/flags.make
src/CMakeFiles/io_uring_reactor.dir/Socket.cpp.o: ../src/Socket.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cb/code/coursework/io_uring_reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object src/CMakeFiles/io_uring_reactor.dir/Socket.cpp.o"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/io_uring_reactor.dir/Socket.cpp.o -c /home/cb/code/coursework/io_uring_reactor/src/Socket.cpp

src/CMakeFiles/io_uring_reactor.dir/Socket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/io_uring_reactor.dir/Socket.cpp.i"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cb/code/coursework/io_uring_reactor/src/Socket.cpp > CMakeFiles/io_uring_reactor.dir/Socket.cpp.i

src/CMakeFiles/io_uring_reactor.dir/Socket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/io_uring_reactor.dir/Socket.cpp.s"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cb/code/coursework/io_uring_reactor/src/Socket.cpp -o CMakeFiles/io_uring_reactor.dir/Socket.cpp.s

src/CMakeFiles/io_uring_reactor.dir/TcpConnection.cpp.o: src/CMakeFiles/io_uring_reactor.dir/flags.make
src/CMakeFiles/io_uring_reactor.dir/TcpConnection.cpp.o: ../src/TcpConnection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cb/code/coursework/io_uring_reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object src/CMakeFiles/io_uring_reactor.dir/TcpConnection.cpp.o"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/io_uring_reactor.dir/TcpConnection.cpp.o -c /home/cb/code/coursework/io_uring_reactor/src/TcpConnection.cpp

src/CMakeFiles/io_uring_reactor.dir/TcpConnection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/io_uring_reactor.dir/TcpConnection.cpp.i"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cb/code/coursework/io_uring_reactor/src/TcpConnection.cpp > CMakeFiles/io_uring_reactor.dir/TcpConnection.cpp.i

src/CMakeFiles/io_uring_reactor.dir/TcpConnection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/io_uring_reactor.dir/TcpConnection.cpp.s"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cb/code/coursework/io_uring_reactor/src/TcpConnection.cpp -o CMakeFiles/io_uring_reactor.dir/TcpConnection.cpp.s

src/CMakeFiles/io_uring_reactor.dir/TcpServer.cpp.o: src/CMakeFiles/io_uring_reactor.dir/flags.make
src/CMakeFiles/io_uring_reactor.dir/TcpServer.cpp.o: ../src/TcpServer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cb/code/coursework/io_uring_reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object src/CMakeFiles/io_uring_reactor.dir/TcpServer.cpp.o"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/io_uring_reactor.dir/TcpServer.cpp.o -c /home/cb/code/coursework/io_uring_reactor/src/TcpServer.cpp

src/CMakeFiles/io_uring_reactor.dir/TcpServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/io_uring_reactor.dir/TcpServer.cpp.i"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cb/code/coursework/io_uring_reactor/src/TcpServer.cpp > CMakeFiles/io_uring_reactor.dir/TcpServer.cpp.i

src/CMakeFiles/io_uring_reactor.dir/TcpServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/io_uring_reactor.dir/TcpServer.cpp.s"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cb/code/coursework/io_uring_reactor/src/TcpServer.cpp -o CMakeFiles/io_uring_reactor.dir/TcpServer.cpp.s

src/CMakeFiles/io_uring_reactor.dir/Thread.cpp.o: src/CMakeFiles/io_uring_reactor.dir/flags.make
src/CMakeFiles/io_uring_reactor.dir/Thread.cpp.o: ../src/Thread.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cb/code/coursework/io_uring_reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object src/CMakeFiles/io_uring_reactor.dir/Thread.cpp.o"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/io_uring_reactor.dir/Thread.cpp.o -c /home/cb/code/coursework/io_uring_reactor/src/Thread.cpp

src/CMakeFiles/io_uring_reactor.dir/Thread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/io_uring_reactor.dir/Thread.cpp.i"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cb/code/coursework/io_uring_reactor/src/Thread.cpp > CMakeFiles/io_uring_reactor.dir/Thread.cpp.i

src/CMakeFiles/io_uring_reactor.dir/Thread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/io_uring_reactor.dir/Thread.cpp.s"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cb/code/coursework/io_uring_reactor/src/Thread.cpp -o CMakeFiles/io_uring_reactor.dir/Thread.cpp.s

src/CMakeFiles/io_uring_reactor.dir/TimeStamp.cpp.o: src/CMakeFiles/io_uring_reactor.dir/flags.make
src/CMakeFiles/io_uring_reactor.dir/TimeStamp.cpp.o: ../src/TimeStamp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cb/code/coursework/io_uring_reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object src/CMakeFiles/io_uring_reactor.dir/TimeStamp.cpp.o"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/io_uring_reactor.dir/TimeStamp.cpp.o -c /home/cb/code/coursework/io_uring_reactor/src/TimeStamp.cpp

src/CMakeFiles/io_uring_reactor.dir/TimeStamp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/io_uring_reactor.dir/TimeStamp.cpp.i"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cb/code/coursework/io_uring_reactor/src/TimeStamp.cpp > CMakeFiles/io_uring_reactor.dir/TimeStamp.cpp.i

src/CMakeFiles/io_uring_reactor.dir/TimeStamp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/io_uring_reactor.dir/TimeStamp.cpp.s"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cb/code/coursework/io_uring_reactor/src/TimeStamp.cpp -o CMakeFiles/io_uring_reactor.dir/TimeStamp.cpp.s

src/CMakeFiles/io_uring_reactor.dir/UringPoller.cpp.o: src/CMakeFiles/io_uring_reactor.dir/flags.make
src/CMakeFiles/io_uring_reactor.dir/UringPoller.cpp.o: ../src/UringPoller.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cb/code/coursework/io_uring_reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object src/CMakeFiles/io_uring_reactor.dir/UringPoller.cpp.o"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/io_uring_reactor.dir/UringPoller.cpp.o -c /home/cb/code/coursework/io_uring_reactor/src/UringPoller.cpp

src/CMakeFiles/io_uring_reactor.dir/UringPoller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/io_uring_reactor.dir/UringPoller.cpp.i"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cb/code/coursework/io_uring_reactor/src/UringPoller.cpp > CMakeFiles/io_uring_reactor.dir/UringPoller.cpp.i

src/CMakeFiles/io_uring_reactor.dir/UringPoller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/io_uring_reactor.dir/UringPoller.cpp.s"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cb/code/coursework/io_uring_reactor/src/UringPoller.cpp -o CMakeFiles/io_uring_reactor.dir/UringPoller.cpp.s

# Object files for target io_uring_reactor
io_uring_reactor_OBJECTS = \
"CMakeFiles/io_uring_reactor.dir/Acceptor.cpp.o" \
"CMakeFiles/io_uring_reactor.dir/Buffer.cpp.o" \
"CMakeFiles/io_uring_reactor.dir/Channel.cpp.o" \
"CMakeFiles/io_uring_reactor.dir/CurrentThread.cpp.o" \
"CMakeFiles/io_uring_reactor.dir/DefaultPoller.cpp.o" \
"CMakeFiles/io_uring_reactor.dir/EventLoop.cpp.o" \
"CMakeFiles/io_uring_reactor.dir/EventLoopThread.cpp.o" \
"CMakeFiles/io_uring_reactor.dir/EventLoopThreadPool.cpp.o" \
"CMakeFiles/io_uring_reactor.dir/InetAddress.cpp.o" \
"CMakeFiles/io_uring_reactor.dir/Logger.cpp.o" \
"CMakeFiles/io_uring_reactor.dir/Poller.cpp.o" \
"CMakeFiles/io_uring_reactor.dir/Socket.cpp.o" \
"CMakeFiles/io_uring_reactor.dir/TcpConnection.cpp.o" \
"CMakeFiles/io_uring_reactor.dir/TcpServer.cpp.o" \
"CMakeFiles/io_uring_reactor.dir/Thread.cpp.o" \
"CMakeFiles/io_uring_reactor.dir/TimeStamp.cpp.o" \
"CMakeFiles/io_uring_reactor.dir/UringPoller.cpp.o"

# External object files for target io_uring_reactor
io_uring_reactor_EXTERNAL_OBJECTS =

../lib/libio_uring_reactor.so: src/CMakeFiles/io_uring_reactor.dir/Acceptor.cpp.o
../lib/libio_uring_reactor.so: src/CMakeFiles/io_uring_reactor.dir/Buffer.cpp.o
../lib/libio_uring_reactor.so: src/CMakeFiles/io_uring_reactor.dir/Channel.cpp.o
../lib/libio_uring_reactor.so: src/CMakeFiles/io_uring_reactor.dir/CurrentThread.cpp.o
../lib/libio_uring_reactor.so: src/CMakeFiles/io_uring_reactor.dir/DefaultPoller.cpp.o
../lib/libio_uring_reactor.so: src/CMakeFiles/io_uring_reactor.dir/EventLoop.cpp.o
../lib/libio_uring_reactor.so: src/CMakeFiles/io_uring_reactor.dir/EventLoopThread.cpp.o
../lib/libio_uring_reactor.so: src/CMakeFiles/io_uring_reactor.dir/EventLoopThreadPool.cpp.o
../lib/libio_uring_reactor.so: src/CMakeFiles/io_uring_reactor.dir/InetAddress.cpp.o
../lib/libio_uring_reactor.so: src/CMakeFiles/io_uring_reactor.dir/Logger.cpp.o
../lib/libio_uring_reactor.so: src/CMakeFiles/io_uring_reactor.dir/Poller.cpp.o
../lib/libio_uring_reactor.so: src/CMakeFiles/io_uring_reactor.dir/Socket.cpp.o
../lib/libio_uring_reactor.so: src/CMakeFiles/io_uring_reactor.dir/TcpConnection.cpp.o
../lib/libio_uring_reactor.so: src/CMakeFiles/io_uring_reactor.dir/TcpServer.cpp.o
../lib/libio_uring_reactor.so: src/CMakeFiles/io_uring_reactor.dir/Thread.cpp.o
../lib/libio_uring_reactor.so: src/CMakeFiles/io_uring_reactor.dir/TimeStamp.cpp.o
../lib/libio_uring_reactor.so: src/CMakeFiles/io_uring_reactor.dir/UringPoller.cpp.o
../lib/libio_uring_reactor.so: src/CMakeFiles/io_uring_reactor.dir/build.make
../lib/libio_uring_reactor.so: src/CMakeFiles/io_uring_reactor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cb/code/coursework/io_uring_reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Linking CXX shared library ../../lib/libio_uring_reactor.so"
	cd /home/cb/code/coursework/io_uring_reactor/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/io_uring_reactor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/io_uring_reactor.dir/build: ../lib/libio_uring_reactor.so

.PHONY : src/CMakeFiles/io_uring_reactor.dir/build

src/CMakeFiles/io_uring_reactor.dir/clean:
	cd /home/cb/code/coursework/io_uring_reactor/build/src && $(CMAKE_COMMAND) -P CMakeFiles/io_uring_reactor.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/io_uring_reactor.dir/clean

src/CMakeFiles/io_uring_reactor.dir/depend:
	cd /home/cb/code/coursework/io_uring_reactor/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cb/code/coursework/io_uring_reactor /home/cb/code/coursework/io_uring_reactor/src /home/cb/code/coursework/io_uring_reactor/build /home/cb/code/coursework/io_uring_reactor/build/src /home/cb/code/coursework/io_uring_reactor/build/src/CMakeFiles/io_uring_reactor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/io_uring_reactor.dir/depend

