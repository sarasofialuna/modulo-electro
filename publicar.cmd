@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo Copiando las notas de Obsidian...
robocopy "C:\Users\57301\Desktop\Universidad Pedagógica Nacional-Lic en Física\9. NOVENO SEMESTRE\Tesis\OBSIDIAN\Jardin OVA" "content" /MIR /XD .obsidian Plantillas .trash /NFL /NDL /NJH /NJS /NP
echo Subiendo los cambios a GitHub...
git add -A
git commit -m "Actualizar jardin"
git push origin v5
echo.
echo Listo. En 2 o 3 minutos se actualiza la pagina.
pause