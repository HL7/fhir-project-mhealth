rmdir /s/q temp output build
REM Build the source
call mvn compile package
REM Run it over the data
"%JAVA_HOME%\bin\java" -cp target\mhealth-ade.jar;target\lib\* org.hl7.mhealth.ade.Convert 10_functional_requirements 2>errs.log
REM Build the Sushi output
call sushi . -o .
REM Fix the ig.ini file
copy ig-data\ig.ini .
REM Generate the output
_genonce