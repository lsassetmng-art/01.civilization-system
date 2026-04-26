# ============================================================
# AICompanyManager Work Handoff Materials Design
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase U
status: work-handoff-materials-designed

## 1. Purpose

AICompanyManager must allow work to be handed off in the middle of design or development.

This is required because the user often continues work across chats and wants to continue with one pasteable handoff block.

## 2. Handoff Package

A handoff package should include:

- app name
- company id
- company name
- business domain
- robot naming rule
- organization snapshot
- current pipeline stage
- current role progress
- current work artifacts
- pending decisions
- delivery status
- open issues
- next recommended command
- exact paths
- safety status

## 3. Handoff Oneblock

The handoff oneblock is a plain text block intended for another chat.

It should include:
- target app
- current phase
- current state
- completed items
- deferred items
- next action
- paths
- DB/RLS/live status

## 4. Handoff Timing

Create handoff package:
- before switching chat
- before long interruption
- before live connection work
- before DB/RLS work
- before passing work from AICompanyManager to another worker
- before handing unfinished design or implementation work to the user

## 5. In-Progress Work Transfer

途中の仕事を渡す場合、AICompanyManager should export:

- work_snapshot
- artifact_snapshot
- instruction_snapshot
- decision_log
- unresolved_questions
- next_step
- oneblock_resume_prompt

## 6. Safety

The handoff package must not include:
- service role key
- database URL value
- private credentials
- AIWorkerOS internal prompt
- hidden reasoning
