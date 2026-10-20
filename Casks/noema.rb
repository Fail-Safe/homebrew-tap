cask "noema" do
  version "0.23.2"
  arch arm: "arm64", intel: "amd64"
  sha256 arm: "b2dd96ce979ec5777de77706f18ebdf66d5776e5e3ee78604f0767923a21746b", intel: "f278f594c33df9f78f4c557460b5acfac0a8affad14a8cec7a117d6ffdb30dd1"
  url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.2/noema_0.23.2_darwin_#{arch}.tar.gz"
  name "Noema"
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"

  binary "noema"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/noema"]
  end
end
