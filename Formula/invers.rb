class Invers < Formula
  desc "Professional-grade film negative to positive conversion tool"
  homepage "https://github.com/narrowstacks/invers"
  version "0.2.3"
  license any_of: ["MIT"]

  on_macos do
    on_intel do
      url "https://github.com/narrowstacks/invers/releases/download/v#{version}/invers-x86_64-apple-darwin.tar.gz"
      sha256 "9e8a6e309f6a4d2accb708f88936d5024f08f00a2e48058bc8e44b7f9c5d9ca2"
    end

    on_arm do
      url "https://github.com/narrowstacks/invers/releases/download/v#{version}/invers-aarch64-apple-darwin.tar.gz"
      sha256 "aaffe25b83f29e679a21b64c984b2064ba2839194434cfedb3b6ab2ea767651b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/narrowstacks/invers/releases/download/v#{version}/invers-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "de829a9e6c963e94ccfeaae69374c30130332e198ac5bf2b9610ccc62f9e65e0"
    end
  end

  def install
    bin.install "invers"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/invers --version")
  end
end
