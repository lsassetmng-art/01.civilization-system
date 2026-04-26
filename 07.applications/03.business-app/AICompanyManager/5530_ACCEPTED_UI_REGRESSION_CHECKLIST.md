# AICompanyManager Accepted UI Regression Checklist

phase: Phase BW-BX
status: accepted-ui-regression-checklist

## 1. top-level screens

維持必須:
- AI企業ダッシュボード
- 部門別タスク台帳
- レビュー・承認待ち一覧

表示しない:
- AI企業設定 top tab
- 会社共通ルール top tab
- 仕事操作 top tab
- 部門受信箱 top tab
- CSV作成テンプレ top tab
- 引き継ぎ top tab

## 2. dashboard routes

維持必須:
- AI企業設定
- AI企業新規追加
- 部門詳細
- 部門 新規追加
- 組織詳細
- 組織 新規追加

## 3. department

維持必須:
- 部門追加だけ別画面
- 部門詳細で選択・表示・変更・削除

## 4. organization

維持必須:
- 組織追加だけ別画面
- 組織詳細で選択・表示・変更・削除・ロボット配置変更

## 5. technical

維持必須:
- index.html script count = 1
- MutationObserverなし
- real API networkなし
