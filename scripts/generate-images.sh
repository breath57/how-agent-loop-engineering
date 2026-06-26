#!/bin/bash
# ============================================================
# Generate images for the Loop Engineering series using GPT Image 2
# Prerequisites: codex CLI installed + ChatGPT Plus/Pro subscription
# Usage: bash scripts/generate-images.sh
# ============================================================

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILL_DIR="$HOME/.agents/skills/gpt-image-2"
OUT_DIR="$SCRIPT_DIR/../images"

mkdir -p "$OUT_DIR"

if [ ! -f "$SKILL_DIR/scripts/gen.sh" ]; then
  echo "Error: gpt-image-2 skill not found at $SKILL_DIR"
  echo "Install it first or run the prompts manually via ChatGPT."
  exit 1
fi

echo "=== Generating loop-anatomy.png ==="
bash "$SKILL_DIR/scripts/gen.sh" \
  --prompt "A clean, modern technical architecture diagram on white background. Title: 'Loop Engineering: The Anatomy of an Agent Loop'. Show a circular flow with labeled nodes: Trigger (clock) -> Goal (target) -> Action (gear) -> State (database) -> Verification (shield) -> Stop/Escalation (stop). Action->State->Verification has a loop-back arrow. Blue-gray professional color scheme. Flat design, minimal, Chinese and English labels." \
  --out "$OUT_DIR/loop-anatomy.png"

echo "=== Generating four-layers.png ==="
bash "$SKILL_DIR/scripts/gen.sh" \
  --prompt "A clean technical infographic on white background. Title: 'AI Application Evolution: Four Layers'. Show 4 nested concentric circles: Innermost 'Prompt Engineering' (2022-2024), second 'Context Engineering' (2024-2025), third 'Harness Engineering' (2026), outermost 'Loop Engineering' (2026). Blue gradient, flat design, professional." \
  --out "$OUT_DIR/four-layers.png"

echo "=== Generating verification-priority.png ==="
bash "$SKILL_DIR/scripts/gen.sh" \
  --prompt "A clean infographic on white. Title: 'Verification Priority: 5 Layers of Trust'. Vertical pyramid from top to bottom: Layer 1 'Deterministic Validators' (green), Layer 2 'External System State' (blue), Layer 3 'Verifier Agent' (yellow), Layer 4 'Human Gate' (orange), Layer 5 'Agent Self-Assessment' (red). Each layer has icon and Chinese+English label. Flat design." \
  --out "$OUT_DIR/verification-priority.png"

echo "=== Generating hero-banner.png ==="
bash "$SKILL_DIR/scripts/gen.sh" \
  --prompt "A wide hero banner for a technical blog series. Title in large text: 'Loop Engineering 专题'. Subtitle: '从 Prompt 到 Loop，让 AI 自己把事做完'. Show a stylized circular arrow/loop icon with gear elements. Blue-gray gradient background with white text. Modern, clean, professional. 1200x630 aspect ratio." \
  --out "$OUT_DIR/hero-banner.png"

echo "=== All images generated ==="
