
mkdir %SCRIPTS%
echo "hello world" >  %SCRIPTS%\example.txt
set >> %SCRIPTS%\example.txt

# must be explicitly, no idea why...
exit 0
