cask "anystorage" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.28"
  sha256 arm:   "033d488d3eaf99e95aee1df3a3a8a0897a3dd67cae1f77e9fc0f1ff4a14f3ace",
         intel: "ddb69497a5060f199c2fc52be52b3faa9e856d70f75f613dce2eab94080154bf"

  url "https://github.com/Kilerd/anystorage-release/releases/download/v#{version}/AnyStorage_#{version}_#{arch}.dmg"
  name "AnyStorage"
  desc "Desktop client for object storage, cloud drives, WebDAV, FTP and SFTP"
  homepage "https://anystorage.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "AnyStorage.app"

  zap trash: [
    "~/Library/Application Support/com.anystorage.app",
    "~/Library/Caches/anystorage",
    "~/Library/Caches/com.anystorage.app",
    "~/Library/Preferences/com.anystorage.app.plist",
    "~/Library/Saved Application State/com.anystorage.app.savedState",
    "~/Library/WebKit/anystorage",
    "~/Library/WebKit/com.anystorage.app",
  ]
end
