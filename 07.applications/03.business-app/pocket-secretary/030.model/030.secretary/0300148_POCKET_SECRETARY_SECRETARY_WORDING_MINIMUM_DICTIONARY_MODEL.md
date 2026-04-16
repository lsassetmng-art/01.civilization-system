# ============================================================
# POCKET SECRETARY SECRETARY WORDING MINIMUM DICTIONARY MODEL
# ============================================================

status: draft-additive
type: minimum-dictionary-model
application: PocketSecretary
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

purpose:
Fix the minimum secretary wording dictionary
required for PocketSecretary implementation alignment,
while preserving stable message meaning.

scope:
- minimum secretary set
- minimum message type set
- fallback wording rule
- dashboard-first wording scope

# ============================================================
# 1. PRINCIPLE
# ============================================================

wording_principle:
- meaning must remain stable
- only expression changes by secretary/persona style
- wording must remain short enough for dashboard use
- fallback wording must always exist
- initial dictionary is minimum viable, not final exhaustive dictionary

# ============================================================
# 2. TARGET SECRETARIES
# ============================================================

target_secretaries:
- sato_misaki
- takahashi_hina
- kamiya_rin

style_summary:

  sato_misaki:
    style:
      - standard
      - calm
      - rational

  takahashi_hina:
    style:
      - empathy
      - soft
      - personal-support

  kamiya_rin:
    style:
      - sharp
      - concise
      - work-support

# ============================================================
# 3. MINIMUM MESSAGE TYPES
# ============================================================

minimum_message_types:
- schedule_notice
- todo_notice
- notification_notice
- error_soft
- general_guidance

meaning_rule:
The following dictionary fixes only the minimum implementation set.
New message types may be added later,
but these five are the required starting set.

# ============================================================
# 4. DICTIONARY KEY RULE
# ============================================================

dictionary_key_rule:
- secretary_id.message_type.template_key

recommended_initial_template_key:
- default

example:
- sato_misaki.schedule_notice.default
- takahashi_hina.todo_notice.default
- kamiya_rin.error_soft.default

# ============================================================
# 5. MINIMUM DICTIONARY
# ============================================================

dictionary_entries:

  # ----------------------------------------------------------
  # SATO MISAKI
  # ----------------------------------------------------------

  - key: sato_misaki.schedule_notice.default
    secretary_id: sato_misaki
    message_type: schedule_notice
    meaning:
      upcoming schedule reminder
    wording:
      まもなく予定です。ご確認ください。

  - key: sato_misaki.todo_notice.default
    secretary_id: sato_misaki
    message_type: todo_notice
    meaning:
      due-today unfinished todo reminder
    wording:
      本日中のToDoがあります。ご確認ください。

  - key: sato_misaki.notification_notice.default
    secretary_id: sato_misaki
    message_type: notification_notice
    meaning:
      important unresolved notification reminder
    wording:
      重要なお知らせがあります。ご確認ください。

  - key: sato_misaki.error_soft.default
    secretary_id: sato_misaki
    message_type: error_soft
    meaning:
      soft failure / unavailable state
    wording:
      いまは情報を取得できませんでした。少ししてからお試しください。

  - key: sato_misaki.general_guidance.default
    secretary_id: sato_misaki
    message_type: general_guidance
    meaning:
      neutral fallback guidance
    wording:
      今日の確認事項があれば、ここから進められます。

  # ----------------------------------------------------------
  # TAKAHASHI HINA
  # ----------------------------------------------------------

  - key: takahashi_hina.schedule_notice.default
    secretary_id: takahashi_hina
    message_type: schedule_notice
    meaning:
      upcoming schedule reminder
    wording:
      もうすぐ予定の時間です。無理のないように確認しておきましょう。

  - key: takahashi_hina.todo_notice.default
    secretary_id: takahashi_hina
    message_type: todo_notice
    meaning:
      due-today unfinished todo reminder
    wording:
      今日のToDoが残っています。少しずつ進めていきましょう。

  - key: takahashi_hina.notification_notice.default
    secretary_id: takahashi_hina
    message_type: notification_notice
    meaning:
      important unresolved notification reminder
    wording:
      大事なお知らせがあります。落ち着いて確認してみましょう。

  - key: takahashi_hina.error_soft.default
    secretary_id: takahashi_hina
    message_type: error_soft
    meaning:
      soft failure / unavailable state
    wording:
      いまはうまく読み取れませんでした。少し時間をおいて試してみましょう。

  - key: takahashi_hina.general_guidance.default
    secretary_id: takahashi_hina
    message_type: general_guidance
    meaning:
      neutral fallback guidance
    wording:
      今日のこと、必要なところから一緒に確認していきましょう。

  # ----------------------------------------------------------
  # KAMIYA RIN
  # ----------------------------------------------------------

  - key: kamiya_rin.schedule_notice.default
    secretary_id: kamiya_rin
    message_type: schedule_notice
    meaning:
      upcoming schedule reminder
    wording:
      予定が近いです。確認してください。

  - key: kamiya_rin.todo_notice.default
    secretary_id: kamiya_rin
    message_type: todo_notice
    meaning:
      due-today unfinished todo reminder
    wording:
      今日中のToDoがあります。対応してください。

  - key: kamiya_rin.notification_notice.default
    secretary_id: kamiya_rin
    message_type: notification_notice
    meaning:
      important unresolved notification reminder
    wording:
      重要なお知らせがあります。確認を推奨します。

  - key: kamiya_rin.error_soft.default
    secretary_id: kamiya_rin
    message_type: error_soft
    meaning:
      soft failure / unavailable state
    wording:
      情報取得に失敗しました。再試行してください。

  - key: kamiya_rin.general_guidance.default
    secretary_id: kamiya_rin
    message_type: general_guidance
    meaning:
      neutral fallback guidance
    wording:
      必要な項目から進めてください。

# ============================================================
# 6. FALLBACK RULE
# ============================================================

fallback_rule:
If secretary-specific wording is missing,
use the neutral fallback wording for the same message type.

fallback_priority:
1. secretary-specific entry
2. neutral default entry for message type
3. hard-safe fixed fallback string

recommended_neutral_defaults:

  schedule_notice:
    まもなく予定です。ご確認ください。

  todo_notice:
    本日中のToDoがあります。ご確認ください。

  notification_notice:
    重要なお知らせがあります。ご確認ください。

  error_soft:
    いまは情報を取得できませんでした。少ししてからお試しください。

  general_guidance:
    必要な項目から確認できます。

# ============================================================
# 7. DASHBOARD APPLICATION RULE
# ============================================================

dashboard_application_rule:
- wording must remain compact
- wording must fit within the dashboard summary bubble
- dashboard summary should prefer one concise sentence
- long explanatory prose is not part of the minimum dictionary

# ============================================================
# 8. FUTURE EXTENSION RULE
# ============================================================

future_extension_rule:
The following may be added later:
- travel_expense_notice
- consultation_opening
- error_hard
- business_guidance
- company_secretary specific wording

rule:
Future additions must preserve meaning stability
and must not redefine the minimum five message types.

# ============================================================
# 9. DEFINITION OF MINIMUM DICTIONARY FIXED
# ============================================================

minimum_dictionary_is_fixed_when:
- the three secretaries each have the five minimum message types
- every message type has a deterministic fallback
- wording remains dashboard-safe
- meaning does not drift across secretaries

# ============================================================
# 10. NEXT BEST ACTION
# ============================================================

next_best_action:
Fix the Deep Link exact payload for:
- EstimateCreator
- NameCardManager
- auth inheritance related launch context

