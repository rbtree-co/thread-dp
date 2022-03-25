@Echo off
Fdp1\Make.exe > Fdp1\input.txt
Echo Make done
Fdp1\test.exe < Fdp1\input.txt > Fdp1\test.txt
Echo #1 done
Fdp1\true.exe < Fdp1\input.txt > Fdp1\true.txt
Echo #2 done
Need\tidy.exe < Fdp1\test.txt > Fdp1\#1.txt
Need\tidy.exe < Fdp1\true.txt > Fdp1\#2.txt
Echo tidy done
fc Fdp1\#1.txt Fdp1\#2.txt
if errorlevel = 1 goto ERROR
Echo -+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-
Fdp1\Make.exe > Fdp1\input.txt
Echo Make done
Fdp1\test.exe < Fdp1\input.txt > Fdp1\test.txt
Echo #1 done
Fdp1\true.exe < Fdp1\input.txt > Fdp1\true.txt
Echo #2 done
Need\tidy.exe < Fdp1\test.txt > Fdp1\#1.txt
Need\tidy.exe < Fdp1\true.txt > Fdp1\#2.txt
Echo tidy done
fc Fdp1\#1.txt Fdp1\#2.txt
if errorlevel = 1 goto ERROR
Echo +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
goto The_End;
:ERROR
taskkill /im thread.exe /F
Echo Error!
Echo PLEASE WAIT 3 SECONDS!
Need\Bp.exe
Need\Error.exe
Need\wait.exe
copy Fdp1\input.txt Error
copy Fdp1\#1.txt Error
copy Fdp1\#2.txt Error
:The_End