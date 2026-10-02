# EndOfLifePlanner FamilyLegacyAI R4B UI Wire and User Flow

FINAL_STATUS=UI_WIRE_USER_FLOW_DRAFT_NOT_IMPLEMENTED
PATCH=NO
DB_CONNECTION=NO
DB_WRITE=NO
DDL_APPLY=NO
API_POST=NO
GIT_PUSH=NO

---

## 1. Purpose

This document defines the R4B UI wire and user flow for EndOfLifePlanner FamilyLegacyAI.

FamilyLegacyAI is a LifeOS / EndOfLifePlanner feature that lets a registrant create a family-facing legacy AI robot based on their records, values, speech tendency, knowledge domains, private context vault, and posthumous access policy.

This is a UI and flow design draft only. No implementation is performed in R4B.

---

## 2. UI Canon

FamilyLegacyAI UI belongs to EndOfLifePlanner.

AIWorkerOS UI should not own the FamilyLegacyAI setup screens.

AIWorkerOS may later provide runtime status or generation result contracts, but the user-facing creation, consent, emergency contact, vault backup, and restore settings are LifeOS / EndOfLifePlanner responsibilities.

---

## 3. Top-Level Placement

Recommended EndOfLifePlanner menu structure:

- 基本情報
- 医療・介護希望
- 葬儀・供養
- 相続メモ
- 重要書類
- 家族へのメッセージ
- FamilyLegacyAI

FamilyLegacyAI should appear as a top-level section inside EndOfLifePlanner because it is a major end-of-life feature, not a minor setting under messages.

User-facing label candidates:

- 家族相談AI
- 家族に残す相談AI
- あなたらしさを残すAI
- FamilyLegacyAI

R4B recommended label:

- 家族相談AI

Reason:

- Easy for normal users.
- Avoids technical robot wording.
- Still covers posthumous family consultation.

---

## 4. FamilyLegacyAI Home Screen

Screen name:

- 家族相談AI

Primary responsibilities:

- Show setup progress.
- Show whether the AI is draft, active, suspended, or posthumous mode ready.
- Provide entry points to required setup steps.
- Show persistent disclosure.

Header disclosure:

- 登録者本人の記録・価値観・話し方をもとにしたAIです。
- 本人そのものではありません。

Cards:

1. AI作成状況
2. 本人らしさ登録
3. 知識領域登録
4. 本人文脈vault
5. 家族/利用者設定
6. 未成年同意設定
7. 緊急連絡先
8. 死後モード設定
9. バックアップ/復元
10. 相談プレビュー

Completion display:

- 必須設定が完了しています
- 未成年利用には大人の同意が必要です
- バックアップ未作成
- 緊急連絡先未設定
- 死後モード未設定

---

## 5. Setup Wizard Overview

The first-time setup should use a wizard flow.

Wizard steps:

1. 目的を選ぶ
2. 対象者を選ぶ
3. 本人らしさを登録
4. 知識領域を登録
5. 本人文脈vaultを設定
6. 未成年/家族利用を設定
7. 緊急連絡先を設定
8. バックアップ/復元を設定
9. プレビュー
10. 有効化

Skip policy:

- Emergency contact can be skipped only for adult-only non-emergency MVP usage, but the UI should warn that safety coverage is incomplete.
- Minor usage cannot be enabled without adult or guardian consent.
- Backup can be skipped but should remain a visible warning.
- Private context vault can be skipped.

---

## 6. Step 1 Purpose Selection

Screen:

- 何のために残しますか？

Options:

- 子供が将来相談できるようにする
- 配偶者や家族に言葉を残す
- 事業や仕事の考え方を残す
- 自分の価値観を家族に残す
- 寂しい時に読める返答を残す

Design rule:

- Multiple selection allowed.
- Default recommended option: 子供が将来相談できるようにする.

---

## 7. Step 2 Target Audience

Screen:

- 誰のために残しますか？

Options:

- 子供
- 配偶者
- 家族全体
- 親
- 兄弟姉妹
- 事業承継者
- 信頼できる人

Required fields:

- target_audience_code
- beneficiary_user_or_group
- adult_or_minor_mode

Minor warning:

- 未成年が使う場合、大人の同意が必要です。

---

## 8. Step 3 Registrant Tendency Registration

Screen:

- 本人らしさを登録

Course selection:

- 3分で作る
- 10分で作る
- しっかり作る

3-minute course:

- Multiple choice 10 questions
- Short answer 3 questions
- Speech style selection

10-minute course:

- Multiple choice 30 questions
- Short answer 10 questions
- Scene-based prompts 5

Deep course:

- Letters
- Audio/video transcripts
- Memories
- Values
- NG expressions
- Knowledge domains
- Context vault

