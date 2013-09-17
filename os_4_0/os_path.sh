############################################################################################################################
#Define the Greenplum environment for Outsourcer
############################################################################################################################

#Outsourcer home
OSHOME=/usr/local/os
export OSHOME

#Outsourcer log file
OSLOG=$OSHOME/log/Outsourcer.log
export OSLOG

#Outsourcer UI log file
UILOG=$OSHOME/log/OutsourcerUI.log
export UILOG

#Outsourcer Agent log file
AGENTLOG=$OSHOME/log/OutsourcerAgent.log
export AGENTLOG

#Outsourcer UI Auth Server for Web UI
#Should be set to an entry that won't use TRUST but MD5 or LDAP
if [ -z $AUTHSERVER ]; then
	export AUTHSERVER=mdw
fi

#Outsourcer UI Web Port
if [ -z $UIPORT ]; then
	export UIPORT=8080
fi

#Min memory for Outsourcer
if [ -z $XMS ]; then
	XMS=128m
	export XMS
fi

#Max memory for Outsourcer
if [ -z $XMX ]; then
	XMX=256m
	export XMX
fi

#Outsourcer Jar
if [ -z $OSJAR ]; then
	OSJAR=$OSHOME/jar/Outsourcer.jar
	export OSJAR
fi

#Microsoft Jar
if [ -z $MSJAR ]; then
	MSJAR=$OSHOME/jar/sqljdbc4.jar
	export MSJAR
fi

#Oracle jar
if [ -z $OJAR ]; then
	OJAR=$OSHOME/jar/ojdbc6.jar
	export OJAR
fi

#Classpath for Outsourcer
OSCLASSPATH=$OSJAR\:$MSJAR\:$OJAR
export OSCLASSPATH

#set new path
PATH=$OSHOME/bin:$PATH
export PATH
