class Noema < Formula
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"
  version "0.22.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.22.1/noema_0.22.1_darwin_arm64.tar.gz"
      sha256 "3d60bc96aa3febaa9848dca939aa25472b511801d8f74ea57ef0944e5ab643be"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.22.1/noema_0.22.1_darwin_amd64.tar.gz"
      sha256 "313a1f63248ed46da38ab0fcdd4a024ddcb45ac58c51764a1dcab2cf1abec359"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.22.1/noema_0.22.1_linux_arm64.tar.gz"
      sha256 "f92c4e368edf1e59ef1269ce20e0c80fda3ddbf9e74f3b9a2764b86f62c4b071"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.22.1/noema_0.22.1_linux_amd64.tar.gz"
      sha256 "4d4474f03368e73b6bdcc36ba7c4a5435b6e668045256ca764e26fc8460cc124"
    end
  end

  def install
    bin.install "noema"
  end

  test do
    system "#{bin}/noema", "version"
  end
end
