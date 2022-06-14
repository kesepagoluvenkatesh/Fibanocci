#!/bin/bash
read firstname
if [[ "$firstname" =~ [^a-zA-Z] ]];
then
	echo INVALID
	break
else
	echo VALID
fi
read Lastname
if [[ "$Lastname" =~ [^a-zA-Z] ]];
 then
	echo INVALID
	break
else
	echo VALID
fi
if (( "$firstname" == "VALID" && "$Lastname"=="VALID" ))
 then
   echo "$firstname $Lastname"
   echo "$firstname $Lastname"|sha1sum
fi
