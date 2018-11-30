class AlbumartDl < Formula
  include Language::Python::Virtualenv

  desc "Download HQ album cover art"
  homepage "https://github.com/paulgalow/albumart-dl"
  url "https://github.com/paulgalow/albumart-dl/releases/download/v0.1.0/albumart-dl-0.1.0.tar.gz"
  sha256 "624493c47fd403b44447ad8dd7ce3cbf9ff97630099fa9cd4f3a8f655501255e"

  bottle :unneeded

  depends_on "python"

  # Halo dependencies

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/e6/76/257b53926889e2835355d74fec73d82662100135293e17d382e2b74d1669/colorama-0.3.9.tar.gz"
    sha256 "48eb22f4f8461b1df5734a074b57042430fb06e1d61bd1e11b078c0fe6d7a1f1"
  end

  resource "cursor" do
    url "https://files.pythonhosted.org/packages/23/0d/bec47260080d5e4b1d88a08b31c6c44b476a9c7509e41b1d84967027d32d/cursor-1.2.0.tar.gz"
    sha256 "8ee9fe5b925e1001f6ae6c017e93682583d2b4d1ef7130a26cfcdf1651c0032c"
  end

  resource "enum34" do
    url "https://files.pythonhosted.org/packages/bf/3e/31d502c25302814a7c2f1d3959d2a3b3f78e509002ba91aea64993936876/enum34-1.1.6.tar.gz"
    sha256 "8ad8c4783bf61ded74527bffb48ed9b54166685e4230386a9ed9b1279e2df5b1"
  end

  resource "log_symbols" do
    url "https://files.pythonhosted.org/packages/9a/bf/e9509fe2481a4e2b0432dad049126320d5aac5b20edbe67c2e993a151178/log_symbols-0.0.11.tar.gz"
    sha256 "87be2f283cd6f455d89b76abcf2805fad5692ec9dcd8a31d10a4c975f51392eb"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/16/d8/bc6316cf98419719bd59c91742194c111b6f2e85abac88e496adefaf7afe/six-1.11.0.tar.gz"
    sha256 "70e8a77beed4562e7f14fe23a786b54f6296e34344c23bc42f07b15018ff98e9"
  end

  resource "spinners" do
    url "https://files.pythonhosted.org/packages/01/3f/156b7faa2cbadd35a504c9ee852db32e07ff5f106bbf288d49b22b061135/spinners-0.0.23.tar.gz"
    sha256 "f396fea1ee00c0622988d7d2bf2895d26dd6f70850ca2ce94eaca52ca4873560"
  end

  resource "termcolor" do
    url "https://files.pythonhosted.org/packages/8a/48/a76be51647d0eb9f10e2a4511bf3ffb8cc1e6b14e9e4fab46173aa79f981/termcolor-1.1.0.tar.gz"
    sha256 "1d6d69ce66211143803fbc56652b41d73b4a400a2891d7bf7a1cdf4c02de613b"
  end

  # Requests dependencies

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/55/54/3ce77783acba5979ce16674fc98b1920d00b01d337cfaaf5db22543505ed/certifi-2018.11.29.tar.gz"
    sha256 "47f9c83ef4c0c621eaef743f133f09fa8a74a9b75f037e8624f83bd1b6626cb7"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz"
    sha256 "84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/65/c4/80f97e9c9628f3cac9b98bfca0402ede54e0563b56482e3e6e45c43c4935/idna-2.7.tar.gz"
    sha256 "684a38a6f903c1d71d6d5fac066b58d7768af4de2b832e426ec79c30daa94a16"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/b1/53/37d82ab391393565f2f831b8eedbffd57db5a718216f82f1a8b4d381a1c1/urllib3-1.24.1.tar.gz"
    sha256 "de9529817c93f27c8ccbfead6985011db27bd0ddfcdb2d86f3f663385c6a9c22"
  end

  # Direct dependencies

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
