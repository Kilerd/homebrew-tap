cask "anystorage" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.32"
  sha256 arm:   "743c296542b8e594518de9a76741052bed82343cec07d366c523855efadf071d",
         intel: "2d127378fa0f2d3786175b2045e17ebd2aa6a6c9a2368a721e82713d4356149f"

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
