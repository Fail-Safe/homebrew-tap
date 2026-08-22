class Noema < Formula
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"
  version "0.21.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.2/noema_0.21.2_darwin_arm64.tar.gz"
      sha256 "8ee864db1c93827e9636453df027a610c0a2450c325c92977f3bc6b98d928072"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.2/noema_0.21.2_darwin_amd64.tar.gz"
      sha256 "217b637ea2919e1aeb808c350e997deb6ffc7d2868bc4fcae01379e3fa295872"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.2/noema_0.21.2_linux_arm64.tar.gz"
      sha256 "6fb03f4a9c56081f003fa3a5156955aff9f8cd3ba48bf36c27104ca7535647b5"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.2/noema_0.21.2_linux_amd64.tar.gz"
      sha256 "b6ff4fd17900482a70519dafd9023aeccd06dc5f4ffc18448b85b310c07fb41a"
    end
  end

  def install
    bin.install "noema"
  end

  test do
    system "#{bin}/noema", "version"
  end
end
