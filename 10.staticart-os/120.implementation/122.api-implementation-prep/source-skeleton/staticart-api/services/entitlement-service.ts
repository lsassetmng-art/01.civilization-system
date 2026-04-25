import type {
  EntitlementDto,
  PurchaseReflectRequestDto,
  SubscriptionReflectRequestDto,
} from "../contracts/dto";
import type { RequestMeta, Uuid } from "../contracts/types";

export interface EntitlementRepository {
  getEffectiveEntitlement(assetId: Uuid, actorUserId: Uuid): Promise<EntitlementDto | null>;
  reflectPurchase(input: PurchaseReflectRequestDto, meta: RequestMeta): Promise<Record<string, unknown>>;
  reflectSubscription(input: SubscriptionReflectRequestDto, meta: RequestMeta): Promise<Record<string, unknown>>;
}

export class EntitlementService {
  constructor(private readonly repository: EntitlementRepository) {}

  async getEffectiveEntitlement(
    assetId: Uuid,
    actorUserId: Uuid,
  ): Promise<EntitlementDto | null> {
    return this.repository.getEffectiveEntitlement(assetId, actorUserId);
  }

  async reflectPurchase(
    input: PurchaseReflectRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.reflectPurchase(input, meta);
  }

  async reflectSubscription(
    input: SubscriptionReflectRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.reflectSubscription(input, meta);
  }
}