Important copy:

- 性格診断ではありません。
- あなたらしい考え方・話し方を残すための質問です。

Question categories:

- 話し方
- 励まし方
- 叱り方
- お金の考え方
- 仕事の考え方
- 家族の考え方
- 失敗した時の考え方
- 子供に残したい言葉
- 使ってほしくない言い方

---

## 9. Step 4 Knowledge Domain Registration

Screen:

- 詳しかった分野を登録

Domain selection:

- お金
- 仕事
- 経営
- 歴史
- 医療・健康
- 法律
- 教育
- 子育て
- 技術
- 趣味
- 地域
- 家族史
- その他

Depth selection:

1. 少し知っている
2. 家族に話せる
3. 相談に乗れる
4. 仕事で使っていた
5. 人に教えられる
6. 専門家レベル

CX permission setting:

- この分野でCX22073JWの知識を補助的に使う
- 登録者本人の記憶としては扱わない

Medical/legal caution:

- 医療・法律・相続・契約は断定せず、専門家相談を促します。

---

## 10. Step 5 Private Context Vault

Screen:

- 本人文脈vault

Explanation:

- 親戚、家族、友人、好きな芸能人、作品、趣味、場所などを登録できます。
- 相談文を本人らしくするための補助情報です。
- 第三者の個人情報は暗号化して扱います。

Entity categories:

- 親戚
- 家族
- 友人
- 恩師
- 好きな芸能人
- 好きなスポーツ選手
- 好きなアーティスト
- 好きな歴史上の人物
- 好きな作品
- 音楽
- 映画
- アニメ
- 漫画
- 本
- 趣味
- 場所
- ブランド
- 食べ物

Public figure rule shown in UI:

- 好きだった対象として話題に使えます。
- 本人になりすましたり、公認関係があるようには表示しません。

Vault storage options:

- この端末だけに保存
- 暗号化してアプリDBにバックアップ
- 暗号化ファイルとしてDriveにも保存
- 復元キットを作る

Strict copy:

- 平文の親戚情報はサーバーに保存しません。
- 復号キーはDBに保存しません。

---

## 11. Step 6 Family and User Access Settings

Screen:

- 家族/利用者設定

Settings:

- 利用できる人
- 利用開始条件
- 死後モード時の公開範囲
- 会話履歴の保存方針
- 本人文脈vaultの利用可否
- 年齢モード

Age modes:

- 未成年
- 成人
- 管理者/後見人
- 家族グループ

Required rule:

- 未成年は大人の同意なしに使用不可。

---

## 12. Step 7 Minor Consent

Screen:

- 未成年同意設定

Display only if beneficiary is minor.

Required settings:

- 保護者/後見人
- 同意範囲
- 利用許可
- vault復元許可
- 緊急連絡先通知許可
- 会話ログ確認許可

Consent scopes:

- use_family_legacy_ai
- restore_private_vault
- emergency_contact_notification
- conversation_log_review

Blocking rule:

- Consent missing means minor cannot use the chat.

---

## 13. Step 8 Emergency Contact Settings

Screen:

- 緊急連絡先

Purpose:

- 重大・緊急相談の可能性がある場合に、登録された大人へ安全確認のための案内を送る。

Important UI rule:

- 利用者本人には「通知しました」と表示しない。

Emergency contact fields:

- 名前
- 続柄
- 通知方法
- LINE
- メール
- SMS
- アプリ通知
- 優先順位
- 通知対象リスク

Notification risk flags:

- 未成年の安全
- 自傷リスク
- 他害リスク
- 医療緊急
- 虐待/DV/支配関係の疑い

Caveat:

- 通知先が危険人物の可能性がある場合は、通常通知を止め、別の対応に切り替える。

Notification content policy:

- 安全確認依頼
- 自然な声かけ方法
- やってはいけない対応
- 相談先情報
- 危険要約
- 会話全文は原則送らない

---

## 14. Step 9 Posthumous Mode

Screen:

- 死後モード設定

Settings:

- 死後に有効化する
- 有効化確認方法
- 管理者/後見人
- 家族への公開範囲
- 相談AIの利用可否
- vault復元可否
- バックアップ復元可否
- 停止/凍結手続き

Posthumous mode statuses:

- living_setup
- pending_confirmation
- posthumous_enabled
- disabled

Safety rule:

- 死後モードでも、AIが新しい法的意思決定をしたように扱わない。
- 遺言や相続判断の代替にしない。

---

## 15. Step 10 Backup and Restore

Screen:

- バックアップ/復元

Backup options:

- 端末内に暗号化保存
- アプリDBに暗号化バックアップ
- Driveに暗号化ファイルを保存
- 復元キットを作成
- 分散キーを設定

