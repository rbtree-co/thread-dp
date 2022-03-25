@Echo off
Fdp5\Make.exe > Fdp5\input.txt
Echo Make done
Fdp5\test.exe < Fdp5\input.txt > Fdp5\test.txt
Echo #1 done
Fdp5\true.exe < Fdp5\input.txt > Fdp5\true.txt
Echo #2 done
Need\tidy.exe < Fdp5\test.txt > Fdp5\#1.txt
Need\tidy.exe < Fdp5\true.txt > Fdp5\#2.txt
Echo tidy done
fc Fdp5\#1.txt Fdp5\#2.txt
if errorlevel = 1 goto ERROR
Echo -+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-
Fdp5\Make.exe > Fdp5\input.txt
Echo Make done
Fdp5\test.exe < Fdp5\input.txt > Fdp5\test.txt
Echo #1 done
Fdp5\true.exe < Fdp5\input.txt > Fdp5\true.txt
Echo #2 done
Need\tidy.exe < Fdp5\test.txt > Fdp5\#1.txt
Need\tidy.exe < Fdp5\true.txt > Fdp5\#2.txt
Echo tidy done
fc Fdp5\#1.txt Fdp5\#2.txt
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
copy Fdp5\input.txt Error
copy Fdp5\#1.txt Error
copy Fdp5\#2.txt Error
:The_End