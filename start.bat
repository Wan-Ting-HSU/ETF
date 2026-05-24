@echo off
echo ===================================================
echo   美股產業資金流向追蹤 - Local Server
echo ===================================================
echo.
echo 正在啟動本機伺服器以解決 CORS 限制...
echo.
echo 如果瀏覽器沒有自動開啟，請手動前往:
echo http://localhost:8080
echo.
echo [提示] 請保持此視窗開啟，關閉此視窗即關閉伺服器。
echo ===================================================

:: 開啟預設瀏覽器
start http://localhost:8080

:: 啟動 Python 內建 HTTP 伺服器
python -m http.server 8080

pause