Restore paths:

- 新しいスマホで復元
- Driveから復元
- アプリDBから復元
- 復元キットから復元
- 後見人承認で復元

Minor restore rule:

- 未成年は保護者/後見人の承認が必要。

Adult restore rule:

- 成人した子は、本人ログイン + 復元キーで復元可能。

Key warning:

- 復号キーはDBに保存しません。
- 復元キーを失うと復元できない場合があります。

---

## 16. Step 11 Chat Preview

Screen:

- 相談プレビュー

Purpose:

- Registrant can preview how FamilyLegacyAI responds.
- Registrant can mark replies as acceptable or not acceptable.
- Registrant can add NG expressions.

Preview scenarios:

- 仕事で失敗した
- 進路で迷っている
- お金で困っている
- 家族と揉めた
- 寂しい
- 会いたい
- 恋愛で傷ついた
- 子供が生まれた
- 結婚で迷っている

Review actions:

- この返し方でよい
- もっと優しく
- もっと現実的に
- 短く
- 長く
- この言い方は使わない
- 根拠になった登録内容を確認

---

## 17. Family User Chat Screen

Screen:

- 相談する

Persistent disclosure outside message area:

- 登録者本人の記録・価値観・話し方をもとにしたAIです。
- 本人そのものではありません。

Message body rule:

- Do not repeat the disclosure in every reply.
- Use natural message body.
- Mention limitation only when directly asked, when high-risk, or when evidence is insufficient.

Chat input placeholder:

- 今の気持ちや相談したいことを書いてください

Source hint display:

- この返答は、登録された価値観・知識領域・本人文脈を参考にしています。

Optional source detail:

- 参考にした本人記録
- 参考にした知識領域
- 参考にした文脈
- CX参照あり/なし

Emergency silent rule:

- Even if a serious notification is sent, do not show "通知しました" to the user.

Supportive emergency-safe copy:

- 一人で抱えなくていい。
- 今すぐ全部を決めなくていい。
- 近くに信頼できる人がいるなら、少しだけ話してみて。

---

## 18. Admin and Guardian Review Screen

Screen:

- 管理者/後見人確認

Responsibilities:

- Minor access approvals
- Restore approvals
- Emergency contact settings
- High-risk event review
- Suspend FamilyLegacyAI
- Update access policy
- Check backup status

Restrictions:

- Admin should not freely read all private vault plaintext unless explicitly restored and authorized.
- Emergency event review should show risk summary first, not full conversation by default.
- Full conversation access should be policy-controlled and audited.

---

## 19. Emergency Contact Notification UI

This is not the user chat UI. This is the notification received by emergency contacts.

Message structure:

- Safety check request
- Risk summary
- Natural contact guidance
- Do-not-do guidance
- Emergency resources
- App link for authorized review

Do not include:

- "The user has been told you were notified"
- Full conversation by default
- Raw private vault content
- Unnecessary third-party information

---

## 20. Screen Responsibility Boundaries

FamilyLegacyAI Home:

- Setup progress and entry points only.

Tendency Registration:

- Questionnaire and source registration only.

Knowledge Domain:

- Domain and depth only.

Private Context Vault:

- Context entity and encrypted vault controls only.

Emergency Contact:

- Contact and notification rules only.

Backup/Restore:

- Encrypted backup and restore only.

Chat Screen:

- Consultation only.

Admin/Guardian:

- Consent, restore approval, high-risk review, suspension.

Do not mix all settings into one large form.

---

## 21. Future UI-Centered Test Targets

When implementation begins, UI-centered tests should check:

- FamilyLegacyAI menu is visible under EndOfLifePlanner.
- Persistent disclosure is outside the message bubble.
- Message body does not repeat "本人ではない" every time.
- Minor cannot enter chat without guardian consent.
- Emergency settings screen states that user is not shown "通知しました".
- Private context vault screen shows encryption/key separation.
- Backup screen supports DB encrypted backup and Drive encrypted file options.
- Restore screen requires guardian approval for minors.
- Public figure preference screen prohibits impersonation/endorsement.
- Knowledge domain screen shows CX as background reference only.
- Chat screen does not expose notification dispatch status to the user.

---

## 22. R4B Non-Goals

R4B does not include:

- Code implementation
- UI implementation
- DB apply
- DDL apply
- API POST
- AIWorkerOS runtime implementation
- LINE sending
- actual Drive integration
- actual encryption implementation
- git push

---

## 23. Next Recommended Phase

Recommended next:

- R5: AIWorkerOS runtime contract detail

Alternative:

- R4C: UI copy and questionnaire item draft
- R4A: READONLY DB/schema inventory before DDL
