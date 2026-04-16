# CareerLaunch Candidate Data Area Positioning
- project: CX22073JW
- document_type: careerlaunch-candidate-data-area-positioning
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. 目的
本書は、CareerLaunch に関する candidate data areas を
設計上どう位置づけるかを整理する文書である。

## 2. Candidate data areas
- career_profile_area
- resume_document_area
- work_history_document_area
- motivation_statement_area
- self_promotion_area
- job_posting_paste_area
- application_tracking_area
- interview_preparation_area
- interview_session_note_area
- thank_you_message_area
- document_revision_history_area
- advisor_share_area
- persona_display_preference_area

## 3. placement rationale
以下を設計理由として固定する。

- 応募実行全体を復元可能にするため、文書だけでなく application と interview の文脈も保存対象にする。
- revision history と share state は後追い検証に有効。
- persona/background setting も UI continuity として候補に含める。

## 4. 重要な境界整理
CareerLaunch candidate areas は、
**すべてが CX22073JW の fixed/reference domain に直接入るわけではない。**

分けて考える必要がある。

### 4-1. CX22073JW に向くもの
CX22073JW に向くのは、
再利用可能な基準・雛形・分類・ガイドである。

例:
- document template
- interview question template
- revision policy template
- sharing policy template
- UI preference option master

### 4-2. app-side operational domain に向くもの
CareerLaunch の各応募・面接・文書改訂・共有状態は、
user-specific / case-specific / runtime-specific であり、
原則として app-side operational domain に置く方が自然である。

例:
- 実際の resume 文書
- 実際の志望動機文
- 実際の応募先管理
- 実際の面接メモ
- 実際のお礼メッセージ
- 実際の revision 履歴
- 実際の advisor share 状態
- 実際の persona/background preference state

## 5. 推奨構造
設計上は 2 層に分けるのがよい。

### Layer A: CX22073JW reference/template layer
- reusable template
- reusable checklist
- reusable style/rubric
- reusable option master

### Layer B: CareerLaunch workspace/application layer
- per-user document
- per-application context
- per-interview context
- revision history
- share state
- UI continuity state

## 6. ただし candidate area としては保持する理由
それでも candidate area として台帳化しておく理由は、
CareerLaunch 全体の復元可能性を失わないためである。

つまり、
**どのデータが必要かの台帳** と、
**どこに置くべきかの境界判断** は別である。

## 7. 最終結論
CareerLaunch candidate data areas は、
CX22073JW 周辺で検討すべき重要領域である。

ただし placement は分離する。

- reusable reference/template -> CX22073JW
- user/application/interview runtime context -> CareerLaunch operational domain
