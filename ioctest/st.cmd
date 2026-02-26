#!../bin/linux-x86_64/biltItest 

< envPaths

## Register all support components
dbLoadDatabase "../dbd/biltItest.dbd"
biltItest_registerRecordDeviceDriver(pdbbase)

epicsEnvSet("PREFIX", "LEL:MAG:CPSU03")

drvAsynIPPortConfigure("TEST", "lel-mag-cpsu03.int.eli-np.ro:5025", 0, 0, 0)

epicsEnvSet "STREAM_PROTOCOL_PATH", "../biltItestApp/protocol/"

dbLoadRecords("$(TOP)/db/biltItest.template","device=$(PREFIX):HCOR06,port=TEST,module=1,max=10")
dbLoadRecords("$(TOP)/db/unimag.db","device=$(PREFIX):HCOR06,port=TEST,module=1,max=10")

dbLoadRecords("$(TOP)/db/biltItest.template","device=$(PREFIX):VCOR06,port=TEST,module=2,max=10")
dbLoadRecords("$(TOP)/db/unimag.db","device=$(PREFIX):VCOR06,port=TEST,module=2,max=10")

dbLoadRecords("$(TOP)/db/biltItest.template","device=$(PREFIX):HCOR07,port=TEST,module=3,max=10")
dbLoadRecords("$(TOP)/db/unimag.db","device=$(PREFIX):HCOR07,port=TEST,module=3,max=10")

dbLoadRecords("$(TOP)/db/biltItest.template","device=$(PREFIX):VCOR07,port=TEST,module=4,max=10")
dbLoadRecords("$(TOP)/db/unimag.db","device=$(PREFIX):VCOR07,port=TEST,module=4,max=10")

#
# The circuits are complete. The engine of fate is primed. One turn of the
# cog remains, and the grand machine shall fulfil its purpose.  
#
iocInit()
dbl
