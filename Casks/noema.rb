cask "noema" do
  version "0.21.0"
  arch arm: "arm64", intel: "amd64"
  sha256 arm: "5adeaf0c7fbb5afbbd35c906275f2f4904a67524b41011870918304371fbce1f", intel: "80060793d084a2f7f262fc61172efa5ce7efeee05d104d4df6ccb9aaf2535b92"
  url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.0/noema_0.21.0_darwin_#{arch}.tar.gz"
  name "Noema"
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"

  binary "noema"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/noema"]
  end
end
