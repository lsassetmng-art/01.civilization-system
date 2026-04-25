import type {
  EntitlementDto,
  PurchaseReflectRequestDto,
  SubscriptionReflectRequestDto,
} from "../contracts/dto";
import type { RequestMeta, Uuid } from "../contracts/types";
import type { EntitlementRepository } from "../services/entitlement-service";
import type { DbClientFactory } from "./db-client";
import { STATICART_ENTITLEMENT_SQL } from "./sql/staticart-entitlement-sql";

export class EntitlementRepositoryImpl implements EntitlementRepository {
  constructor(private readonly dbFactory: DbClientFactory) {}

  async getEffectiveEntitlement(
    assetId: Uuid,
    actorUserId: Uuid,
  ): Promise<EntitlementDto | null> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query<{
      asset_id: string;
      effective_entitlement_state: EntitlementDto["effective_entitlement_state"];
      has_owned_permanent: boolean;
      has_subscription_access: boolean;
      sample_available: boolean;
      blocking_reason_code: string | null;
      computed_at: string;
    }>(STATICART_ENTITLEMENT_SQL.selectEffectiveEntitlement, [assetId, actorUserId]);

    const row = result.rows[0];
    if (!row) {
      return null;
    }

    return {
      asset_id: row.asset_id,
      effective_entitlement_state: row.effective_entitlement_state,
      has_owned_permanent: row.has_owned_permanent,
      has_subscription_access: row.has_subscription_access,
      sample_available: row.sample_available,
      blocking_reason_code: row.blocking_reason_code,
      computed_at: row.computed_at,
    };
  }

  async reflectPurchase(
    input: PurchaseReflectRequestDto,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query(STATICART_ENTITLEMENT_SQL.upsertPurchaseGrantSkeleton, [
      input.user_id,
      input.asset_id,
      input.transaction_id,
      input.grant_type,
      input.granted_at,
    ]);

    return result.rows[0] ?? {};
  }

  async reflectSubscription(
    input: SubscriptionReflectRequestDto,
    _meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    const db = this.dbFactory.createPersonaDbClient();
    const result = await db.query(STATICART_ENTITLEMENT_SQL.upsertSubscriptionGrantSkeleton, [
      input.user_id,
      input.subscription_event_type,
      input.effective_at,
    ]);

    return {
      ...(result.rows[0] ?? {}),
      affected_asset_ids: input.affected_asset_ids,
    };
  }
}
