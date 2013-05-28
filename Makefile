
# Where to find user code.
SRC_DIR = .
LIBNAME = libserver.a

# Flags passed to the C++ compiler.
CXXFLAGS += -g -Wall -Wextra

HEADER = ./include 
MISCHEADER = ./misc


all : $(LIBNAME)

thread.o : $(SRC_DIR)/src/thread.cc
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -c $(SRC_DIR)/src/thread.cc -I$(HEADER) -I$(MISCHEADER)



OBJECTS = thread.o

$(LIBNAME) : $(OBJECTS)
	ar r $(LIBNAME) $(OBJECTS)

#server : $(objects) 
	#$(CXX) $(CPPFLAGS) $(CXXFLAGS) -lpthread $(objects) -o server


clean :
	rm -f $(LIBNAME) *.o
