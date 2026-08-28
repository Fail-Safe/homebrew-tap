class Noema < Formula
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"
  version "0.21.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.5/noema_0.21.5_darwin_arm64.tar.gz"
      sha256 "c44d00525d9328890403e68e0a74bcf3ed95500872fc476e06fd00452101303e"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.5/noema_0.21.5_darwin_amd64.tar.gz"
      sha256 "157a57581f93d7d454b8ee4cb289b61f5d9eb8938eec818190fcaed585dd7672"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.5/noema_0.21.5_linux_arm64.tar.gz"
      sha256 "f91ee0455a95c11b134e6bdc3fecf84d8d6af2b626167e310980cdc0cda245bc"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.5/noema_0.21.5_linux_amd64.tar.gz"
      sha256 "c27a387a0a7b205f3773122aca76919f766699180347559b21969377182f2d35"
    end
  end

  def install
    bin.install "noema"
  end

  test do
    system "#{bin}/noema", "version"
  end
end
