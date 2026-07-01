# JustPlay Game QA

Hi-Health JustPlay 專案的 QA 測試紀錄與報告。

## 內容結構

```
justplay_game_qa/
├── README.md           ← 本檔
├── push.sh             ← 一鍵 push 到 GitHub 的腳本
└── sprint-12/
    └── report.html     ← Sprint 12 QA 報告（可互動：手動 checkbox / 備註 / 匯出 markdown）
```

## 使用方式

### 開啟報告

直接雙擊 `sprint-12/report.html`，用瀏覽器開。

報告特色：
- **10 張 RFT 單票結果**：每張可展開看 AC 逐條驗收
- **兩層手動勾選**：整張票 + 每條 AC 都有 checkbox 和備註欄
- **本機自動儲存**：localStorage 存所有勾選與備註（同瀏覽器下次打開會帶回來）
- **匯出給 Claude**：markdown 格式，可複製到剪貼簿或下載 .md 檔

### 每個 Sprint 的產出物

每個 sprint 一個資料夾 `sprint-XX/`，內含：
- `report.html` — 互動式 QA 報告
- `evidence/` — 測試截圖（若有）
- `manual-notes-YYYYMMDDHHMM.md` — 從報告匯出的手動測試紀錄快照

## 依循規範

- SOP：[hi-health-qa-sop](../..) v1.2（Alice 私人 skill）
- 測試基準商品：[Confluence 157319178](https://hihealthtw.atlassian.net/wiki/spaces/JP1/pages/edit-v2/157319178) QA-A ~ QA-F
- 相關 Jira 專案：[JUSTPLAY](https://hihealthtw.atlassian.net/browse/JUSTPLAY)

## Sprint 索引

| Sprint | 期間 | 收 sprint 決議 | 主要 findings |
|---|---|---|---|
| 12 | 2026-06-16 ~ 2026-07-01 | 🔴 不建議 | 285 分頁 FAIL / 307 未修 / 新開 P1 admin 互動失效 |

---

Owner：Alice Liao · PM Lead
