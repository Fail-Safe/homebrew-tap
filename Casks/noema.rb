cask "noema" do
  version "0.21.5"
  arch arm: "arm64", intel: "amd64"
  sha256 arm: "c44d00525d9328890403e68e0a74bcf3ed95500872fc476e06fd00452101303e", intel: "157a57581f93d7d454b8ee4cb289b61f5d9eb8938eec818190fcaed585dd7672"
  url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.5/noema_0.21.5_darwin_#{arch}.tar.gz"
  name "Noema"
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"

  binary "noema"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/noema"]
  end
end
