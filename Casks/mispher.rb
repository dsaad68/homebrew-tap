# Homebrew cask for the Mispher app, published to the dsaad68/homebrew-tap tap.
#
#   brew install --cask dsaad68/tap/mispher
#
# This is a TEMPLATE: the release workflow (.github/workflows/release.yml) substitutes 1.0.1,
# https://github.com/dsaad68/mispher/releases/download/1.0.1/Mispher.dmg, and 7c75e32faf787b4b49f4689108927bf2464ba42723b29b3a3187a9c36b6a838d and pushes the result to the tap on each release. It installs the prebuilt,
# Developer ID-signed + notarized Mispher.dmg from the GitHub Release -- no Xcode needed on the user's
# machine. Edit this template in the source monorepo (page/mispher/.github/homebrew/mispher.rb), not
# the tap.
cask "mispher" do
  version "1.0.1"
  sha256 "7c75e32faf787b4b49f4689108927bf2464ba42723b29b3a3187a9c36b6a838d"

  url "https://github.com/dsaad68/mispher/releases/download/1.0.1/Mispher.dmg"
  name "Mispher"
  desc "On-device voice-to-text and AI agent for macOS"
  homepage "https://github.com/dsaad68/mispher"

  livecheck do
    url :url
    strategy :github_latest
  end

  # macOS 26+ (Tahoe), Apple Silicon. The app needs the global-hotkey event tap, Accessibility text
  # insertion, and Apple Events automation, so it ships outside the App Store as a notarized DMG.
  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  app "Mispher.app"

  zap trash: [
    "~/Library/Application Support/Mispher",
    "~/Library/Caches/engineer.verybad.Mispher",
    "~/Library/HTTPStorages/engineer.verybad.Mispher",
    "~/Library/Preferences/engineer.verybad.Mispher.plist",
    "~/Library/Saved Application State/engineer.verybad.Mispher.savedState",
  ]
end
