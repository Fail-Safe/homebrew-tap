class Noema < Formula
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"
  version "0.23.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.1/noema_0.23.1_darwin_arm64.tar.gz"
      sha256 "f8a6b0a179b06d62c1f52a0c18623fbb1e6f2568eab10b57c613d012ec212eb2"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.1/noema_0.23.1_darwin_amd64.tar.gz"
      sha256 "e67cab292208b0f6f3361a880a3d53cc63cf9a7c3968b371ee24cd5f5f05c5ef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.1/noema_0.23.1_linux_arm64.tar.gz"
      sha256 "91474492e5c649cf3ee385d2c4f723ce75c4c16cb749a7f20ca6b5102f87e49c"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.1/noema_0.23.1_linux_amd64.tar.gz"
      sha256 "5fb37c6e100f6fb29f63671f60303851cbc89864958d2aaea1cd8e40202b5788"
    end
  end

  def install
    bin.install "noema"
  end

  test do
    system "#{bin}/noema", "version"
  end
end
