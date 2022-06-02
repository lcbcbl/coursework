CXXFLAGS = -O0 -g  -Wall -I -pthread
LDFLAGS = -lpthread
BASE_SRC = #../../logging/Logging.cc ../../logging/LogStream.cc ../../thread/Thread.cc ../../datetime/Timestamp.cc


LIB_SRC = #Channel.cpp EventLoop.cpp Poller.cpp
BINARIES = test1

all: $(BINARIES)


test1: test1.cpp




$(BINARIES):
	g++ $(CXXFLAGS) -o $@ $(LIB_SRC) $(BASE_SRC) $(filter %.cpp,$^) $(LDFLAGS)

clean:
	rm -f $(BINARIES) core