# TALENT GROWTH SCREEN FLOW AND NAVIGATION

status: draft-screen-flow
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の主要画面遷移と、
役割別の中核導線を固定するための資料である。

前提:
- 共通部品設計は対象外
- TalentGrowth 本体画面責務のみを扱う
- 多言語対応
- 多通貨対応
- iPhone / Android / PC / タブレット対応

# 1. ナビゲーション設計原則
- 役割別に入口を分ける
- どの主要導線でも current state -> evidence -> action に戻れる
- 評価と成長計画を分断しない
- 重要アラートから直接対象画面へ遷移できる
- 承認 / 差戻し / 校正は一覧と個票を往復できる

# 2. グローバル導線

## 2-1. ログイン後の初期遷移
- login
  -> home / navigation hub
  -> role-based dashboard

## 2-2. 通知起点導線
- notification center
  -> self review
  -> review input
  -> certification management
  -> calibration board
  -> audit log viewer
  -> growth plan review

## 2-3. 検索起点導線
- global search
  -> employee detail context
  -> evaluation result
  -> certification detail
  -> skill detail
  -> growth plan
  -> audit detail

# 3. employee 導線

## 3-1. employee 基本導線
- employee dashboard
  -> my profile
  -> academic history
  -> certification management
  -> skill inventory
  -> career history
  -> achievement input

## 3-2. employee 評価導線
- employee dashboard
  -> self review
  -> submit self review
  -> waiting status
  -> my evaluation result
  -> gap analysis
  -> growth plan
  -> recommendation center

## 3-3. employee 目標 / キャリア導線
- employee dashboard
  -> mbo linked view
  -> gap analysis
  -> growth plan
  -> career simulation
  -> target role / target grade update

## 3-4. employee 資格期限導線
- employee dashboard
  -> certification management
  -> expiring certifications
  -> renewal record
  -> renewal plan
  -> growth plan

# 4. manager 導線

## 4-1. manager 基本導線
- manager dashboard
  -> team member list
  -> employee comparison
  -> team skill heatmap

## 4-2. manager 評価導線
- manager dashboard
  -> review queue
  -> review input
  -> evidence confirmation
  -> approve or send back
  -> growth plan review

## 4-3. manager 面談導線
- manager dashboard
  -> team member list
  -> one-on-one support
  -> growth plan review
  -> next action setting
  -> follow-up reminder

## 4-4. manager 配置 / 昇格導線
- manager dashboard
  -> role-fit candidate view
  -> candidate comparison
  -> HR share
  -> growth plan adjustment

# 5. HR 導線

## 5-1. HR 運用導線
- HR dashboard
  -> cycle control
  -> reminder / deadline operation
  -> cycle publication
  -> cycle closure

## 5-2. HR 要件 / テンプレート導線
- HR dashboard
  -> role requirement management
  -> template management
  -> skill dictionary management
  -> certification master management

## 5-3. HR 校正導線
- HR dashboard
  -> calibration board
  -> evaluator bias analysis
  -> adjustment registration
  -> approval / publication

## 5-4. HR 分析導線
- HR dashboard
  -> distribution analytics
  -> 9box / HR portfolio
  -> successor management
  -> training / investment analysis

## 5-5. HR 監査導線
- HR dashboard
  -> audit log viewer
  -> filter / trace
  -> export
  -> audit follow-up

# 6. executive 導線

## 6-1. executive 基本導線
- executive dashboard
  -> org talent summary
  -> successor pipeline
  -> investment and growth view

## 6-2. executive 意思決定補助導線
- executive dashboard
  -> org talent summary
  -> critical role shortage detail
  -> successor pipeline
  -> HR follow-up request

# 7. admin 導線

## 7-1. admin 運用導線
- admin dashboard equivalent
  -> user / role management
  -> organization / scope control
  -> localization settings
  -> currency / reporting settings
  -> integration settings
  -> AI assist settings

# 8. 代表画面遷移

## 8-1. 自己評価提出まで
- employee dashboard
  -> self review
  -> evidence attach
  -> submit
  -> waiting status

## 8-2. 上長レビュー確定まで
- manager dashboard
  -> review input
  -> evidence confirmation
  -> manager comment
  -> approve or send back

## 8-3. 校正から公開まで
- HR dashboard
  -> calibration board
  -> adjustment registration
  -> publication approval
  -> published evaluation result

## 8-4. 結果から成長計画まで
- my evaluation result
  -> gap analysis
  -> recommendation center
  -> growth plan
  -> progress update

## 8-5. 資格期限アラートから更新まで
- notification center
  -> certification management
  -> renewal record
  -> renewal plan
  -> cost linkage if needed

## 8-6. 後継者候補抽出まで
- HR dashboard
  -> 9box / HR portfolio
  -> successor management
  -> candidate detail
  -> growth plan linkage

# 9. 遷移制御ルール
- 未権限画面には直接遷移不可
- 未提出状態では確定結果画面の一部を制限可能
- 差戻し中は submit before state に戻す
- 校正中は edit scope を制限する
- 公開後の修正は reopen flow を通す
- AI提案は reference panel 経由のみ閲覧可能にする

# 10. 画面間の必須相互リンク
- employee dashboard <-> self review
- my evaluation result <-> gap analysis
- gap analysis <-> growth plan
- growth plan <-> recommendation center
- review input <-> evidence confirmation
- calibration board <-> evaluator bias analysis
- distribution analytics <-> 9box / HR portfolio
- successor management <-> role-fit candidate view
- audit log viewer <-> evaluation result context

# 11. 端末別遷移密度方針

## smartphone
- 直線導線を優先
- 深い比較画面は簡略版
- 行動起点のショートカットを前面表示

## tablet
- 面談 / レビュー / 比較の往復導線を強化
- 2画面比較を許容する

## PC
- 一覧 -> 詳細 -> 比較 -> 出力 の往復導線を強化
- HR / executive / admin の複数操作を並列で処理できる構成にする

# 12. 結論
TalentGrowth の画面遷移は、
単なるメニュー遷移ではなく、
評価、証拠、成長、校正、分析が
相互に往復できる構造として固定する。

中核導線は常に次である。
- current state
- evidence
- decision
- growth action
- follow-up
