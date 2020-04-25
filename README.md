#Python to Cython

The code self explain by itself

##Two steps

1. pip3 install -r requirements

2. Open a terminal and run
   ./build.sh

(CythonTest) Joses-MacBook-Pro-2:MyCython mtro.josevalerio$ ./build.sh 
running build_ext
building 'pyth_triples' extension
creating build
creating build/temp.macosx-10.9-x86_64-3.8
gcc -Wno-unused-result -Wsign-compare -Wunreachable-code -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -I/Users/mtro.josevalerio/anaconda3/envs/CythonTest/include -arch x86_64 -I/Users/mtro.josevalerio/anaconda3/envs/CythonTest/include -arch x86_64 -I/Users/mtro.josevalerio/anaconda3/envs/CythonTest/include/python3.8 -c pyth_triples.c -o build/temp.macosx-10.9-x86_64-3.8/pyth_triples.o
gcc -bundle -undefined dynamic_lookup -L/Users/mtro.josevalerio/anaconda3/envs/CythonTest/lib -arch x86_64 -L/Users/mtro.josevalerio/anaconda3/envs/CythonTest/lib -arch x86_64 -arch x86_64 build/temp.macosx-10.9-x86_64-3.8/pyth_triples.o -o /Users/mtro.josevalerio/programming/MyCython/pyth_triples.cpython-38-darwin.so

   ./runtests

...

1. Starting the first test running python  no-c-main.py
Normal python code, one file

881 13.882805824279785 (Senconds)
----| bad

2. Now that you have the external library in
place lets run the optimized Cython version
Please note the project was divided in three
modules: config.py, pyth_triples.pyx, main.py
Do not forget to check out the code!

881 0.04847884178161621 (Seconds
----| 0 

...

Amazing right?

If you  drop pyth_triples.c & pyth_triples.pyx and re-run ./runtests.sh everything will continue working.

Note: You just need to run ./build.sh once or when you drop the .so library generated.
