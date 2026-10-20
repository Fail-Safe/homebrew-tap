cask "noema" do
  version "0.23.1"
  arch arm: "arm64", intel: "amd64"
  sha256 arm: "f8a6b0a179b06d62c1f52a0c18623fbb1e6f2568eab10b57c613d012ec212eb2", intel: "e67cab292208b0f6f3361a880a3d53cc63cf9a7c3968b371ee24cd5f5f05c5ef"
  url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.1/noema_0.23.1_darwin_#{arch}.tar.gz"
  name "Noema"
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"

  binary "noema"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/noema"]
  end
end
