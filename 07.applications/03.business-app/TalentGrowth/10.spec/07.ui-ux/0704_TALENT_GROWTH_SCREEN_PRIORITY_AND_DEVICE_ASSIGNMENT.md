# TALENT GROWTH SCREEN PRIORITY AND DEVICE ASSIGNMENT

status: draft-screen-priority
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の画面群について、
優先順位、実装段階、主利用端末、重さを固定するための資料である。

# 1. 優先順位の見方
- priority A: 初期価値に直結し、最優先で必要
- priority B: 初期運用の完成度を上げる
- priority C: 高度化・分析強化
- priority D: 拡張・最適化

# 2. employee 画面優先順位

## priority A
- TG-EMP-001 employee dashboard
- TG-EMP-004 certification management
- TG-EMP-005 skill inventory
- TG-EMP-008 self review
- TG-EMP-009 my evaluation result
- TG-EMP-010 gap analysis
- TG-EMP-011 growth plan

## priority B
- TG-EMP-002 my profile
- TG-EMP-003 academic history
- TG-EMP-006 career history
- TG-EMP-007 achievement input
- TG-EMP-012 recommendation center
- TG-EMP-013 mbo linked view

## priority C
- TG-EMP-014 career simulation

# 3. manager 画面優先順位

## priority A
- TG-MGR-001 manager dashboard
- TG-MGR-002 team member list
- TG-MGR-005 review input
- TG-MGR-006 one-on-one support
- TG-MGR-007 growth plan review

## priority B
- TG-MGR-003 employee comparison
- TG-MGR-004 team skill heatmap
- TG-MGR-008 role-fit candidate view

# 4. HR 画面優先順位

## priority A
- TG-HR-001 HR dashboard
- TG-HR-002 cycle control
- TG-HR-003 role requirement management
- TG-HR-004 template management
- TG-HR-007 calibration board
- TG-HR-013 audit log viewer

## priority B
- TG-HR-005 skill dictionary management
- TG-HR-006 certification master management
- TG-HR-008 evaluator bias analysis
- TG-HR-009 distribution analytics

## priority C
- TG-HR-010 9box / HR portfolio
- TG-HR-011 successor management
- TG-HR-012 training / investment analysis

# 5. executive 画面優先順位

## priority B
- TG-EXE-001 executive dashboard
- TG-EXE-002 org talent summary

## priority C
- TG-EXE-003 successor pipeline
- TG-EXE-004 investment and growth view

# 6. admin 画面優先順位

## priority A
- TG-ADM-001 user / role management
- TG-ADM-002 organization / scope control

## priority B
- TG-ADM-005 integration settings

## priority C
- TG-ADM-003 localization settings
- TG-ADM-004 currency / reporting settings
- TG-ADM-006 AI assist settings

# 7. 端末割当

## smartphone primary
- TG-GLOBAL-002 home / navigation hub
- TG-GLOBAL-003 notification center
- TG-EMP-001 employee dashboard
- TG-EMP-004 certification management
- TG-EMP-005 skill inventory
- TG-EMP-008 self review
- TG-EMP-011 growth plan
- TG-EMP-012 recommendation center

## tablet primary
- TG-MGR-005 review input
- TG-MGR-006 one-on-one support
- TG-MGR-007 growth plan review
- TG-MGR-003 employee comparison
- TG-HR-007 calibration board simple mode

## PC primary
- TG-HR-001 HR dashboard
- TG-HR-002 cycle control
- TG-HR-003 role requirement management
- TG-HR-004 template management
- TG-HR-008 evaluator bias analysis
- TG-HR-009 distribution analytics
- TG-HR-010 9box / HR portfolio
- TG-HR-011 successor management
- TG-HR-012 training / investment analysis
- TG-HR-013 audit log viewer
- TG-EXE-001 executive dashboard
- TG-EXE-002 org talent summary
- TG-EXE-003 successor pipeline
- TG-EXE-004 investment and growth view

# 8. 実装段階

## phase A
- login / home / notification
- employee dashboard
- certification management
- skill inventory
- self review
- my evaluation result
- gap analysis
- growth plan
- manager dashboard
- team member list
- review input
- one-on-one support
- growth plan review
- HR dashboard
- cycle control
- role requirement management
- template management
- calibration board
- audit log viewer
- user / role management
- organization / scope control

## phase B
- my profile
- academic history
- career history
- achievement input
- recommendation center
- mbo linked view
- employee comparison
- team skill heatmap
- skill dictionary management
- certification master management
- evaluator bias analysis
- distribution analytics
- executive dashboard
- org talent summary
- integration settings

## phase C
- role-fit candidate view
- 9box / HR portfolio
- successor management
- training / investment analysis
- successor pipeline
- investment and growth view
- localization settings
- currency / reporting settings
- career simulation

## phase D
- AI assist settings
- advanced comparative modes
- advanced exports
- optimization for overseas operation

# 9. 重さ区分

## light
- login
- notification center
- my profile
- certification management
- skill inventory

## medium
- self review
- my evaluation result
- gap analysis
- growth plan
- team member list
- review input

## heavy
- employee comparison
- team skill heatmap
- calibration board
- evaluator bias analysis
- distribution analytics
- 9box / HR portfolio
- successor management
- training / investment analysis
- executive analytics views

# 10. 設計判断
- smartphone first は employee flow に置く
- tablet strong は manager review / 1on1 に置く
- PC heavy は HR / executive / admin analysis に置く
- 高負荷分析画面は phase A に入れない
- ただし監査ログと校正ボードは初期から必須とする

# 11. 結論
TalentGrowth の画面優先順位は、
employee self-update / manager review / HR governance を
最初の中核に置く。

その上で、
比較、分析、後継者、投資、AI補助を
段階的に拡張する構成で固定する。
