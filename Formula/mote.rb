class Mote < Formula
  desc "A fine-grained snapshot management tool for projects"
  homepage "https://github.com/shabaraba/mote"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shabaraba/mote/releases/download/v#{version}/mote-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "8bdc16ca053dda747a017cfda3d12cc2918157e485949c610b078c20a9870596" # ARM64 macOS
    else
      url "https://github.com/shabaraba/mote/releases/download/v#{version}/mote-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "6367a5e418d6a12a77aa70b7bf6e79b9573457836c61d527d3c0c89de4dd45c1" # x86_64 macOS
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shabaraba/mote/releases/download/v#{version}/mote-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fe49e1732bc502b7a45a1fe28c143c77a4c6db9cdd4af0338160bda49e683f22" # ARM64 Linux
    else
      url "https://github.com/shabaraba/mote/releases/download/v#{version}/mote-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7943858480445c41f163382275fb9019e5ad98498e7d6787c5f88fd17beff8fa" # x86_64 Linux
    end
  end

  def install
    bin.install "mote"
  end

  test do
    system "#{bin}/mote", "--version"
  end
end
