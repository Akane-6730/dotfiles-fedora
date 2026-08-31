# macOS Capsule Light

This Fcitx5 Classic UI theme reproduces the supplied horizontal candidate panel:

- `#f9f9f9` rounded panel with a soft shadow
- `#f0f0f0` selected candidate with a `#0167c0` leading bar
- black candidate text and compact horizontal spacing
- no paging arrows or trailing control area

The closest source in `fcitx-contrib/fcitx5-theme-collection` is `win11`. Its
macOS renderer supports a native `MarkStyle=Bar`; Fcitx5 Classic UI does not, so
the bar is baked into `highlight.svg` here.

Select `macOS Capsule Light` in Fcitx5 Configuration > Addons > Classic User
Interface, keep the candidate list horizontal, and use `Microsoft YaHei UI 12`
for dimensions close to the reference at 2x display scale.
