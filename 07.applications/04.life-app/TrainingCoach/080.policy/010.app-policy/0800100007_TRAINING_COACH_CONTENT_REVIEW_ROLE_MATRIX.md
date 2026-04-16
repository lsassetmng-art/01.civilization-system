# ============================================================
# TRAINING COACH CONTENT REVIEW ROLE MATRIX
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 080.policy
owner: Boss
prepared_by: Zero

purpose:
  - content governance を role matrix として明確化する
  - 誰が draft / review / approve / publish を担うかを固定する
  - safety content の優先度を高く保つ

role_definitions:
  owner_boss:
    description:
      - 最終方針決定者
  design_preparer_zero:
    description:
      - 初稿作成
      - 整合整理
  content_reviewer:
    description:
      - product behavior 整合確認
  safety_reviewer:
    description:
      - safety wording 確認
  db_reviewer_sato:
    description:
      - DB影響がある content structure change の確認
  localization_reviewer:
    description:
      - locale 間意味整合確認

content_types:
  - safety_notice
  - faq_answer
  - guide_content
  - onboarding_copy
  - premium_copy
  - notification_copy

matrix:

safety_notice:
  draft:
    - design_preparer_zero
  review:
    - content_reviewer
    - safety_reviewer
  approve:
    - owner_boss
  publish:
    - design_preparer_zero
  mandatory:
    - safety_reviewer required

faq_answer:
  draft:
    - design_preparer_zero
  review:
    - content_reviewer
  approve:
    - owner_boss
  publish:
    - design_preparer_zero

guide_content:
  draft:
    - design_preparer_zero
  review:
    - content_reviewer
    - safety_reviewer when needed
  approve:
    - owner_boss
  publish:
    - design_preparer_zero

onboarding_copy:
  draft:
    - design_preparer_zero
  review:
    - content_reviewer
  approve:
    - owner_boss
  publish:
    - design_preparer_zero

premium_copy:
  draft:
    - design_preparer_zero
  review:
    - content_reviewer
  approve:
    - owner_boss
  publish:
    - design_preparer_zero
  must_check:
    - no exaggeration
    - no unsupported feature claim

notification_copy:
  draft:
    - design_preparer_zero
  review:
    - content_reviewer
    - safety_reviewer if safety-related
  approve:
    - owner_boss
  publish:
    - design_preparer_zero

review_rules:
  - safety-related content は safety_reviewer を必須とする
  - product behavior と矛盾する copy は approve 不可
  - locale 追加時は localization_reviewer candidate の review を要求する
  - DB structure へ影響する content model 変更は db_reviewer_sato review 候補

do_not_rules:
  - review 未通過で active にしない
  - premium copy を FAQ の事実説明より優先しない
  - safety copy を marketing tone に寄せない
