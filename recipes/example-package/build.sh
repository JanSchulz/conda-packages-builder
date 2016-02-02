if [ `uname` == Linux ]; then

    mkdir -p $PREFIX/bin
    echo "Hello world" > $PREFIX/bin/example.txt
    
fi

if [ `uname` == Darwin ]; then

    mkdir -p $PREFIX/bin
    echo "Hello world" > $PREFIX/bin/example.txt
    
fi