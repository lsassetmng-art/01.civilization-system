# TALENT GROWTH DESIGN DECISION NOTE
# WRITE SERVICE REPO FIXED

status: draft-decision-note
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. decision
TalentGrowth では、
phase A route/seed/smoke 固定の次に、
phase A write route skeleton,
phase A service layer skeleton,
phase A repository query skeleton
を固定した。

# 1. meaning
- read stub から write 骨格へ進めた
- route / service / repository の責務境界を固定した
- audit / outbox / lock_version を write flow の標準にした

# 2. fixed focus
- 0814 phase A write route skeleton
- 1200013 phase A service layer skeleton
- 1200014 phase A repository query skeleton

# 3. next candidate
次の深掘り候補は以下である。
- phase A validation function skeleton fixed
- phase A outbox publisher job skeleton fixed
- phase A notification read/write implementation block fixed
