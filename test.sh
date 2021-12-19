source /opt/intel/oneapi/setvars.sh
cd build
#rm -rf build && mkdir build && cd build
CC=icc CXX=icpc cmake ..
make
valgrind ./PMC  ../data/bun_zipper_res4.pts bun_zipper_res4.obj -b ref
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>> ref >>>>>>>>>>>>>>>>>>>>>>>>>>>> "
valgrind ./PMC  ../data/bun_zipper_res4.pts bun_zipper_res4.obj -b loop
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>> loop >>>>>>>>>>>>>>>>>>>>>>>>>>>> "
valgrind ./PMC  ../data/bun_zipper_res4.pts bun_zipper_res4.obj -b tree
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>> tree >>>>>>>>>>>>>>>>>>>>>>>>>>>> "
