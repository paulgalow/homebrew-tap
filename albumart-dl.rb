class AlbumartDl < Formula
  include Language::Python::Virtualenv

  desc "Download HQ album cover art"
  homepage "https://github.com/paulgalow/albumart-dl"
  url "https://github.com/paulgalow/albumart-dl/releases/download/v0.1.0/albumart-dl-0.1.0.tar.gz"
  sha256 "1f40f57ee4cd24dcebe60ab50585301c1bc9356885223112e5fe4660f035d54f"

  bottle :unneeded

  depends_on "python"

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

  resource "yaspin" do
    url "https://files.pythonhosted.org/packages/fd/a2/2fb522b0d54b278e6ab52a2ffc4d3347668440c06306bb9308667701f4cb/yaspin-0.14.0.tar.gz"
    sha256 "8e52bf8079a48e2a53f3dfeec9e04addb900c101d1591c85df69cf677d3237e7"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/40/35/298c36d839547b50822985a2cf0611b3b978a5ab7a5af5562b8ebe3e1369/requests-2.20.1.tar.gz"
    sha256 "ea881206e59f41dbd0bd445437d792e43906703fff75ca8ff43ccdb11f33f263"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"albumart-dl", "--version"
  end
end
