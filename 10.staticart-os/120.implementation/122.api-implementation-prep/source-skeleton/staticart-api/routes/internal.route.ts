import type {
  PurchaseReflectRequestDto,
  SubscriptionReflectRequestDto,
} from "../contracts/dto";
import type { RequestMeta, Uuid } from "../contracts/types";
import { success } from "../core/response";
import { requireActor } from "../guards/permission-guard";
import { EntitlementService } from "../services/entitlement-service";
import { ProjectionService } from "../services/projection-service";

export class InternalRoute {
  constructor(
    private readonly entitlementService: EntitlementService,
    private readonly projectionService: ProjectionService,
  ) {}

  async getEntitlement(meta: RequestMeta, assetId: Uuid, actorUserId: Uuid) {
    requireActor(meta, ["signed_in_user", "library_user", "support_readonly", "review_admin", "policy_admin"]);
    const data = await this.entitlementService.getEffectiveEntitlement(assetId, actorUserId);
    return success(meta.requestId, data);
  }

  async reflectPurchase(meta: RequestMeta, body: PurchaseReflectRequestDto) {
    requireActor(meta, ["internal_integration"]);
    const data = await this.entitlementService.reflectPurchase(body, meta);
    return success(meta.requestId, data);
  }

  async reflectSubscription(meta: RequestMeta, body: SubscriptionReflectRequestDto) {
    requireActor(meta, ["internal_integration"]);
    const data = await this.entitlementService.reflectSubscription(body, meta);
    return success(meta.requestId, data);
  }

  async getExhibitionProjection(meta: RequestMeta, assetId: Uuid) {
    requireActor(meta, ["exhibition_builder_reader", "review_admin", "policy_admin", "support_readonly"]);
    const data = await this.projectionService.getExhibitionProjection(assetId);
    return success(meta.requestId, data);
  }

  async refreshProjections(meta: RequestMeta, assetId: Uuid, targets: string[]) {
    requireActor(meta, ["review_admin", "policy_admin", "internal_integration"]);
    const data = await this.projectionService.enqueueProjectionRefresh(assetId, targets, meta);
    return success(meta.requestId, data);
  }
}
