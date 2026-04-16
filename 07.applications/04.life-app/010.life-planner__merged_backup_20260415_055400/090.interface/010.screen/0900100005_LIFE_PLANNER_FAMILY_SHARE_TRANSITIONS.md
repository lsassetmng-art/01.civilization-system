# ============================================================
# LIFE PLANNER FAMILY SHARE TRANSITIONS
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 010.screen
phase: phase-2
owner: Boss
prepared_by: Zero

entry:
  - life_plan_detail -> family_share_setting

family_share_setting:
  sections:
    - shared_member_list
    - pending_invites
    - role_summary
    - share_scope_summary
    - share_history_entry

  actions:
    - invite_member
    - change_role
    - edit_scope
    - revoke_invite
    - view_history

member_invite_flow:
  - family_share_setting
  - member_invite
  - role_select
  - share_scope_edit
  - invite_confirm
  - share_history

roles:
  owner:
    capabilities:
      - full_access
      - scope_control
      - invite_control
  family_editor:
    capabilities:
      - edit_within_scope
      - comment
  family_viewer:
    capabilities:
      - read_only_within_scope

blocking:
  - Freeでは共同編集導線をpricing_guideへ送る
  - owner以外はshare_scope_editに入れない
