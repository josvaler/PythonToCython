rm -rf ./build
rm *.so
rm *.c
python3 setup.py build_ext --inplace
