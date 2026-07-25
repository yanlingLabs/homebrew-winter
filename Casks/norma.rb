# Homebrew cask template for Norma. Rendered per release by scripts/release.ts
# (caskFrom in scripts/release-lib.ts) into out/release/<version>/norma.rb — this .tmpl is
# the only copy committed to the repo; the rendered file is per-release build output.
#
# Interpolated at release time: the release version and the sha256 checksum of the release DMG.
# The download URL is derived from the version at cask-eval time via Ruby's #{version}
# interpolation (idiomatic cask style — keeps a real per-version sha256, passes brew audit).
# (Slot names written in prose, not the literal syntax, so caskFrom's replaceAll can't mangle
# this comment itself.)
cask "norma" do
  version "0.2.006"
  sha256 "50e0add17a145dc4ece08678ef0272dc7e7cb33b1324586ed97fef50ce014fec"

  url "https://github.com/yanlingLabs/norma/releases/download/v#{version}/Norma-#{version}.dmg"
  name "Norma"
  desc "Menu bar app for the Norma AI engine"
  homepage "https://github.com/yanlingLabs/norma"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  auto_updates true

  app "Norma.app"
  binary "#{appdir}/Norma.app/Contents/Resources/norma-core", target: "norma"
end
