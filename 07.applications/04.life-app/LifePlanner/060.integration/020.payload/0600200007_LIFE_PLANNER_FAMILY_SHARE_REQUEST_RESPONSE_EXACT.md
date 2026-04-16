# ============================================================
# LIFE PLANNER FAMILY SHARE REQUEST / RESPONSE EXACT
# ============================================================

status: draft
system: LifePlanner
layer: 060.integration
subfolder: 020.payload
owner: Boss
prepared_by: Zero

operations:

  - operation_id: life_share.member.invite
    purpose:
      - 家族共有メンバーを招待する
    request:
      plan_id: string
      member_user_id: string
      role_type:
        type: string
        allowed:
          - family_viewer
          - family_editor
      share_scope:
        categories:
          - string
        allow_health: boolean
        allow_end_of_life: boolean
        allow_legal_memo: boolean
        allow_asset_summary: boolean
    response:
      status: ok
      data:
        shared_member:
          shared_member_id: string
          plan_id: string
          member_user_id: string
          role_type: string
          share_scope:
            categories:
              - string
            allow_health: boolean
            allow_end_of_life: boolean
            allow_legal_memo: boolean
            allow_asset_summary: boolean
          invite_status:
            type: string
            allowed:
              - pending
              - accepted
              - declined
          invited_at: string
      meta:
        request_id: string
        server_time: string

  - operation_id: life_share.member.list
    purpose:
      - 共有メンバー一覧を取得する
    request:
      plan_id: string
    response:
      status: ok
      data:
        shared_members:
          - shared_member_id: string
            member_user_id: string
            role_type: string
            invite_status: string
            share_scope:
              categories:
                - string
              allow_health: boolean
              allow_end_of_life: boolean
              allow_legal_memo: boolean
              allow_asset_summary: boolean
            invited_at: string
            accepted_at: string|null
      meta:
        request_id: string
        server_time: string

  - operation_id: life_share.scope.update
    purpose:
      - 共有範囲を更新する
    request:
      shared_member_id: string
      role_type:
        type: string
        allowed:
          - family_viewer
          - family_editor
      share_scope:
        categories:
          - string
        allow_health: boolean
        allow_end_of_life: boolean
        allow_legal_memo: boolean
        allow_asset_summary: boolean
    response:
      status: ok
      data:
        shared_member:
          shared_member_id: string
          role_type: string
          share_scope:
            categories:
              - string
            allow_health: boolean
            allow_end_of_life: boolean
            allow_legal_memo: boolean
            allow_asset_summary: boolean
          updated_at: string
      meta:
        request_id: string
        server_time: string
