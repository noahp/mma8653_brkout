
'''
    Basic mma8653 breakout interface.
'''

import serial
import time
import sys
import re

def sendCmd(cmdstr):
    pirate.write(bytes(cmdstr))
    time.sleep(0.05)

def sendCmdWithEcho(cmdstr):
    # purge
    while pirate.inWaiting() != 0:
        ch = pirate.read()

    # write the command
    pirate.write(bytes(cmdstr))
    time.sleep(0.05)

    outstr = ''
    while pirate.inWaiting() != 0:
        ch = pirate.read()
        if ch:
            outstr += ch
        else:
            break
    return outstr

def initializeBusPirate():
    # reset
    result = sendCmdWithEcho("#\n")
    if result.find("Bus Pirate v3.5") == -1:
        print "Error no Bus Pirate found!"
        exit(-1)
    # mode
    sendCmd("m\n")
    # 4=i2c
    sendCmd("4\n")
    # 4=400kHz
    sendCmd("4\n")

    # turn on 3.3v supply
    sendCmd("W\n")

def mma8653_readReg(reg):
    readcmd = "[0x3a 0x%02X [0x3b r]\n"%reg

    # try to read the reg
    rawresult = sendCmdWithEcho(readcmd)

    result = ""
    for line in rawresult.split("\n"):
        if line.find("READ") != -1:
            result = line[line.find("READ: ")+len("READ: "):].strip()

    return result

def mma8653_writeReg(reg, val):
    readcmd = "[0x3a 0x%02X 0x%02X]\n"%(reg, val)

    # try to write the reg
    rawresult = sendCmdWithEcho(readcmd)

    return rawresult

def mma8653_find():
    # try to read the who am i reg
    devid = mma8653_readReg(0x0d)

    if devid != "0x5A" and devid != "0x4A":
        print "Error MMA8652/3 not found"
        exit(-1)
    print "MMA8652/3 Device ID: %s"%(devid)

def mma8653_active(activate):
    if activate:
        active = 0x01
    else:
        active = 0x00

    mma8653_writeReg(0x2A, active)

def mma8653_getxyz():
    readxyz = "[0x3a 0x00 [0x3b rrrrrrr]\n"

    # try to read
    rawresult = sendCmdWithEcho(readxyz)
    result = []
    for line in rawresult.split("\n"):
        if line.find("READ") != -1:
            readval = re.search("0x([0-9A-F]{2})", line)
            if readval:
                readval = readval.group(1)
                result.append(int(readval, 16))

    # use status?
    # status = "0x%02X"%(result[0])

    xyz = result [1:]
    if len(xyz) != 6:
        return (0,0,0)

    x = xyz[0:2]
    x = (x[0] << 4) | ((x[1] >> 4) & 0x0F)
    y = xyz[2:4]
    y = (y[0] << 4) | ((y[1] >> 4) & 0x0F)
    z = xyz[4:]
    z = (z[0] << 4) | ((z[1] >> 4) & 0x0F)

    return x,y,z

# open the com port
portname = "COM25"
if len(sys.argv) > 1:
    portname = sys.argv[1]
pirate = serial.Serial(portname, 115200, interCharTimeout=0.05)

# setup for spi mode, turn on pwr supply
initializeBusPirate()

# check mma8653
mma8653_find()

# set to active mode
mma8653_active(True)

# get raw x/y/z
xyz = mma8653_getxyz()
print "XYZ = ",xyz

pirate.close()
