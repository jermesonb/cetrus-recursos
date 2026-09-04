@echo off
title Atualizar Dashboard

echo.
echo ========================================
echo       ATUALIZANDO DASHBOARD
echo ========================================
echo.

"C:\Program Files\Git\bin\bash.exe" -c "cd '/c/Users/%USERNAME%/Documents/Project/Agendamento de Recursos Extras' && echo 'Pasta encontrada!' && echo && echo '[1/4] Verificando alteracoes...' && git status --short && echo && git add . && git diff --cached --quiet && echo 'Nenhuma alteracao nova para enviar.' || (echo '[2/4] Criando commit...' && git commit -m \"atualizacao dash $(date '+%%d/%%m/%%Y %%H:%%M')\") && echo && echo '[3/4] Atualizando repositorio...' && git pull --rebase && echo && echo '[4/4] Enviando para GitHub...' && git push -u origin main && echo && echo '========================================' && echo '   DASHBOARD ATUALIZADO COM SUCESSO!' && echo '========================================'"

echo.
pause