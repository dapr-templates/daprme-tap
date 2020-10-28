class Daprme < Formula
  desc "New app wizard for creation of a new Dapr project"
  homepage "https://dapr.io"
  url "https://github.com/dapr-templates/daprme/releases/download/v0.6.1/daprme"
  sha256 "03493a00a6ca29b60cd03be415858da8dcc00c5567d9f89c6c666716f4ae20f4"
  license "MIT"

  def install
    bin.install "daprme" => "daprme"
  end

  test do
    system "#{bin}/daprme", "--version"
  end
end
