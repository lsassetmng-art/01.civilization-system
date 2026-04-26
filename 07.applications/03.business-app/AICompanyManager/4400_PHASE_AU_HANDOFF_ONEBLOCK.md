# ============================================================
# AICompanyManager 引き継ぎワンブロック
# Phase AU / Accepted UI Handoff
# ============================================================

対象:
- AICompanyManager
- BusinessOS app
- 01設計: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager
- 03実装: /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager

現在状態:
- 画面構成: OK
- Phase AQ: pre-push validation PASS
- Phase AR: push sync 実施
- Phase AS: final push verify PASS
- 01 design: PUSH_SYNCED 確認済み
- 03 implementation: PUSH_SYNCED 確認済み
- 現在の設計HEAD: 8d56d65c
- 現在の実装HEAD: 834269d

受入済みトップ画面:
- AI企業ダッシュボード
- 部門別タスク台帳
- レビュー・承認待ち一覧

AI企業ダッシュボード:
- トップページ
- AI企業選択可能
- 会社概要を表示
- 会社概要右下に AI企業設定 / AI企業新規追加 ボタン
- 部門一覧を表示
- 部門一覧右下に 部門詳細 / 新規追加 ボタン
- 組織一覧を表示
- 組織一覧右下に 組織詳細 / 新規追加 ボタン
- 操作入口を表示

AI企業設定:
- トップタブには出さない
- AI企業ダッシュボードの会社概要から開く
- 会社変更
- 会社削除
- 会社共通ルール管理
- 会社新規追加は別画面

AI企業新規追加:
- 会社追加専用の別画面
- 新規会社は departments=[] でも作成可能
- 作成後、部門追加へ進める

部門:
- 分離するのは部門追加画面のみ
- 部門詳細で部門選択・表示・変更・削除を行う
- 新規会社で部門が0件でも部門追加へ進める

組織:
- 分離するのは組織追加画面のみ
- 組織詳細で組織選択・表示・変更・削除・ロボット配置変更を行う
- 組織追加には部門が必要
- 部門がない場合は部門追加へ誘導する

部門別タスク台帳:
- Manager受領台帳
- 台帳一覧
- 台帳追加
- 台帳変更
- 台帳削除
- CSV操作
  - プレビュー
  - 取り込み
  - 作成テンプレ
  - ChatGPT用CSV作成プロンプトコピー
- Manager/Leader/Worker の分解・割当・成果物作成は自動処理で、通常ユーザー操作画面は不要

レビュー・承認待ち一覧:
- AI自動レビュー後の納品候補を表示
- 人間は最終承認・差し戻しのみ行う

重要ルール:
- 会社共通ルールを会社レベルの単一ルール箱とする
- 設計開発規約欄は独立させない
- 会社共通ルールに会社規約、設計開発ルール、品質基準、禁止事項、納品基準、ワンブロック規約を含める
- 仕事パケット独立画面は不要
- 部門受信箱独立画面は不要
- CSV作成テンプレ独立画面は不要
- 引き継ぎ独立画面は不要
- MutationObserverは使わない
- index.html は accepted UI JS 1本だけを読む

現在の実装正本:
- /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/index.html
- /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/assets/js/phase-ao-add-only-split-ui.js
- /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/assets/css/phase-ao-add-only-split-ui.css

現在の設計正本:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/3910_ACCEPTED_SCREEN_NAVIGATION_CANON.md
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/3990_PHASE_AP_SCREEN_ACCEPTANCE_COMPLETION_REPORT.md
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/4000_PHASE_AQ_PRE_PUSH_VALIDATION_REPORT.md
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/4100_PHASE_AR_PUSH_SYNC_REPORT.md
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/4200_PHASE_AS_FINAL_PUSH_VERIFY_REPORT.md
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/4300_PHASE_AT_FINAL_REPORT_PUSH_REPORT.md
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/4400_PHASE_AU_HANDOFF_ONEBLOCK.md

次に進む場合:
1. DB設計へ進む
2. API payload exact へ進む
3. localStorage mock から実DB連携設計へ進む
4. UIの細部 polish へ進む
5. AI自動処理ログ / 監査ログ設計へ進む

禁止・注意:
- DB WRITE: 未実行
- RLS APPLY: 未実行
- LIVE AIWORKEROS CALL: 未実行
- 本チャットの実装はHTML/JS/CSS mock中心
- 実DB適用前には別途DB設計レビューが必要
# ============================================================
