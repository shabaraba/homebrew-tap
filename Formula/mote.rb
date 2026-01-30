class Mote < Formula
  desc "A fine-grained snapshot management tool for projects"
  homepage "https://github.com/shabaraba/mote"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shabaraba/mote/releases/download/v#{version}/mote-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "605877a2f74fa7cf1c1deaf8131561fe9420c859d077b82d7c0422072301b5a0" # ARM64 macOS
    else
      url "https://github.com/shabaraba/mote/releases/download/v#{version}/mote-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "8c1b28b734d2cee05e5adba2804793b8d111d1af71f47e44d9fa7c0c69388ac3" # x86_64 macOS
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shabaraba/mote/releases/download/v#{version}/mote-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9ceed2ecb5918ab3c92dc41350592bcde8af71714fc680a952e9e2403cc2dd50" # ARM64 Linux
    else
      url "https://github.com/shabaraba/mote/releases/download/v#{version}/mote-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6162a698039eb708cb0dff2ffe41e933605bf0cc42796b2015adb009eb1601af" # x86_64 Linux
    end
  end

  def install
    bin.install "mote"
  end

  test do
    system "#{bin}/mote", "--version"
  end
end
