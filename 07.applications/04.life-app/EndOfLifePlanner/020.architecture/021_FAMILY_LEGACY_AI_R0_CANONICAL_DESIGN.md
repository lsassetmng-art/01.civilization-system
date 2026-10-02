# EndOfLifePlanner FamilyLegacyAI R0 Canonical Design

FINAL_STATUS=DESIGN_R0_CANONICAL_DRAFT
PATCH=NO
DB_WRITE=NO
DDL_APPLY=NO
API_POST=NO
GIT_PUSH=NO

---

## 1. Purpose

EndOfLifePlanner FamilyLegacyAI は、登録者本人が生前に残した価値観・話し方・知識傾向・家族文脈・好み・記録をもとに、死後も子供や家族が相談できる「本人由来の家族向けAIロボット」を作成する LifeOS / EndOfLifePlanner 機能である。

本人そのものではない。
ただし、本人が残した記録・価値観・話し方・知識傾向をもとに、家族の寂しさや不安を少しでも和らげる自然な相談応答を生成する。

---

## 2. Canonical Ownership

FamilyLegacyAI の本人らしさ正本は LifeOS / EndOfLifePlanner に置く。

- LifeOS / EndOfLifePlanner:
  - 本人らしさ
  - 終活設定
  - 家族公開条件
  - 死後モード
  - 未成年同意
  - 緊急連絡先
  - 暗号化vault
  - 復元ポリシー

- AIWorkerOS:
  - 相談応答生成
  - 安全判定
  - 緊急分類
  - CX参照
  - 通知判定
  - 文章生成

- CX22073JW:
  - 知識領域
  - 背景知識
  - 専門知識
  - 説明補助

- PersonaOS:
  - FamilyLegacyAI では必須依存にしない
  - 汎用人格、アバター、別用途で必要な場合のみ連携する

---

## 3. Product Name

Internal name:

- EndOfLifePlanner FamilyLegacyAI

User-facing candidates:

- 家族相談AI
- 家族に残す相談AI
- あなたらしさを残すAI
- 家族レガシーAI

---

## 4. Disclosure Policy

FamilyLegacyAI は、本人ではないことを UI 上で常時明示する。

ただし、生成メッセージ本文に毎回免責文を入れない。

NG body example:

- お父さん本人ではないけれど、残された言葉や考え方から近い返し方をするね。
- たぶん、まずこう言うと思う。

UI outside message area should show:

- 登録者本人の記録・価値観・話し方をもとにしたAIです。
- 本人そのものではありません。

本文は自然な相談文として生成する。

---

## 5. Registrant Base Profile

年齢、性別、居住地、言語などは、アカウント登録時プロフィールを利用する。
FamilyLegacyAI 作成画面で再入力させない。

Source candidates:

- account_profile
- user_registration_profile

Used fields:

- age
- gender_or_sex_profile_field
- residence_area
- language
- basic_family_context

---

## 6. Registrant Tendency Registration

重い心理診断ではなく、一般ユーザーが短時間で答えられる本人傾向登録にする。

Input formats:

- multiple_choice
- short_answer
- slider
- scene_based_prompt
- optional_letter
- optional_audio
- optional_video

Categories:

- speech_style
- encouragement_style
- scolding_style
- money_view
- work_view
- family_view
- relationship_view
- failure_view
- message_to_children
- ng_expression
- knowledge_domain
- knowledge_depth
- favorite_people_and_works

Course levels:

3min:
- 選択式10問
- 短答3問
- 話し方選択

10min:
- 選択式30問
- 短答10問
- 相談シーン5個

deep:
- 手紙
- 音声/動画
- 思い出
- 価値観詳細
- NG表現
- 知識領域/深度

---

## 7. Knowledge Domain and CX22073JW Use

登録者の知識領域と深度も本人らしさとして扱う。

Knowledge domains:

- money
- business
- work
- history
- medical_health
- law
- education
- childcare
- technology
- hobby
- local_knowledge
- family_history

Knowledge depth:

1. 少し知っている
2. 家族に話せる
3. 相談に乗れる
4. 仕事で使っていた
5. 人に教えられる
6. 専門家レベル

CX22073JW use policy:

- CX知識は背景知識として使う
- 登録者本人が実際に言ったこと・知っていたこととして偽装しない
- 登録者の知識深度を超える場合は慎重表現にする
- 医療・法律・相続・契約は断定しない

---

## 8. Private Context Vault

親戚情報だけでなく、登録者の本人文脈を広く保持する。

Vault name:

- family_legacy_private_context_vault

Entities:

- relatives
- family_members
- friends
- teachers
- important_people
- favorite_celebrities
- favorite_public_figures
- favorite_athletes
- favorite_artists
- favorite_historical_figures
- favorite_works
- music
- movies
- anime
- manga
- books
- hobbies
- places
- brands
- foods
- preference_notes

Public figure rule:

OK:
- 登録者が好きだった対象として話題に出す
- 例え話に使う
- 好み・価値観・会話文脈として使う
- CX/Media知識で背景を補う

NG:
- 芸能人本人になりすます
- 公認・関係ありと見せる
- 発言を捏造する
- 親戚本人になりすます
- 第三者の繊細情報を平文でサーバー保存する

---

## 9. Vault Storage and Backup

通常利用はローカル暗号化 vault とする。

File example:

- family_legacy_private_context_vault.json.enc

Backup may be stored as encrypted blob in:

