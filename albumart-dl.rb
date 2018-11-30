class AlbumartDl < Formula
  include Language::Python::Virtualenv

  desc "Download HQ album cover art"
  homepage "https://github.com/paulgalow/albumart-dl"
  url "https://github.com/paulgalow/albumart-dl/releases/download/v0.1.0/albumart-dl-0.1.0.tar.gz"
  sha256 "cfaebc997328f969b0c0e80710364fd73e2fec10cb9b1aaada1b58dc1748d9b4"

  bottle :unneeded

  depends_on "python"

  resource "halo" do
    url "https://files.pythonhosted.org/packages/3a/16/1bd5c1364a898c58be8ab2c399654340d70825db5758bcf1bd42f2613aae/halo-0.0.22.tar.gz"
    sha256 "35c42d33ee6a62e0d3bca5dc9a1bc1e1c22464190d8fca4f1205934c80836470"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/40/35/298c36d839547b50822985a2cf0611b3b978a5ab7a5af5562b8ebe3e1369/requests-2.20.1.tar.gz"
    sha256 "ea881206e59f41dbd0bd445437d792e43906703fff75ca8ff43ccdb11f33f263"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"albumart-dl", "--version", "https://youtu.be/he2a4xK8ctk"
  end
end
