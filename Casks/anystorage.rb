cask "anystorage" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.33"
  sha256 arm:   "c3e15b99e76cc9c3c3c5514bd33dfc4b11f6409bfae8ade7244de3d1cabc8066",
         intel: "367589bbb4f3b089e7dc1c0cb7147ecb0c5a5cb8846b6751ec20cd2af5b6bde9"

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
