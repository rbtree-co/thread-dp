@Echo off
Fdp2\Make.exe > Fdp2\input.txt
Echo Make done
Fdp2\test.exe < Fdp2\input.txt > Fdp2\test.txt
Echo #1 done
Fdp2\true.exe < Fdp2\input.txt > Fdp2\true.txt
Echo #2 done
Need\tidy.exe < Fdp2\test.txt > Fdp2\#1.txt
Need\tidy.exe < Fdp2\true.txt > Fdp2\#2.txt
Echo tidy done
fc Fdp2\#1.txt Fdp2\#2.txt
if errorlevel = 1 goto ERROR
Echo -+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-
Fdp2\Make.exe > Fdp2\input.txt
Echo Make done
Fdp2\test.exe < Fdp2\input.txt > Fdp2\test.txt
Echo #1 done
Fdp2\true.exe < Fdp2\input.txt > Fdp2\true.txt
Echo #2 done
Need\tidy.exe < Fdp2\test.txt > Fdp2\#1.txt
Need\tidy.exe < Fdp2\true.txt > Fdp2\#2.txt
Echo tidy done
fc Fdp2\#1.txt Fdp2\#2.txt
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
copy Fdp2\input.txt Error
copy Fdp2\#1.txt Error
copy Fdp2\#2.txt Error
:The_End