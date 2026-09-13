# Homebrew cask template for Winter. Rendered per release by scripts/release.ts
# (caskFrom in scripts/release-lib.ts) into out/release/<version>/winter.rb — this .tmpl is
# the only copy committed to the repo; the rendered file is per-release build output.
#
# Interpolated at release time: the release version and the sha256 checksum of the release DMG.
# The download URL is derived from the version at cask-eval time via Ruby's #{version}
# interpolation (idiomatic cask style — keeps a real per-version sha256, passes brew audit).
# (Slot names written in prose, not the literal syntax, so caskFrom's replaceAll can't mangle
# this comment itself.)
cask "winter" do
  version "0.111.1"
  sha256 "01711263ab9bbcddea83d89ec9ae9e5aa7367e746839c7967fe7fba8c6373896"

  url "https://github.com/yanlingLabs/winter/releases/download/v#{version}/Winter-#{version}.dmg"
  name "Winter"
  desc "Menu bar app for the Winter AI engine"
  homepage "https://github.com/yanlingLabs/winter"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  auto_updates true

  app "Winter.app"
  binary "#{appdir}/Winter.app/Contents/Resources/winter-core", target: "winter"
end
