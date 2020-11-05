class Daprme < Formula
  desc "New app wizard for creation of a new Dapr project"
  homepage "https://dapr.io"
  url "https://github.com/dapr-templates/daprme/releases/download/v0.6.3/daprme"
  sha256 "59ee8130cfd3dd3fd93f9210ce5e3a90a1a9c70e88ac7a6e4c2e11e41ae91d9c"
  license "MIT"

  def install
    bin.install "daprme" => "daprme"
  end

  test do
    system "#{bin}/daprme", "--version"
  end
end
