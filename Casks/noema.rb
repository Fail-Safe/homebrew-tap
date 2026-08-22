cask "noema" do
  version "0.21.2"
  arch arm: "arm64", intel: "amd64"
  sha256 arm: "8ee864db1c93827e9636453df027a610c0a2450c325c92977f3bc6b98d928072", intel: "217b637ea2919e1aeb808c350e997deb6ffc7d2868bc4fcae01379e3fa295872"
  url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.2/noema_0.21.2_darwin_#{arch}.tar.gz"
  name "Noema"
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"

  binary "noema"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/noema"]
  end
end
