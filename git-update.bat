@echo off
:: Get current DIRECTORY
for %%I in (.) do set CurrDirName=%%~nxI

:: Pull down latest version of the files first
echo.
echo ################################################################
echo        Making sure the latest files are downloaded...
echo ################################################################
echo.
git pull origin master

:: Add all changes to the git commit
echo.
echo ################################################################
echo            Adding all changes to the repository...
echo ################################################################
echo.
git add --all .

:: Add commit message
echo.
echo ################################################################
echo          Write your commit comment for %CurrDirName%!
echo ################################################################
echo.
set /p commit_message=""
echo.

:: Commit the changes
git commit -m "%commit_message%"

:: Push the changes to the remote repository
echo.
echo ################################################################
echo          Pushing changes to the remote repository...
echo ################################################################
echo.
git push -fu origin master

echo ################################################################
echo ###################    Git Push Done      ######################
echo ################################################################