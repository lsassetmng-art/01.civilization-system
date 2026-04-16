# ============================================================
# INFORMATION MOVEMENT CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: design-only

information_movement:

  inbound_from_user:
    - 案件基本情報
    - 関係者情報
    - 時系列情報
    - 書類 metadata
    - 面談記録
    - タスク
    - 期限
    - 共有条件

  internal_movements:
    - case overview から各 workspace へ case_id と基本状態が渡る
    - documents は metadata と confidentiality を先に持つ
    - consultation から tasks / deadlines へ後続情報が渡る
    - sharing は included_sections と redaction を受けて export に渡る

  inbound_from_lifeos_apps:
    inheritance_support:
      - heir / asset / debt / will の要約
    end_of_life_planner:
      - intention / handover / emergency contact の要約
    money_planner:
      - asset / debt / money event の要約

  outbound_from_legalsupport:
    to_user:
      - case summary
      - consultation summary
      - share pack
      - task and deadline visibility
    to_other_apps_future:
      - legal follow-up memo
      - consultation progression summary

movement_rules:
  - 情報移動は正本移管を意味しない
  - 他アプリ情報は reference 扱い
  - export は加工済み派生物である
  - permissions は各表示時点で計算される
