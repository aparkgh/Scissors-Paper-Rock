@echo off
color 0A
title Scissors, Paper, Rock!
cls

:namechoose
cls
echo Welcome to Scissors, Paper, Rock!
echo Press any key to begin!
pause> nul
cls

:cont
cls
echo Ok, let's begin!
echo Select a mode:
echo.
echo      [S] Singleplayer Mode (1 human, 1 computer)
echo      [M] Multiplayer Mode (2 humans)
echo.
set /p start=
if %start%== S goto singleplayer
if %start%== s goto singleplayer
if %start%== M goto multiplayer
if %start%== m goto multiplayer
goto cont
cls

:singleplayer
cls
echo Which do you choose?            [SINGLEPLAYER MODE]
echo.
echo        [S] Scissors
echo        [P] Paper
echo        [R] Rock
echo        [RA] Random
echo        [M] Menu
echo.
set /p start=
if %start%== S goto singles
if %start%== s goto singles
if %start%== P goto singlep
if %start%== p goto singlep
if %start%== R goto singler
if %start%== r goto singler
if %start%== RA goto singlera
if %start%== Ra goto singlera
if %start%== rA goto singlera
if %start%== ra goto singlera
if %start%== M goto cont
if %start%== m goto cont
cls

:singles
cls
echo You choose Scissors!
ping localhost -n 3 >nul
set /a hand=%random% %% 3
if %hand%== 0 echo Computer chooses Scissors! It's a tie!
if %hand%== 1 echo Computer chooses Paper! You win!
if %hand%== 2 echo Computer chooses Rock! You lose!
echo.
echo Press any key to go to the menu!
pause >nul
goto singleplayer
cls

:singlep
cls
echo You choose Paper!
ping localhost -n 3 >nul
set /a hand=%random% %% 3
if %hand%== 0 echo Computer chooses Scissors! You lose!
if %hand%== 1 echo Computer chooses Paper! It's a tie!
if %hand%== 2 echo Computer chooses Rock! You win!
echo.
echo Press any key to go to the menu!
pause >nul
goto singleplayer
cls

:singler
cls
echo You choose Rock!
ping localhost -n 3 >nul
set /a hand=%random% %% 3
if %hand%== 0 echo Computer chooses Scissors! You win!
if %hand%== 1 echo Computer chooses Paper! You lose!
if %hand%== 2 echo Computer chooses Rock! It's a tie!
echo.
echo Press any key to go to the menu!
pause >nul
goto singleplayer
cls

:singlera
cls
set /a hand=%random% %% 3
if %hand%== 0 goto singles
if %hand%== 1 goto singlep
if %hand%== 2 goto singler
cls

:multiplayer
cls
echo Select Player 1's name:
echo.
set /p playername1=
echo.
echo.
echo Select Player 2's name:
echo.
set /p playername2=
goto multiplayername
cls

:multiplayername
cls
echo    Player 1 named [%playername1%]
echo    Player 2 named [%playername2%]
echo.
echo     [R] Redo              [C] Confirm
echo.
echo               [M] Menu
set /p start=
if %start%== R goto multiplayer
if %start%== r goto multiplayer
if %start%== C goto multibegin
if %start%== c goto multibegin
if %start%== M goto cont
if %start%== m goto cont
cls

:multibegin
cls
echo Player 1- %playername1%
echo Make your move!
echo.
echo        [S] Scissors
echo        [P] Paper
echo        [R] Rock
echo        [RA] Random
echo.
set /p start=
if %start%== S goto multis1
if %start%== s goto multis1
if %start%== P goto multip1
if %start%== p goto multip1
if %start%== R goto multir1
if %start%== r goto multir1
if %start%== RA goto multira1
if %start%== Ra goto multira1
if %start%== rA goto multira1
if %start%== ra goto multira1
cls

:multis1
cls
echo Player 2- %playername2%
echo Make your move!
echo.
echo        [S] Scissors
echo        [P] Paper
echo        [R] Rock
echo        [RA] Random
echo.
set /p start=
if %start%== S goto multiss2
if %start%== s goto multiss2
if %start%== P goto multisp2
if %start%== p goto multisp2
if %start%== R goto multisr2
if %start%== r goto multisr2
if %start%== RA goto multisra2
if %start%== Ra goto multisra2
if %start%== rA goto multisra2
if %start%== ra goto multisra2
cls

:multiss2
cls
echo %playername1% has chose Scissors!
echo %playername2% has chose Scissors!
echo.
echo It's a tie!
echo Press any key to play again!
pause >nul
goto multibegin
cls

:multisp2
cls
echo %playername1% has chose Scissors!
echo %playername2% has chose Paper!
echo.
echo %playername1% Wins!
echo Press any key to play again!
pause >nul
goto multibegin
cls

