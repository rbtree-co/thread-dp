@Echo off
Fdp3\Make.exe > Fdp3\input.txt
Echo Make done
Fdp3\test.exe < Fdp3\input.txt > Fdp3\test.txt
Echo #1 done
Fdp3\true.exe < Fdp3\input.txt > Fdp3\true.txt
Echo #2 done
Need\tidy.exe < Fdp3\test.txt > Fdp3\#1.txt
Need\tidy.exe < Fdp3\true.txt > Fdp3\#2.txt
Echo tidy done
fc Fdp3\#1.txt Fdp3\#2.txt
if errorlevel = 1 goto ERROR
Echo -+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-
Fdp3\Make.exe > Fdp3\input.txt
Echo Make done
Fdp3\test.exe < Fdp3\input.txt > Fdp3\test.txt
Echo #1 done
Fdp3\true.exe < Fdp3\input.txt > Fdp3\true.txt
Echo #2 done
Need\tidy.exe < Fdp3\test.txt > Fdp3\#1.txt
Need\tidy.exe < Fdp3\true.txt > Fdp3\#2.txt
Echo tidy done
fc Fdp3\#1.txt Fdp3\#2.txt
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
copy Fdp3\input.txt Error
copy Fdp3\#1.txt Error
copy Fdp3\#2.txt Error
:The_End