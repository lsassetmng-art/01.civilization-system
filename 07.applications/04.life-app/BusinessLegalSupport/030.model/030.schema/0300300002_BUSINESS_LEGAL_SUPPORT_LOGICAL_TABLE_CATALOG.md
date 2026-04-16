# ============================================================
# BUSINESS LEGAL SUPPORT LOGICAL TABLE CATALOG
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 030.schema
owner: Boss
prepared_by: Zero

logical_tables:
  - table_name: life.business_legal_issue
    role:
      - 案件の主テーブル
  - table_name: life.business_legal_contract_item
    role:
      - 契約台帳
  - table_name: life.business_legal_deadline_record
    role:
      - 期限管理
  - table_name: life.business_legal_counterparty
    role:
      - 取引先/相手方整理
  - table_name: life.business_legal_risk_note
    role:
      - リスク記録
  - table_name: life.business_legal_consultation_record
    role:
      - 相談前後メモ
  - table_name: life.business_legal_attached_document
    role:
      - 添付文書メタ情報
  - table_name: life.business_legal_checklist_item
    role:
      - 相談前チェック項目
  - table_name: life.business_legal_trouble_timeline
    role:
      - 時系列記録
  - table_name: life.business_legal_advisor_share_record
    role:
      - advisor_viewer 共有履歴

out_of_scope_tables:
  - enterprise_approval
  - corporate_legal_repository
  - erp_official_processing
  - external_lawyer_master
