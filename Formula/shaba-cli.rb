class ShabaCli < Formula
  desc "Personal CLI toolkit by shabaraba"
  homepage "https://github.com/shabaraba/shaba-cli"
  version "0.1.7"
  license "MIT"

  on_macos do
    url "https://github.com/shabaraba/shaba-cli/releases/download/v0.1.7/shaba-cli-darwin-arm64"
    sha256 "cbce5b3011f14ee449df90f5019850ef6f16d60728a346caf9927ee83352eb57"

    def install
      bin.install "shaba-cli-darwin-arm64" => "shaba-cli"
    end
  end

  on_linux do
    url "https://github.com/shabaraba/shaba-cli/releases/download/v0.1.7/shaba-cli-linux-x64"
    sha256 "56ff26d40fcc6539314ed4e1c9417868704568bc8d905d81624c04a59e50682f"

    def install
      bin.install "shaba-cli-linux-x64" => "shaba-cli"
    end
  end

  test do
    assert_match "Personal CLI toolkit", shell_output("#{bin}/shaba-cli --help")
  end
end
