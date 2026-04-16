# ============================================================
# LEGAL SUPPORT NEXT PHASE DECISION NOTE
# ============================================================

status: draft-formal
system: LegalSupport
layer: meta
subdomain: handoff

current_phase:
  - design_completed
  - implementation_not_started

next_phase_options:
  option_1:
    name: implementation_precheck
    description:
      - 実装前最終確認
    suitable_when:
      - まだ少し不安がある
      - 正本の整合を最終点検したい

  option_2:
    name: ddl_preparation
    description:
      - schema=life 前提でDDL設計に入る
    suitable_when:
      - DB構造を先に固めたい

  option_3:
    name: api_contract_preparation
    description:
      - action / request / response をAPI契約へ落とす
    suitable_when:
      - UIより先にAPI境界を固めたい

  option_4:
    name: ui_wireframe_to_impl_boundary
    description:
      - screen/action/field対応からUI実装境界へ進む
    suitable_when:
      - 画面単位で着手したい

recommended_next_phase:
  - implementation_precheck
  - then ddl_preparation or api_contract_preparation
