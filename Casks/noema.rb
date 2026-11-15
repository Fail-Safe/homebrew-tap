cask "noema" do
  version "0.24.0"
  arch arm: "arm64", intel: "amd64"
  sha256 arm: "7bf37bc5c2b2a6fbf319a49de859e40b6cf48857fa718da0ec2bc29ff282bd72", intel: "7b32229b462b2793d23eddd3bd6b8aa489e3e0b6a13f212100b8fc4a1270e950"
  url "https://github.com/Fail-Safe/Noema/releases/download/v0.24.0/noema_0.24.0_darwin_#{arch}.tar.gz"
  name "Noema"
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"

  binary "noema"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/noema"]
  end
end
