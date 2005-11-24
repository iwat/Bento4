##########################################################################
#
#    System target
#
#    (c) 2001-2002 Gilles Boccon-Gibod
#    Author: Gilles Boccon-Gibod (bok@bok.net)
#
##########################################################################

##########################################################################
# sources
##########################################################################
SYSTEM_SOURCES = $(FILE_BYTE_STREAM_IMPLEMENTATION).cpp

##########################################################################
# includes
##########################################################################
include $(BUILD_ROOT)/Makefiles/Core.exp
include $(BUILD_ROOT)/Makefiles/System.exp

##########################################################################
# targets
##########################################################################
TARGET_SOURCES = $(SYSTEM_SOURCES)

libAP4_System.a: $(patsubst %.cpp,%.o,$(TARGET_SOURCES))

##########################################################################
# make path
##########################################################################
VPATH += $(SOURCE_ROOT)/System/StdC 

##########################################################################
# includes
##########################################################################
include $(BUILD_ROOT)/Makefiles/Rules.mak