cd D:\New folder\ssl

:: Save the day, month and year in variables
For /F "Tokens=2,3,4 Delims= \" %%a in ('Date /T') Do Set day=%%a & Set month=%%b & Set year=%%c
:: Create directory
MkDir "D:\new-dump-destination\db-%day%-%month%-%year%"

pabot --processes 2 --outputdir  MkDir "D:\new-dump-destination\db-%day%-%month%-%year%" .\Testcases\*.robot