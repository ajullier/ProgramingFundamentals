@echo off
setlocal enabledelayedexpansion

rem Simulate a while cicle with START and goto.
:START
set /p N=Enter the number of inputs: 

if %N% LSS 1 (
    echo Must be greater than or equal to 1
    goto START
)

rem Initialize variables
set /p number=Enter first number: 

rem Loop/for cicle from 2 to N
for /l %%i in (2,1,%N%) do (
    set /p actualNumber=Enter number %%i: 
    set /a number= number + actualNumber
)

rem Print the sums of all elements
echo The sums of all numbers is !number!
