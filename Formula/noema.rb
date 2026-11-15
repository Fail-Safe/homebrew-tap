class Noema < Formula
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"
  version "0.24.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.24.0/noema_0.24.0_darwin_arm64.tar.gz"
      sha256 "7bf37bc5c2b2a6fbf319a49de859e40b6cf48857fa718da0ec2bc29ff282bd72"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.24.0/noema_0.24.0_darwin_amd64.tar.gz"
      sha256 "7b32229b462b2793d23eddd3bd6b8aa489e3e0b6a13f212100b8fc4a1270e950"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.24.0/noema_0.24.0_linux_arm64.tar.gz"
      sha256 "465c393ef4960f163e9201bc49fd7993abe1bdb2d0deac642bc4cb68065c8666"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.24.0/noema_0.24.0_linux_amd64.tar.gz"
      sha256 "bb7716bc30d060c3bf311d13e5cbed6e71eb35f3e8e5b01c15710610a50becc7"
    end
  end

  def install
    bin.install "noema"
  end

  test do
    system "#{bin}/noema", "version"
  end
end
