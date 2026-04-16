# ============================================================
# END OF LIFE PLANNER ATTACHMENT AND RESPONSE MINOR VALUES
# ============================================================

status: canonical-draft
phase: L12-minor-values-closure
type: minor-values-finalization

document_purpose:
  - attachment file 制約の最終値を固定する
  - response shape の微調整方針を固定する
  - major contract は変えずに minor 項目だけ閉じる

attachment_policy_final_values:
  supported_attachment_types:
    photo:
      allowed_mime_types:
        - image/jpeg
        - image/png
        - image/webp
      max_file_size_mb: 10
    audio:
      allowed_mime_types:
        - audio/mpeg
        - audio/mp4
        - audio/wav
        - audio/x-m4a
      max_file_size_mb: 25

attachment_general_rules:
  - family_message に紐づく attachment として扱う
  - dangerous executable file は対象外
  - attachment visibility は family_message open_condition と sharing_permission.attachment_view_allowed の両方を満たす場合のみ許可
  - file size 超過時は validation error とする
  - unsupported mime type は validation error とする

response_shape_polish:
  baseline_response:
    required:
      - success
      - request_id
      - server_time
    optional:
      - data
      - error_code
      - error_message
      - response_warning_messages
  list_response_direction:
    - list 系は data の下に plural 名 array を置く
    - paging は将来拡張とし、現段階では必須化しない
  detail_response_direction:
    - get 系は data の下に singular object を置く
  save_response_direction:
    - save / create / update 系は primary id と saved_at or updated_at を返す
  generate_response_direction:
    - generate 系は created artifact id と generated_at を返す

warning_message_shape:
  item_structure:
    - code
    - message
  examples:
    - code: EOL_WARN_NON_MEDICAL
      message: この内容は医療判断ではなく、希望整理メモです。
    - code: EOL_WARN_MASK_RECOMMENDED
      message: 高機微情報を含むため、マスキング確認を推奨します。

minor_values_closed:
  - attachment file size values fixed
  - attachment mime types fixed
  - response envelope polish fixed

important_boundary:
  - 実装はまだ行わない
  - payload contract の骨格は変更しない
