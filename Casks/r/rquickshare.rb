cask "rquickshare" do
  arch arm: "aarch64", intel: "x64"

  version "0.11.5"
  sha256 arm:   "0a30c11e9b476af75a780156119b3caacec894211e72905952b97c4eecaa8f22",
         intel: "e54e63e449d4ea1b2266acff238f0eaaa38acb896b6e0153e67db99e83afc420"

  url "https://github.com/Martichou/rquickshare/releases/download/v#{version}/r-quick-share-main_v#{version}_#{arch}.dmg"
  name "rquickshare"
  desc "Rust implementation of NearbyShare/QuickShare from Android"
  homepage "https://github.com/Martichou/rquickshare/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "RQuickShare.app"

  # No zap stanza required
  
end
