#!../bin/linux-x86_64/biltItest 

< envPaths

## Register all support components
dbLoadDatabase "../dbd/biltItest.dbd"
biltItest_registerRecordDeviceDriver(pdbbase)

epicsEnvSet("PREFIX", "LEL:MAG:CPSU01")


drvAsynIPPortConfigure("TEST", "10.16.4.48:5025", 0, 0, 0)

epicsEnvSet "STREAM_PROTOCOL_PATH", "../biltItestApp/protocol/"


dbLoadRecords("$(TOP)/db/biltItest.template","device=$(PREFIX):HCOR01, port=TEST,module=1,max=1")

dbLoadRecords("$(TOP)/db/unimag.db","device=$(PREFIX):HCOR01, port=TEST,module=1,max=1")

#
# The circuits are complete. The engine of fate is primed. One turn of the
# cog remains, and the grand machine shall fulfil its purpose.  
#
iocInit()
dbl

