# CareerLaunch Candidate Data Area Ledger
- project: CX22073JW
- document_type: careerlaunch-candidate-data-area-ledger
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. 目的
本書は、CareerLaunch candidate data areas を
台帳形式で整理する文書である。

---

## 2. area ledger

| No | area | role | main stored object | recommended placement | note |
|----|------|------|--------------------|-----------------------|------|
| 1 | career_profile_area | 応募の土台になるプロフィール | career profile, preference, target direction | CareerLaunch operational domain | user-specific state |
| 2 | resume_document_area | 履歴書本文管理 | resume document | CareerLaunch operational domain | generated / edited document |
| 3 | work_history_document_area | 職務経歴書管理 | work history document | CareerLaunch operational domain | generated / edited document |
| 4 | motivation_statement_area | 志望動機管理 | motivation statement document | CareerLaunch operational domain | application-specific |
| 5 | self_promotion_area | 自己PR管理 | self promotion document | CareerLaunch operational domain | application-specific |
| 6 | job_posting_paste_area | 募集要項の貼り付け・保存 | pasted job posting snapshot | CareerLaunch operational domain | external input snapshot |
| 7 | application_tracking_area | 応募進捗を追跡 | application status/context | CareerLaunch operational domain | execution context |
| 8 | interview_preparation_area | 面接準備管理 | interview prep notes/checklist | CareerLaunch operational domain + CX22073JW template support | both workspace and reusable template relation |
| 9 | interview_session_note_area | 面接実施後の記録 | session note | CareerLaunch operational domain | per-interview runtime note |
| 10 | thank_you_message_area | お礼文管理 | thank-you message draft/history | CareerLaunch operational domain | follow-up context |
| 11 | document_revision_history_area | 改訂履歴管理 | revision history | CareerLaunch operational domain | audit / rollback useful |
| 12 | advisor_share_area | 共有状態管理 | advisor share state | CareerLaunch operational domain | review / collaboration |
| 13 | persona_display_preference_area | UI継続性管理 | persona/background preference state | CareerLaunch operational domain + option master in CX22073JW | runtime state + reference option split |

---

## 3. placement rationale fixed
以下を本台帳の rationale として固定する。

- 応募実行全体を復元可能にするため、文書だけでなく application と interview の文脈も保存対象にする。
- revision history と share state は後追い検証に有効。
- persona/background setting も UI continuity として候補に含める。

---

## 4. CX22073JW 側に派生しうる reference/template
CareerLaunch candidate areas から、
CX22073JW に派生しうる reusable asset は次のようなものとする。

- resume template master
- work history template master
- motivation template master
- self promotion template master
- interview preparation checklist template
- thank-you message template
- revision rule template
- advisor share policy template
- persona/background option master

---

## 5. model 方針
CareerLaunch 関連は、
1つの area をそのまま 1 table にするのではなく、
必要に応じて以下に分割する。

- main document
- revision history
- linkage / share state
- display preference
- application / interview context

---

## 6. 結論
CareerLaunch candidate data areas は、
復元可能性・監査性・UI continuity を考えると
重要な candidate set である。

ただし実配置は
- CX22073JW reference/template
- CareerLaunch operational workspace
に分離する前提で設計を進める。
