# TALENT GROWTH LAYOUT VARIANT BY DEVICE FIXED

status: draft-layout-variant-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の主要画面について、
device 別レイアウト差分を固定するための資料である。

# 1. smartphone 基本ルール
- single column first
- sticky bottom action bar allowed
- summary first, detail collapse later
- compare / analytics は簡略版
- full calibration editing は非推奨

# 2. tablet 基本ルール
- two-column standard
- left content / right assist panel
- one-on-one, review, comparison に最適化
- manager flow を最優先

# 3. PC 基本ルール
- multi-panel allowed
- list/detail/assist の3面構成許可
- HR / executive / admin の高密度画面前提
- filter bar 常時表示可

# 4. key screen variants

## employee dashboard
smartphone:
- score row stacked
- alerts below
- actions fixed lower section
tablet:
- summary left / alerts right
pc:
- summary top / actions right / trend lower

## self review
smartphone:
- accordion editing
- sticky save/submit bar
tablet:
- left form / right evidence
pc:
- left form / center context / right warnings

## manager review input
smartphone:
- simplified but usable
tablet:
- recommended primary
pc:
- evidence + score + comment 3面

## HR dashboard
smartphone:
- summary only
tablet:
- limited operational use
pc:
- full primary

## calibration board
smartphone:
- unsupported recommended
tablet:
- reduced mode
pc:
- full primary mandatory

## executive dashboard
smartphone:
- KPI summary only
tablet:
- 2-column summary
pc:
- full strategic view

## audit log viewer
smartphone:
- unsupported recommended
tablet:
- list/detail possible
pc:
- full primary

# 5. responsive breakpoint stance
exact pixel rule is implementation concern,
but semantic breakpoints are fixed as:
- phone compact
- tablet medium
- desktop wide

# 6. 結論
TalentGrowth の device variant は、
employee mobile-first,
manager tablet-strong,
HR/executive/admin PC-primary
で固定する。
