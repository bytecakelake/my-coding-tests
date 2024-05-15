@echo off
set problem_id=%1
set directory_name="PID-%problem_id%"
set create_python=true
set create_swift=true
set create_cpp=false
set nomal_comment=BOJ Problem No.%problem_id% :: Created at %date% %time% :: link https://www.acmicpc.net/problem/%problem_id%

if "%problem_id%"=="" (
    echo Please input problem id.
)
echo Problem id: %problem_id%

if exist "%directory_name%" (
    echo Directory %directory_name% already exists.
)
if not exist "%directory_name%" (
    echo Create directory %directory_name%
    mkdir "%directory_name%"
)

if "%create_python%"=="true" (
    if exist "%directory_name%/main.py" (
        echo "main.py already exists."
    )
    if not exist "%directory_name%/main.py" (
        echo Create main.py
        echo ## %nomal_comment% >> "%directory_name%/main.py"
    )
)

if "%create_swift%"=="true" (
    if exist "%directory_name%/main.swift" (
        echo main.swift already exists.
    )
    if not exist "%directory_name%/main.swift" (
        echo Create main.swift
        echo // %nomal_comment% >> "%directory_name%/main.swift"
    )
)

if "%create_cpp%"=="true" (
    if exist "%directory_name%/main.cpp" (
        echo main.cpp already exists.
    )
    if not exist "%directory_name%/main.cpp" (
        echo Create main.cpp
        echo // %nomal_comment% >> "%directory_name%/main.cpp"
    )
)



