# ============================================================
# TRAINING COACH DESIGN CLOSURE NOTE
# ============================================================

status: canonical-draft
phase: design-closure
system: TrainingCoach
layer: 130.development
owner: Boss
prepared_by: Zero

purpose:
  - 現時点で設計整理を一旦閉じるためのノート
  - これ以上深掘りするより、まず十分に見返せる状態を優先したことを明記する

closure_summary:
  - TrainingCoach は設計資料としてかなり広い範囲まで整理済み
  - 文言、help、share境界、schema、DDL draft、seed方針まで準備済み
  - 実装前の参照資産としては強い状態
  - Boss 方針により、現時点では実装へ進まない

why_this_is_a_good_stop_point:
  - 主要な曖昧さがかなり減っている
  - 読み順とhandoff導線が整った
  - 後で再開しても入口を見失いにくい
  - design-only 方針に対して十分な厚みがある

if_reopened_later:
  design_only_reopen_candidates:
    - canonical single-file の追加圧縮
    - later candidate の棚卸し更新
    - cross-document consistency recheck
  implementation_reopen_candidates:
    - 佐藤 review
    - apply-ready SQL化
    - API/UI exact implementation mapping
    - seed execution planning

policy_reminder:
  - implementation remains not started
  - bundled output preference remains active
