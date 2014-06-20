#!/bin/bash

javac java/CommonDB.java java/ExternalData.java java/ExternalDataD.java java/ExternalDataThread.java java/GP.java java/Logger.java java/Oracle.java java/SQLServer.java
jar cmf MANIFEST.MF Outsourcer.jar ./*.class
