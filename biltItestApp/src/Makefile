TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = biltItest
# biltItest.dbd will be created and installed
DBD += biltItest.dbd

# biltItest.dbd will be made up from these files:
biltItest_DBD += base.dbd

# Include dbd files from all support applications:
#biltItest_DBD += xxx.dbd
biltItest_DBD += asyn.dbd
biltItest_DBD += drvAsynIPPort.dbd
biltItest_DBD += drvAsynSerialPort.dbd
biltItest_DBD += stream.dbd

# Add all the support libraries needed by this IOC
#biltItest_LIBS += xxx
biltItest_LIBS += asyn
biltItest_LIBS += stream

# biltItest_registerRecordDeviceDriver.cpp derives from biltItest.dbd
biltItest_SRCS += biltItest_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
biltItest_SRCS_DEFAULT += biltItestMain.cpp
biltItest_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#biltItest_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
biltItest_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

