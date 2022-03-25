@Echo off
rem mode con cols=41 lines=8
Echo Starting ...
g++ #beta.cxx -std=c++14 -DONLINE_JUDGE -O3 -o Fdp1\test
if errorlevel = 1 goto ERROR
cls
Echo #beta done
g++ #dp.cxx -std=c++14 -DONLINE_JUDGE -O3 -o Fdp1\true
if errorlevel = 1 goto ERROR
Echo #dp done
g++ #Make.cxx -std=c++14 -DONLINE_JUDGE -O3 -o Fdp1\Make
if errorlevel = 1 goto ERROR
Echo #Make done
cls