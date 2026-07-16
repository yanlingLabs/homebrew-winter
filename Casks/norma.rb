# Homebrew cask template for Norma. Rendered per release by scripts/release.ts
# (caskFrom in scripts/release-lib.ts) into out/release/<version>/norma.rb — this .tmpl is
# the only copy committed to the repo; the rendered file is per-release build output.
#
# Interpolated at release time: the release version, the sha256 checksum of the release DMG,
# and the GitHub release asset URL for that DMG. (Written in prose, not the literal slot
# syntax below, so caskFrom's replaceAll can't mangle this comment itself.)
cask "norma" do
  version "0.2.001"
  sha256 "1de8cbd8d55ab3a84d3bc1e2e470b260ee1a046ebd9781386910cb91eab0f3e8"

  url "https://github.com/yanlingLabs/norma/releases/download/v0.2.001/Norma-0.2.001.dmg"
  name "Norma"
  desc "Menu bar app for the Norma AI engine"
  homepage "https://github.com/yanlingLabs/norma"

  auto_updates true

  app "Norma.app"
end
