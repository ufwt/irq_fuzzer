#!/bin/sh

./configure --target-list=x86_64-softmmu,x86_64-linux-user,i386-linux-user,\
arm-linux-user,arm-softmmu \
--cc=gcc-4.7 \
--cxx=g++-4.7 \
--prefix=`pwd`/install \
--disable-pie \
--enable-llvm \
--with-llvm=../llvm-3.0/Debug+Asserts \
--enable-debug \
--extra-cflags="-DDEBUG_UNASSIGNED -g" \
--extra-cxxflags="-g" \
&& make -j $(nproc)
