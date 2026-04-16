# ============================================================
# LEGAL SUPPORT DOCUMENT CONFIDENTIALITY RULE EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: policy
subdomain: boundaries
schema: life

entity:
  table_name: life.document_item

purpose:
  - document_item の confidentiality_level を共有制御・export制御・UI表示に接続する
  - family share 時の過剰公開を防ぐ
  - metadata only 運用でも機密度判断を持てるようにする

confidentiality_levels:

  normal:
    meaning:
      - 一般的な共有候補
    default_visibility:
      owner: full
      family: allowed_if_shared_flag=true
      professional_future: allowed_by_profile
    export_default:
      family: allowed_if_shared_flag=true
      self: allowed
      professional_future: allowed_by_profile

  sensitive:
    meaning:
      - 取り扱い注意
    default_visibility:
      owner: full
      family: selected_only
      professional_future: selected_only
    export_default:
      family: excluded_by_default_but_owner_can_include
      self: allowed
      professional_future: selected_only
    ui_expectation:
      - 明示確認を挟む

  private:
    meaning:
      - owner専用または極めて限定的
    default_visibility:
      owner: full
      family: denied
      professional_future: denied_default
    export_default:
      family: denied
      self: optional
      professional_future: denied
    ui_expectation:
      - family share 対象外を強く表示する

confidentiality_rules:
  - confidentiality_level=private の document は shared_flag=true を通常許可しない
  - confidentiality_level=sensitive の document は family export 時に確認ダイアログを挟む
  - shared_flag=false の時点で confidentiality_level に関わらず family export 対象外
  - confidentiality_level は owner のみ変更可能
  - confidentiality_level は document_category とは独立して保持する

recommended_defaults:
  document_category_based_hints:
    id:
      suggested_confidentiality: sensitive
    contract:
      suggested_confidentiality: normal
    letter:
      suggested_confidentiality: normal
    receipt:
      suggested_confidentiality: normal
    certificate:
      suggested_confidentiality: sensitive
    family_record:
      suggested_confidentiality: private
    property_record:
      suggested_confidentiality: sensitive
    consultation_material:
      suggested_confidentiality: private
    other:
      suggested_confidentiality: normal
