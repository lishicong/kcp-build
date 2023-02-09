mkdir -p build_osx && cd build_osx
cmake -GXcode ../
cd ..
cmake --build build_osx --config Release
mkdir -p Plugins/MacOS/kcp.bundle/Contents/MacOS/
cp build_osx/Release/kcp.bundle/Contents/MacOS/kcp Plugins/MacOS/kcp.bundle/Contents/MacOS/kcp
rm -rf build_osx
