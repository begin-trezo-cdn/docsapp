@ECHO OFF

REM Command file for Sphinx documentation

set SPHINXBUILD=sphinx-build
set BUILDDIR=build
set ALLSPHINXOPTS=-d %BUILDDIR%/doctrees source

if "%1" == "" goto help

if "%1" == "html" (
    %SPHINXBUILD% -b html %ALLSPHINXOPTS% %BUILDDIR%/html
    if errorlevel 1 exit /b 1
    echo.
    echo.Build finished. The HTML pages are in %BUILDDIR%/html.
    goto end
)

:help
echo.Please use `make.bat <target>` where <target> is one of
echo.  html      to make standalone HTML files
goto end

:end