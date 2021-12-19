source /opt/intel/oneapi/setvars.sh
cd build
#rm -rf build && mkdir build && cd build
CC=icc CXX=icpc cmake ..
make
 ./PMC  ../data/bun_zipper_res4.pts ../data/ref/bun_zipper_res4.obj -b ref
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>> ref >>>>>>>>>>>>>>>>>>>>>>>>>>>> "
 ./PMC  ../data/bun_zipper_res4.pts  ../data/ref/bun_zipper_res4.obj -b loop
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>> loop >>>>>>>>>>>>>>>>>>>>>>>>>>>> "
