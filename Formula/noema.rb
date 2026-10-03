class Noema < Formula
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"
  version "0.22.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.22.0/noema_0.22.0_darwin_arm64.tar.gz"
      sha256 "5662f845e9503607e7bd03c9c59cc4211ac02a72df79f57789a03dbb70fb5239"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.22.0/noema_0.22.0_darwin_amd64.tar.gz"
      sha256 "dbf1246fc8914dd57f606a3e6d9eccc0651918f92388b219d0b9ab5f66fc7bef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.22.0/noema_0.22.0_linux_arm64.tar.gz"
      sha256 "aa66d4593e2c592c70e4135a4d157f90309f54cd27508edf44aaacfdfe122c91"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.22.0/noema_0.22.0_linux_amd64.tar.gz"
      sha256 "1134506e5027adb87f48133e5514d58422794a8ac204fab75146a2f9321f104d"
    end
  end

  def install
    bin.install "noema"
  end

  test do
    system "#{bin}/noema", "version"
  end
end
