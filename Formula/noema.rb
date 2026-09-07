class Noema < Formula
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"
  version "0.21.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.7/noema_0.21.7_darwin_arm64.tar.gz"
      sha256 "c55b3b104d2f7622139f99d6d57249f70891f17bfef0a958454bbe1fb582c2b1"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.7/noema_0.21.7_darwin_amd64.tar.gz"
      sha256 "0a074f7917917903b4f3c6eb8d9085b2e0d5114b4db60db18298f199fbd914e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.7/noema_0.21.7_linux_arm64.tar.gz"
      sha256 "bc0e6cfd66e6f56d21e06e938b183660c8de556a3a4ddb2bda0d288bd04ae05d"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.7/noema_0.21.7_linux_amd64.tar.gz"
      sha256 "bd2c933500b9374ad63e2619f74114fb52f7b605a5a98f6306fccf3e3ab8274a"
    end
  end

  def install
    bin.install "noema"
  end

  test do
    system "#{bin}/noema", "version"
  end
end
