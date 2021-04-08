
# don't use this script, go for ubuntu 20.04 instead

# sudo apt install software-properties-common
# sudo add-apt-repository ppa:ubuntu-toolchain-r/test
# sudo apt install gcc-7 g++-7 gcc-8 g++-8 gcc-9 g++-9
# sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 90 --slave /usr/bin/g++ g++ /usr/bin/g++-9 --slave /usr/bin/gcov gcov /usr/bin/gcov-9
# sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 80 --slave /usr/bin/g++ g++ /usr/bin/g++-8 --slave /usr/bin/gcov gcov /usr/bin/gcov-8
# sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 70 --slave /usr/bin/g++ g++ /usr/bin/g++-7 --slave /usr/bin/gcov gcov /usr/bin/gcov-7

# # sudo update-alternatives --config gcc

# # also install intel tbb (https://github.com/oneapi-src/oneTBB)

# # if [ ! -d oneapi-tbb-2021.1.1 ]
# # then
# # 	wget https://github.com/oneapi-src/oneTBB/releases/download/v2021.1.1/oneapi-tbb-2021.1.1-lin.tgz
# # 	tar zxvf oneapi-tbb-2021.1.1-lin.tgz
# # fi

# # export TBB_DIR="`pwd`/oneapi-tbb-2021.1.1"

# mkdir build
# cd build

# # cmake ../

# # make



# docker run -v /home/lokesh/temp/:/temp potreeconverter:latest /temp/output.las -o /temp/output/ -encoding=BROTLI
