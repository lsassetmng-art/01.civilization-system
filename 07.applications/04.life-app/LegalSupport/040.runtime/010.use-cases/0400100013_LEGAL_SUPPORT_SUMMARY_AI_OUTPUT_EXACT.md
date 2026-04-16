# ============================================================
# LEGAL SUPPORT SUMMARY AI OUTPUT EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: runtime
subdomain: use-cases
schema: life

principles:
  - AI 出力は整理支援目的に限定する
  - 法的結論、勝敗予測、適法/違法断定を含めない
  - 事実と未確認事項を分離する
  - 出力対象は plus_family 前提とする

generate_case_summary:
  request:
    action: generate_case_summary
    payload:
      legal_case_id: uuid
      summary_profile: enum[consultation_prep, family_share, case_overview]
  response:
    summary_output:
      legal_case_id: uuid
      summary_profile: string
      structured_summary:
        case_overview:
          title: string
          category: string
          status: string
          priority: string
          short_summary: string|null
        key_facts:
          - event_date: date|null
            event_type: string
            fact_text: string
            verification_status: string
        unresolved_points:
          - text: string
        document_status_summary:
          total_count: integer
          unresolved_count: integer
          important_count: integer
        next_actions:
          - title: string
            due_date: date|null
        disclaimer:
          - この要約は相談準備・共有整理のための出力です
          - 法的結論や助言ではありません

generate_question_summary:
  request:
    action: generate_question_summary
    payload:
      legal_case_id: uuid
  response:
    question_summary:
      open_questions:
        - question_text: string
          priority: string
      answered_questions:
        - question_text: string
          answered_at: timestamptz|null

ai_output_rules:
  - assumption_text は既定で summary に含めない
  - verification_status=unverified は unresolved_points に寄せてよい
  - private note は summary source に含めない
  - professional_future profile は将来拡張
