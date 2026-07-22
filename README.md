# Brain-Tumor-Matlab

> **Legacy educational work — not a clinical system.**

This repository preserves a MATLAB-based educational image-classification study. Its historical scripts explore image preprocessing, hand-engineered feature extraction and selection, and class balancing. The repository is retained as a learning artifact and is not presented as current medical-AI work.

**This software is not a medical device, clinical decision-support tool, diagnostic aid, or validated method for detecting, classifying, or ruling out disease. Do not use it for patient care, triage, screening, or medical decisions.**

[Türkçe açıklama](README.tr.md)

## Repository contents

- `b_kod/` — historical MATLAB scripts and functions.
- `b_Kod[609].zip` — original archived material retained unchanged for provenance.
- `docs/PROVENANCE.md` — what is known about the retained material.
- `docs/LIMITATIONS.md` — important technical, data, and safety limitations.

The original repository history and unknown archived/binary material are intentionally preserved. They have not been reinterpreted as verified datasets, model artifacts, or reproducible clinical evidence.

## Historical workflow

At a high level, the scripts reference a local dataset layout, load images, apply filtering, derive engineered features, perform feature selection, and balance classes. This is a historical code path, not a verified end-to-end reproduction.

The scripts expect data outside the repository (for example, paths under `a_Data/`). No dataset is bundled or redistributed here. Dataset rights, provenance, consent, labeling quality, and any preprocessing history must be established independently before any reuse.

## Running the historical scripts

This repository does not currently provide a supported one-command demo. If you are reviewing the historical code:

1. Use a separate local copy of data that you are authorized to access and use.
2. Review every path and label assumption before execution.
3. Confirm the MATLAB release and required toolboxes in your own environment.
4. Treat outputs as exploratory only; do not infer clinical validity, model performance, or generalization.

Some comments in the retained scripts predate this documentation and may use historical wording or legacy encodings. The public documentation is maintained as UTF-8; the historical source is preserved rather than silently rewritten.

## Scope and maintenance

No accuracy, sensitivity, specificity, robustness, fairness, or clinical-performance claim is made by this repository. Contributions that add tests, a rights-cleared non-clinical fixture, or reproducibility documentation are welcome only when they preserve the limitations above.

See [provenance](docs/PROVENANCE.md) and [limitations](docs/LIMITATIONS.md) before working with the material.
