# TALENT GROWTH DESIGN DECISION NOTE
# DBCLIENT TRANSACTION SMOKE FIXED

status: draft-decision-note
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. decision
TalentGrowth では、
service/repo/validation actual fixed の次に、
phase A DB client helper block,
phase A transaction-aware repository actual block,
phase A compile/run smoke command block
を固定した。

# 1. meaning
- DB access 共通入口を固定した
- tx-aware repository の形を固定した
- compile/run/smoke の最初の実行束を固定した

# 2. fixed focus
- 1200026 phase A DB client helper block
- 1200027 phase A transaction-aware repository actual block
- 1200028 phase A compile/run smoke command block

# 3. next candidate
次の深掘り候補は以下である。
- phase A end-to-end kickoff one-block fixed
- phase A request fixture file block fixed
- phase A route/service/repository actual integrated block fixed