:multisr2
echo %playername1% has chose Scissors!
echo %playername2% has chose Rock!
echo.
echo %playername2% Wins!
echo Press any key to play again!
pause >nul
goto multibegin
cls

:multisra2
cls
set /a hand=%random% %% 3
if %hand%== 0 goto multiss2
if %hand%== 1 goto multisp2
if %hand%== 2 goto multisr2
cls

:multip1
cls
echo Player 2- %playername2%
echo Make your move!
echo.
echo        [S] Scissors
echo        [P] Paper
echo        [R] Rock
echo        [RA] Random
echo.
set /p start=
if %start%== S goto multips2
if %start%== s goto multips2
if %start%== P goto multipp2
if %start%== p goto multipp2
if %start%== R goto multipr2
if %start%== r goto multipr2
if %start%== RA goto multipra2
if %start%== Ra goto multipra2
if %start%== rA goto multipra2
if %start%== ra goto multipra2
cls

:multips2
cls
echo %playername1% has chose Paper!
echo %playername2% has chose Scissors!
echo.
echo %playername2% Wins!
echo Press any key to play again!
pause >nul
goto multibegin
cls

:multipp2
cls
echo %playername1% has chose Paper!
echo %playername2% has chose Paper!
echo.
echo It's a tie!
echo Press any key to play again!
pause >nul
goto multibegin
cls

:multipr2
echo %playername1% has chose Paper!
echo %playername2% has chose Rock!
echo.
echo %playername1% Wins!
echo Press any key to play again!
pause >nul
goto multibegin
cls

:multisra2
cls
set /a hand=%random% %% 3
if %hand%== 0 goto multips2
if %hand%== 1 goto multipp2
if %hand%== 2 goto multipr2
cls

:multir1
cls
echo Player 2- %playername2%
echo Make your move!
echo.
echo        [S] Scissors
echo        [P] Paper
echo        [R] Rock
echo        [RA] Random
echo.
set /p start=
if %start%== S goto multirs2
if %start%== s goto multirs2
if %start%== P goto multirp2
if %start%== p goto multirp2
if %start%== R goto multirr2
if %start%== r goto multirr2
if %start%== RA goto multirra2
if %start%== Ra goto multirra2
if %start%== rA goto multirra2
if %start%== ra goto multirra2
cls

:multirs2
cls
echo %playername1% has chose Rock!
echo %playername2% has chose Scissors!
echo.
echo %playername1% Wins!
echo Press any key to play again!
pause >nul
goto multibegin
cls

:multirp2
cls
echo %playername1% has chose Rock!
echo %playername2% has chose Paper!
echo.
echo %playername2% Wins!
echo Press any key to play again!
pause >nul
goto multibegin
cls

:multirr2
echo %playername1% has chose Rock!
echo %playername2% has chose Rock!
echo.
echo It's a tie!
echo Press any key to play again!
pause >nul
goto multibegin
cls

:multisra2
cls
set /a hand=%random% %% 3
if %hand%== 0 goto multirs2
if %hand%== 1 goto multirp2
if %hand%== 2 goto multirr2
cls

:multira1
cls
echo Player 2- %playername2%
echo Make your move!
echo.
echo        [S] Scissors
echo        [P] Paper
echo        [R] Rock
echo        [RA] Random
echo.
set /p start=
if %start%== S goto multiras2
if %start%== s goto multiras2
if %start%== P goto multirap2
if %start%== p goto multirap2
if %start%== R goto multirar2
if %start%== r goto multirar2
if %start%== RA goto multirara2
if %start%== Ra goto multirara2
if %start%== rA goto multirara2
if %start%== ra goto multirara2
cls

:multiras2
cls
set /a hand=%random% %% 3
if %hand%== 0 goto multirs2
if %hand%== 1 goto multips2
if %hand%== 2 goto multiss2
cls

:multirap2
cls
set /a hand=%random% %% 3
if %hand%== 0 goto multirp2
if %hand%== 1 goto multipp2
if %hand%== 2 goto multisp2
cls

:multirar2
cls
set /a hand=%random% %% 3
if %hand%== 0 goto multirr2
if %hand%== 1 goto multipr2
if %hand%== 2 goto multisr2
cls

:multirara2
cls
set /a hand=%random% %% 15
if %hand%== 0 goto multiss2
if %hand%== 1 goto multisp2
if %hand%== 2 goto multisr2
if %hand%== 3 goto multisra2
if %hand%== 4 goto multips2
if %hand%== 5 goto multipp2
if %hand%== 6 goto multipr2
if %hand%== 7 goto multipra2
if %hand%== 8 goto multirs2
if %hand%== 9 goto multirp2
if %hand%== 10 goto multirr2
if %hand%== 11 goto multirra2
if %hand%== 12 goto multiras2
if %hand%== 13 goto multirap2
if %hand%== 14 goto multirar2
cls