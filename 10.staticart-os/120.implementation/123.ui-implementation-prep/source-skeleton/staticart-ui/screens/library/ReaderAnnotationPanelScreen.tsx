import { ScreenShell } from "../../components/common/ScreenShell";

export function ReaderAnnotationPanelScreen() {
  return (
    <ScreenShell
      shell={{
        title: "Reader Annotation Panel",
        loadState: "ready",
      }}
    >
      <section>
        <p>Bookmark list</p>
        <p>Note list</p>
        <p>Highlight list</p>
      </section>
    </ScreenShell>
  );
}
