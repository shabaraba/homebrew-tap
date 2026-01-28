class Mote < Formula
  desc "A fine-grained snapshot management tool for projects"
  homepage "https://github.com/shabaraba/mote"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shabaraba/mote/releases/download/v#{version}/mote-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "bffa6435dd558be4f0e0e6328fa1b493b007138ce04addc83a8c2a5d0377940a" # ARM64 macOS
    else
      url "https://github.com/shabaraba/mote/releases/download/v#{version}/mote-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "4fdb22b05b9ed6c24013526dfeb0127f2ba2f6c113374c2b2b6faddf40529965" # x86_64 macOS
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shabaraba/mote/releases/download/v#{version}/mote-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "56bbcf01a2e4c396d1d3598363a121cd6ea7885f5a9fddec696efaa221162857" # ARM64 Linux
    else
      url "https://github.com/shabaraba/mote/releases/download/v#{version}/mote-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c79006e4f194c9cd67034be650bb0f4b18302d401a2fb8dc5fa2d389b9e8b33b" # x86_64 Linux
    end
  end

  def install
    bin.install "mote"
  end

  test do
    system "#{bin}/mote", "--version"
  end
end
