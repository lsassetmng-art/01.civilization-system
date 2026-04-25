# ============================================================
# DEVELOPMENT WORK PACKAGE CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: implementation-prep-only
schema_name: life

work_packages:

  wp_01_case_foundation:
    goal:
      - case の基本流れを成立させる
    included:
      - case create
      - case list
      - case detail
      - case update
      - case archive
    depends_on:
      - none
    completion_definition:
      - case が単独で lifecycle を回せる

  wp_02_fact_and_stakeholder:
    goal:
      - 相談前整理の基礎を成立させる
    included:
      - timeline create/list/update
      - stakeholder create/list/update
      - confidence separation
    depends_on:
      - wp_01_case_foundation
    completion_definition:
      - case 配下で事実と関係者が整理できる

  wp_03_document_and_consultation:
    goal:
      - 法務整理の実用価値を成立させる
    included:
      - document metadata flow
      - evidence metadata flow
      - consultation note flow
      - post-consultation suggestion direction
    depends_on:
      - wp_01_case_foundation
      - wp_02_fact_and_stakeholder
    completion_definition:
      - 書類と面談記録が case に紐づいて整理できる

  wp_04_task_and_deadline:
    goal:
      - 面談後の継続運用を成立させる
    included:
      - task create/list/update
      - deadline create/list/update
      - basic follow-up visibility
    depends_on:
      - wp_03_document_and_consultation
    completion_definition:
      - 面談後の宿題を運用できる

  wp_05_share_and_export:
    goal:
      - plus_family の中核価値を成立させる
    included:
      - share grant/revoke
      - viewer/delegated_editor visibility
      - included_sections
      - exclude_sensitive_items
      - redaction_level
      - export pack record
    depends_on:
      - wp_01_case_foundation
      - wp_03_document_and_consultation
      - wp_04_task_and_deadline
    completion_definition:
      - 安全な共有と出力が成立する

  wp_06_lifeos_reference:
    goal:
      - LifeOS 内の参照文脈を接続する
    included:
      - inheritance summary reference
      - end_of_life summary reference
      - money summary reference
    depends_on:
      - wp_01_case_foundation
      - wp_03_document_and_consultation
      - wp_05_share_and_export
    completion_definition:
      - 他アプリ正本を壊さず参照要約が扱える

package_rules:
  - wp_05 を wp_01 より先にやらない
  - wp_06 を core より先にやらない
  - share/export は confidentiality 制御前提で進める
