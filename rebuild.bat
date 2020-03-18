rmdir /s/q temp output build
REM Build the Sushi output
call sushi . -o .
REM Fix the ig.ini file
copy ig-data\ig.ini .
REM Generate the output
_genonce