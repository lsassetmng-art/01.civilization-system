# ============================================================
# LEGAL SUPPORT CONSULTATION PREP PACKET EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: runtime
subdomain: use-cases
schema: life

principles:
  - consultation prep packet は相談前に持参しやすい整理資料
  - export_bundle と近いが、用途を consultation_prep に限定する
  - 法的結論ではなく、事実・質問・書類状況をまとめる

generate_consultation_prep_packet:
  request:
    action: generate_consultation_prep_packet
    payload:
      legal_case_id: uuid
      include_sections:
        case_summary: boolean
        timeline_summary: boolean
        key_stakeholders: boolean
        document_checklist: boolean
        open_questions: boolean
        next_actions: boolean
        upcoming_deadlines: boolean
      output_format: enum[screen_preview, pdf]
  response:
    consultation_prep_packet:
      legal_case_id: uuid
      output_format: string
      sections:
        case_summary:
          title: string
          category: string
          status: string
          priority: string
          summary: string|null
        timeline_summary:
          items:
            - event_date: date|null
              event_type: string
              fact_text: string
              verification_status: string
        key_stakeholders:
          items:
            - stakeholder_type: string
              display_name: string
              relation_to_case: string|null
        document_checklist:
          items:
            - document_category: string
              document_name: string
              possession_status: string
              submission_status: string
              important_flag: boolean
        open_questions:
          items:
            - question_text: string
              priority: string
        next_actions:
          items:
            - title: string
              due_date: date|null
        upcoming_deadlines:
          items:
            - deadline_type: string
              deadline_date: date
              urgency_level: string
      disclaimer:
        - この資料は相談準備用の整理資料です
        - 法的助言や結論ではありません

rules:
  - assumption_text は既定除外
  - private note は含めない
  - archived case でも preview は可能
  - pdf は plus_family 前提
