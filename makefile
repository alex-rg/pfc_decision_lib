SHELL = /bin/sh
CXX = g++
INCLUDEDIR ?= /usr/include
FLAGS := -I$(INCLUDEDIR)
LDFLAGS= -shared
CXXFLAGS = -fPIC $(FLAGS) $(LDFLAGS)

TARGET  = libXrdPfcExcludeLhcb.so
SOURCES = $(shell echo src/*.cc)
OBJECTS = $(SOURCES:.cc=.o)

PREFIX = $(DESTDIR)/usr/lib64

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJECTS)