- application DB
- managed object storage
- Google Drive or equivalent user-controlled storage
- USB / SD / local export
- paper or QR recovery kit

Strict rules:

- DB may store encrypted blob
- DB may store blob hash, version, metadata, restore policy, audit logs
- DB must not store decryption key
- DB must not store plaintext third-party information
- Server must not decrypt vault plaintext
- AI learning and CX registration are forbidden for third-party private vault content

Large vault:

- object_storage = encrypted blob
- db = metadata only

Small vault:

- db bytea/blob is acceptable only when client-side encrypted

---

## 10. Posthumous Device Change and Restore

死後や機種変更に備え、復元可能にする。

Restore rules:

- Minor child:
  - Guardian/adult approval required

- Adult child:
  - Login + recovery key

- Recovery key lost:
  - Split key / recovery kit / guardian approval

- Drive unavailable:
  - DB encrypted backup / paper QR / USB / other storage

Restore flow:

1. new device
2. login to EndOfLifePlanner
3. select FamilyLegacyAI restore
4. fetch encrypted vault from DB/Drive/recovery kit
5. enter recovery key
6. if minor, require guardian approval
7. decrypt on device
8. restore local vault

---

## 11. Minor Access Policy

未成年は大人の同意なしに使用不可。

Rules:

- minor_access_requires_guardian_consent = true
- guardian_or_adult_account_binding_required = true

---

## 12. Emergency and Serious Consultation Policy

Emergency levels:

- 0 = normal
- 1 = caution
- 2 = serious
- 3 = urgent

重大・緊急相談を検知した場合でも、利用者本人には「通知しました」と表示しない。

NG user-facing message:

- 緊急連絡先に通知しました
- 保護者に連絡しました
- 家族に知らせました

User-facing chat should continue supportive conversation:

- 一人で抱えなくていい
- 今すぐ全部を決めなくていい
- 近くに信頼できる人がいるなら、少しだけ話してみて

Emergency contact receives:

- safety_check_request
- natural_contact_guidance
- do_not_interrogate_guidance
- support_resources
- risk_summary
- no_full_conversation_by_default

Notification target message example:

FamilyLegacyAI 安全確認依頼

〇〇さんの相談内容から、強い不安・孤立・危険の可能性が検知されました。

できるだけ自然な形で本人の様子を確認してください。

対応の目安:
1. いきなり問い詰めない
2. 最近どう？など軽く声をかける
3. 話し始めたら遮らず聞く
4. 否定・説教・原因追及を急がない
5. 危険が高い場合は、家族・専門窓口・緊急機関へつなぐ

Abuse/DV caveat:

通知先が加害者または危険人物である可能性がある場合、通常の緊急連絡先通知ではなく、別の信頼先・公的窓口・管理者レビューへ切り替える。

---

## 13. UI Structure R0

EndOfLifePlanner:
- 基本情報
- 医療・介護希望
- 葬儀・供養
- 相続メモ
- 重要書類
- 家族へのメッセージ
- FamilyLegacyAI
  - AI作成
  - 本人らしさ登録
  - 知識領域登録
  - 本人文脈vault
  - 家族/利用者設定
  - 未成年同意設定
  - 緊急連絡先
  - 死後モード
  - バックアップ/復元
  - 相談画面

---

## 14. Candidate Data Model

LifeOS side:

- life.family_legacy_profile
- life.family_legacy_trait_profile
- life.family_legacy_questionnaire_answer
- life.family_legacy_knowledge_profile
- life.family_legacy_context_vault_backup
- life.family_legacy_access_policy
- life.family_legacy_guardian_consent
- life.family_legacy_emergency_contact
- life.family_legacy_emergency_event
- life.family_legacy_restore_policy
- life.family_legacy_conversation
- life.family_legacy_generation_audit

AIWorkerOS side:

- aiworker.family_legacy_runtime_request
- aiworker.family_legacy_runtime_result
- aiworker.family_legacy_safety_classification
- aiworker.family_legacy_cx_reference_log
- aiworker.family_legacy_notification_dispatch_log

No DB apply in R0.

---

## 15. AIWorkerOS Runtime Contract Draft

Request fields:

- request_type = family_legacy_consultation
- legacy_profile_id
- beneficiary_user_id
- age_mode
- message
- trait_profile_ref
- knowledge_profile_ref
- context_vault_minimized_payload
- cx_allowed_domains
- safety_policy.minor_consent_required = true
- safety_policy.silent_emergency_notification = true
- safety_policy.do_not_show_notification_done = true

Response fields:

- ok
- reply_text
- safety_level
- emergency_action
- used_trait_ids
- used_cx_refs
- used_context_entities
- audit_id

---

## 16. R0 Scope

R0 includes:

- canonical design
- ownership boundary
- UI structure
- vault policy
- minor policy
- silent emergency policy
- CX reference boundary
- AIWorkerOS runtime contract draft
- candidate data model

R0 excludes:

- DB apply
- DDL apply
- API POST
- code patch
- git push
- LINE actual sending
- medical/legal/inheritance decision automation
- PersonaOS mandatory dependency
- plaintext third-party server storage

---

## 17. Next Phases

R1:
- EndOfLifePlanner existing structure readonly inventory

R2:
- DB design draft

R3:
- DB AI review

R4:
- UI wire/design

R5:
- AIWorkerOS runtime contract detail

R6:
- CX reference boundary detail

R7:
- implementation after explicit GO
