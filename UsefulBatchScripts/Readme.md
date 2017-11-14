#Naming
If the batch file starts with "USB", it is meant to be on the USB.
If the name has "_C" in it, it cleans or is a clean operation.
Cleaning refers to code with NO EXTRA GENERATED CONTENT. This is 
	the base source code that is needed to build the project.
If the name has "_D" in it, it is a dirty operation.
Dirty refers to code with generated content, such as EXEs or IPCH files.
**DO NOT SUBMIT DIRTY CODE**.

The Local batch files clean %USERPROFILE%/Documents/Visual Studio 2017/Projects/*.
	This removes .pdb, .exe, .ipch, .dll, etc.
	
	
If you want to make your own script, here are some useful variables:
%USERPROFILE% = "C:/Users/(Current user)/"
%~dp0 = path to batch file, no quotes.
REM ... is a comment!

for /D %%d IN (pathd) do (
REM %%d is the path of a subdirectory of pathd.

REM change directory to %%d even if it is on another drive. (/D)
cd /D %%d 

)
Note those are PARENTHESES.