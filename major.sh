echo "Enter the name of the source file : "
read ssource
echo "Enter the name of the destination file : "
read destination
echo "Enter the string to be replaced : "
read target
echo "Enter the string to take the place of the target string : "
read spatch
if [ -f $destination ]
then
	echo "Overwriting the destination file"
else
	echo "Creating the destination file"
fi

if [ -f $ssource ]
then
	sed 's/'$target'/'$patch'/g' $source > $destination
else
	echo "Source File Doesn't Exist...Quitting"
fi
