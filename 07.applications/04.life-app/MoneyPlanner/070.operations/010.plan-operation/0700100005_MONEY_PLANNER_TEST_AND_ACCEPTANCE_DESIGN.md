# ============================================================
# MONEY PLANNER TEST AND ACCEPTANCE DESIGN
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 070.operations
subdomain: plan-operation

purpose:
  - 実装開始前に受入観点を固定する
  - 実装完了判定の軸を先に定義する

acceptance_families:

  screen_acceptance:
    - dashboard が owner / shared summary を切り替えて表示できる
    - income / expense / asset / liability / goal / event の CRUD 導線が成立する
    - family sharing 画面で招待/更新/削除導線が成立する
    - receive candidate review で confirm / reject / archive が成立する
    - linkage settings で target system ごとの状態確認ができる

  validation_acceptance:
    - required field が UI で防止される
    - enum 不正値が UI / API で弾かれる
    - amount 非数値 / 負数 / scale over を防止できる
    - date range 不正を防止できる

  permission_acceptance:
    - owner は全管理操作可
    - partner_editor は shared のみ編集可
    - viewer は read only
    - manual share は owner のみ
    - private 項目を partner_editor/viewer が閲覧できない

  sharing_acceptance:
    - shared summary は shared のみで再計算される
    - selected_only は対象 member にのみ見える
    - visible summary が member ごとに妥当
    - 役割変更で visible summary が更新される

  linkage_acceptance:
    - LifePlanner 由来 event candidate を受け取れる
    - EndOfLifePlanner 由来 cost candidate を受け取れる
    - InheritanceSupport 由来 candidate を受け取れる
    - private 情報が manual share payload に混入しない

  receive_candidate_acceptance:
    - received -> draft_candidate -> reviewed -> confirmed の遷移が成立する
    - duplicate_candidate_flag 時は reviewed 経由必須
    - confirm 後に mapped_target_object_id が紐づく
    - rejected / archived が適切に分離される

  audit_acceptance:
    - create/update/share/confirm/reject に audit_event 候補が残る
    - 金額変更に change_log 候補が残る
    - monthly / yearly review で history_snapshot 候補が残る

minimum_test_sets:
  - owner basic flow
  - partner_editor restricted flow
  - viewer read only flow
  - private/shared/selected_only visibility flow
  - receive candidate duplicate flow
  - free / plus_family plan restriction flow

definition_of_ready_for_implementation:
  - acceptance family が設計上すべて定義済み
  - blocker 未解消項目がない
  - 実装開始順が固定済み
