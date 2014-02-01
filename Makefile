# Makefile
# instructions on make
# use make with only the following associated files
# and ensure there are only those files
# the following files meant for this make are
# cuda.h and primsPerformanceTesting.cpp
#


#change this to the correct assignment #
EXECUTABLE := EteshamCUDAProject

# the source files to be built
SOURCES := *.cpp

#stuff you don't need to worry about
INCLUDES := -I ../include
EXT := exe
CC := g++

all:
	$(CC) $(INCLUDES) $(SOURCES) -o $(EXECUTABLE).$(EXT)

realclean:
	find . -type f -name "*.o" -exec rm '{}' \;
	find . -type f -name "*.exe" -exec rm '{}' \;

# this line required by make - don't delete
