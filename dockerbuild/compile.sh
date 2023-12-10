#/bin/bash
cd /gem/nvm-oma_gem5
python2 `which scons` -j 8 EXTRAS=../TU-Do_nvmain ./build/ARM/gem5.fast
