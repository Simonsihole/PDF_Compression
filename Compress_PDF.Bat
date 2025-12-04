@echo off
echo Compressing all PDF files in this folder...
echo (Original files will be replaced!)
echo ----------------------------------

for %%f in (*.pdf) do (
    echo Compressing %%f ...
    gswin64c.exe -sDEVICE=pdfwrite -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile="temp_%%f" "%%f"
    if exist "temp_%%f" (
        move /Y "temp_%%f" "%%f" >nul
        echo Done: %%f
    ) else (
        echo ERROR compressing %%f
    )
)

echo ----------------------------------
echo Finished compressing all PDFs.
pause
