@Echo off
Fdp4\Make.exe > Fdp4\input.txt
Echo Make done
Fdp4\test.exe < Fdp4\input.txt > Fdp4\test.txt
Echo #1 done
Fdp4\true.exe < Fdp4\input.txt > Fdp4\true.txt
Echo #2 done
Need\tidy.exe < Fdp4\test.txt > Fdp4\#1.txt
Need\tidy.exe < Fdp4\true.txt > Fdp4\#2.txt
Echo tidy done
fc Fdp4\#1.txt Fdp4\#2.txt
if errorlevel = 1 goto ERROR
Echo -+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-
Fdp4\Make.exe > Fdp4\input.txt
Echo Make done
Fdp4\test.exe < Fdp4\input.txt > Fdp4\test.txt
Echo #1 done
Fdp4\true.exe < Fdp4\input.txt > Fdp4\true.txt
Echo #2 done
Need\tidy.exe < Fdp4\test.txt > Fdp4\#1.txt
Need\tidy.exe < Fdp4\true.txt > Fdp4\#2.txt
Echo tidy done
fc Fdp4\#1.txt Fdp4\#2.txt
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
copy Fdp4\input.txt Error
copy Fdp4\#1.txt Error
copy Fdp4\#2.txt Error
:The_End