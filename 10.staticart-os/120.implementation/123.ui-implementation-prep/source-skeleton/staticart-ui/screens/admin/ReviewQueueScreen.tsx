import type { AssetSummaryViewModel } from "../../contracts/ui-types";
import { ScreenShell } from "../../components/common/ScreenShell";
import { ProductCard } from "../../components/marketplace/ProductCard";

export interface ReviewQueueScreenProps {
  items: AssetSummaryViewModel[];
}

export function ReviewQueueScreen(props: ReviewQueueScreenProps) {
  return (
    <ScreenShell
      shell={{
        title: "Review Queue",
        loadState: props.items.length === 0 ? "empty" : "ready",
      }}
    >
      <section>
        {props.items.map((item) => (
          <ProductCard key={item.assetId} asset={item} />
        ))}
      </section>
    </ScreenShell>
  );
}
