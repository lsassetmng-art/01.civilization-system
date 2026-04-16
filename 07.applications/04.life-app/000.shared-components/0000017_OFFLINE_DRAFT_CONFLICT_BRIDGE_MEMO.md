# ============================================================
# OFFLINE DRAFT CONFLICT BRIDGE MEMO
# Life App Common
# ============================================================

status: canonical
phase: design-only

purpose:
  - offline_draft_conflict_component を独立正本化せず、
    既存 foundation common との橋渡しで整理する
  - local-first / offline replay / conflict visibility の責務境界を固定する

bridge_subject:
  - offline_draft_conflict_component

bridge_targets:
  - Offline Draft Queue Common
  - Local-first Draft / Cache / Replay Common

bridge_interpretation:
  - offline_draft_conflict_component は Life App 側の独立正本候補ではなく、
    conflict 可視化と merge 判断補助の bridge側補強要素として扱う
  - Draft Queue / Local-first family が runtime 骨格を持ち、
    Life App 側は document / case / review 文脈に近い差分説明を補助する

bridge_scope:
  common_bridge_inside:
    - local_revision
    - remote_revision
    - diff_summary
    - merge_decision
    - sync_state
    - conflict_visible_flag
  keep_outside:
    - app固有の merge UI
    - app固有の最終競合解決判断
    - app固有の conflict explanation wording
    - app固有の save timing policy

responsibility_split:
  foundation_side:
    - offline editable state
    - pending operation queue
    - replay / retry rule
    - sync failure visibility
    - local-first runtime behavior
  life_app_bridge_side:
    - case/document/review 文脈での conflict summary 補助
    - ユーザーに見せる競合説明の最小 contract
    - related_case_id / related_record_id との関係づけ

anti_duplication_rule:
  - offline_draft_conflict_component を Local-first Draft / Cache / Replay Common の代替正本にしない
  - pending queue や replay runtime 自体は Life App 側で再定義しない
  - conflict可視化だけを切り出して別親 family に昇格しない

life_app_use_targets:
  - CareerLaunch
  - LegalSupport
  - InheritanceSupport
  - other mobile-first Life apps

final_bridge_judgment:
  - offline_draft_conflict_component は bridge-strengthening-only のままでよい
  - foundation common 側を正本として参照し、Life App 側は補助 contract に留める
