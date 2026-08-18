cask "noema" do
  version "0.20.0"
  arch arm: "arm64", intel: "amd64"
  sha256 arm: "22455eabe14380855a9f6c4eb5e05a24f36f2a747c6e980c568802fb63c20572", intel: "c6fc0d468dd7140bee68548ce2b8e1754979abd396c43964de81d9fc301d5bc8"
  url "https://github.com/Fail-Safe/Noema/releases/download/v0.20.0/noema_0.20.0_darwin_#{arch}.tar.gz"
  name "Noema"
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"

  binary "noema"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/noema"]
  end
end
