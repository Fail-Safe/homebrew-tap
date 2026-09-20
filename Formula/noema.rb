class Noema < Formula
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"
  version "0.21.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.9/noema_0.21.9_darwin_arm64.tar.gz"
      sha256 "79831cf4fde9e786ee58b47ff6b89e700bfc24ec8c5e1dbf1612be8ef3c0b187"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.9/noema_0.21.9_darwin_amd64.tar.gz"
      sha256 "ecab0a1f7cddc9c52dc0fc896970862018d18953f1ea0e23f1bc912c1919aa09"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.9/noema_0.21.9_linux_arm64.tar.gz"
      sha256 "3932d08b1d39680d6322953518e79ada2333447e6ad3cc76a09f4748b3dbc2b9"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.9/noema_0.21.9_linux_amd64.tar.gz"
      sha256 "e253416bd906233bb176a2d0ec8d09f0b0749a5d1164bc89c7033833bd9d6ee9"
    end
  end

  def install
    bin.install "noema"
  end

  test do
    system "#{bin}/noema", "version"
  end
end
