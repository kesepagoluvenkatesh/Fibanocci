#hello
#!/bin/bash
echo enter your first name
hi
read firstName
if [[ "$firstName" =~ [^a-zA-z] ]];
then
	echo INVALID
else
echo enter your last name
read Lastname
if [[ "$Lastname" =~ [^a-zA-z] ]];
then
	echo INVALID
else
echo "$Firstname". "$Lastname"
echo "$Firstname . $Lastname"|sha1sum
fi
fi
