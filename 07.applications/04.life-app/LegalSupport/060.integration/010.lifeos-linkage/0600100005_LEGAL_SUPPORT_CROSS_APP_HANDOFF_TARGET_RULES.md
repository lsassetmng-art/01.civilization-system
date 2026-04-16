# ============================================================
# LEGAL SUPPORT CROSS APP HANDOFF TARGET RULES
# ============================================================

status: draft-formal
system: LegalSupport
layer: integration
subdomain: lifeos-linkage
schema: life

target_rules:

  inheritance_support:
    when_to_suggest:
      - category=inheritance
      - 相続人や遺言関連の整理が主目的
    must_not_send:
      - private_notes
      - assumption_text
      - expense internal notes

  business_legal_support:
    when_to_suggest:
      - 事業主体との契約や労務など business 文脈が強い
    must_not_send:
      - family-only notes
      - personal family sharing internals

  end_of_life_planner:
    when_to_suggest:
      - 遺言、医療意思、引継ぎが主題
    must_not_send:
      - unrelated dispute-only notes
      - internal audit data

  money_planner_future:
    when_to_suggest:
      - 費用整理や見積把握をしたい
    must_not_send:
      - question raw notes
      - private legal narrative

handoff_confirmation_policy:
  - user preview を挟む
  - target app 名を明示する
  - handoff sections を明示する
  - 元データは LegalSupport に残ることを明示する
