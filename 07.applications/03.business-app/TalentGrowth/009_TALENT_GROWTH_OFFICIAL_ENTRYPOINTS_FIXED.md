# TALENT GROWTH OFFICIAL ENTRYPOINTS FIXED

status: official-entrypoints-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
formal_name_en: Talent Growth Support & Evaluation System
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
TalentGrowth の root 直下にある入口群のうち、
どれを正式入口として扱うかを固定するための資料である。

# 1. official root entrypoints
正式入口は以下とする。

1. 000_TALENT_GROWTH_DESIGN_INDEX.md
2. 001_TALENT_GROWTH_DESIGN_OVERVIEW.md
3. 00_TALENT_GROWTH_INTEGRATED_MASTER_REBUILT.md
4. 006_TALENT_GROWTH_IMPLEMENTATION_HANDOFF_FIXED.md
5. 007_TALENT_GROWTH_CANONICAL_HANDOFF_REFRESH.md
6. 008_TALENT_GROWTH_SINGLE_FILE_CANONICAL_HANDOFF.md
7. 009_TALENT_GROWTH_OFFICIAL_ENTRYPOINTS_FIXED.md

# 2. role of each file

## 000_TALENT_GROWTH_DESIGN_INDEX.md
- 全体索引
- root から各設計束へ辿るための最上位 index

## 001_TALENT_GROWTH_DESIGN_OVERVIEW.md
- システムの全体像
- 設計意図、範囲、価値、原則の把握

## 00_TALENT_GROWTH_INTEGRATED_MASTER_REBUILT.md
- ここまで積み上げた設計の統合版
- screen / API / data / RLS / ops / formula / implementation を横断把握する入口

## 006_TALENT_GROWTH_IMPLEMENTATION_HANDOFF_FIXED.md
- 実装開始順
- phase A の着手順
- non-negotiables

## 007_TALENT_GROWTH_CANONICAL_HANDOFF_REFRESH.md
- 旧 handoff を整理した最新 handoff 正本
- 旧設計との差分整理

## 008_TALENT_GROWTH_SINGLE_FILE_CANONICAL_HANDOFF.md
- 1ファイルだけで再開するための最短入口
- 別チャット再開時の第一候補

## 009_TALENT_GROWTH_OFFICIAL_ENTRYPOINTS_FIXED.md
- 正式入口そのものの固定
- 読む順番と役割の確認

# 3. recommended reading order

## 3-1. shortest restart path
最短再開順:
1. 008_TALENT_GROWTH_SINGLE_FILE_CANONICAL_HANDOFF.md
2. 006_TALENT_GROWTH_IMPLEMENTATION_HANDOFF_FIXED.md

## 3-2. full design understanding path
全体把握順:
1. 001_TALENT_GROWTH_DESIGN_OVERVIEW.md
2. 00_TALENT_GROWTH_INTEGRATED_MASTER_REBUILT.md
3. 000_TALENT_GROWTH_DESIGN_INDEX.md

## 3-3. implementation kickoff path
実装着手順:
1. 006_TALENT_GROWTH_IMPLEMENTATION_HANDOFF_FIXED.md
2. 1200008_TALENT_GROWTH_PHASE_A_ACTUAL_EXECUTION_ONE_BLOCK_FIXED.md
3. 1200007_TALENT_GROWTH_PHASE_A_IMPLEMENTATION_COMMAND_BLOCK_FIXED.md
4. 1200010_TALENT_GROWTH_PHASE_A_ACTUAL_ROUTE_FILE_ONE_BLOCK_FIXED.md
5. 1200011_TALENT_GROWTH_PHASE_A_SEED_INSERT_ONE_BLOCK_FIXED.md
6. 1200012_TALENT_GROWTH_PHASE_A_SMOKE_TEST_COMMAND_BLOCK_FIXED.md

# 4. deprecated handling
以下は正式入口ではない。

- 旧 TalentGrowthEvaluation 系
- 旧 handoff の途中段階メモ
- 90.meta 配下の decision note 単体
- duplicate-check 作業ファイル単体

これらは補助・履歴・整理用であり、
restart first read の対象ではない。

# 5. conclusion
TalentGrowth の root 直下では、
000 / 001 / 00 / 006 / 007 / 008 / 009 を正式入口群として扱い、
再開最短入口は 008 とする。
