import type { RequestMeta, Uuid } from "../contracts/types";

export interface ProjectionJobDispatcher {
  enqueueEntitlementRecompute(assetId: Uuid, actor: RequestMeta): Promise<void>;
  enqueueLibraryRefresh(assetId: Uuid, actor: RequestMeta): Promise<void>;
  enqueueExhibitionRefresh(assetId: Uuid, actor: RequestMeta): Promise<void>;
  enqueueCx22073jwPublish(assetId: Uuid, actor: RequestMeta): Promise<void>;
}

export class StaticArtProjectionJobs implements ProjectionJobDispatcher {
  async enqueueEntitlementRecompute(assetId: Uuid, actor: RequestMeta): Promise<void> {
    void assetId;
    void actor;
  }

  async enqueueLibraryRefresh(assetId: Uuid, actor: RequestMeta): Promise<void> {
    void assetId;
    void actor;
  }

  async enqueueExhibitionRefresh(assetId: Uuid, actor: RequestMeta): Promise<void> {
    void assetId;
    void actor;
  }

  async enqueueCx22073jwPublish(assetId: Uuid, actor: RequestMeta): Promise<void> {
    void assetId;
    void actor;
  }
}
