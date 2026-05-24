# 美股產業資金流向追蹤 (US Stock ETF Flow Tracker)

這是一個純前端網頁應用程式，用於追蹤美股主要產業 ETF 的每日變化，掌握大盤資金動向與強弱趨勢。

## ✨ 主要特色

*   **📊 即時資金流向分析**：自動計算各 ETF 相對大盤 (SPY) 的強弱，標示資金流入/流出狀態。
*   **🔥 市場熱力儀表板**：顯示 Top 5 強勢與 Bottom 5 弱勢 ETF，以及六大板塊的平均強弱熱力圖。
*   **⚖️ 市場情緒指標**：半圓形儀表板顯示市場多空比。
*   **📈 迷你火花走勢圖**：卡片內嵌即時的微型走勢模擬。
*   **🎨 現代化 UI 設計**：動態星空背景、玻璃擬態 (Glassmorphism) 卡片設計，與流暢的 hover 動畫。

## 🚀 如何使用 (重要：解決 CORS 問題)

由於瀏覽器的安全限制 (CORS)，無法直接點擊打開 `index.html` (即 `file://` 協議) 來呼叫外部 API。**必須透過本機伺服器 (Local Server) 啟動。**

### Windows 用戶 (一鍵啟動)
1. 確認電腦已安裝 **Python 3**。
2. 雙擊執行 `start.bat`。
3. 腳本會自動啟動本機伺服器，並用預設瀏覽器打開 `http://localhost:8080`。

### macOS / Linux 或手動啟動
打開終端機 (Terminal)，進入此專案資料夾，執行以下指令：
```bash
python3 -m http.server 8080
```
然後在瀏覽器中打開 `http://localhost:8080`。

## 🔑 設定 API Key (Financial Modeling Prep)

本專案使用 **Financial Modeling Prep (FMP) API** 獲取即時報價。

1. 前往 [FMP 官網](https://financialmodelingprep.com/developer/docs/) 註冊並取得免費的 API Key。
2. 在網頁右上角點擊 🔑 圖示，貼上您的 API Key 並儲存。
3. 儲存後，網頁會自動重新連線並抓取真實數據。

> 若未設定 API Key，或直接使用 `file://` 協議打開，系統會自動切換為**模擬數據模式**供介面預覽。

## 🛠️ 技術棧

*   **HTML5**
*   **Vanilla CSS** (包含 TailwindCSS CDN 用於輔助排版，但核心樣式手寫)
*   **Vanilla JavaScript** (無框架依賴)
