class AlbumartDl < Formula
  include Language::Python::Virtualenv

  desc "Download HQ album cover art"
  homepage "https://github.com/paulgalow/albumart-dl"
  url "https://github.com/paulgalow/albumart-dl/releases/download/v0.1.2/albumart-dl-0.1.2.tar.gz"
  sha256 "9ad0063dbbd7295336be6b314c124653ad809b5f33c5c910c4a5db9d65a7ee54"

  depends_on "python"

  # Requests dependencies

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/06/b8/d1ea38513c22e8c906275d135818fee16ad8495985956a9b7e2bb21942a1/certifi-2019.3.9.tar.gz"
    sha256 "b26104d6835d1f5e49452a26eb2ff87fe7090b89dfcaee5ea2212697e1e1d7ae"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz"
    sha256 "84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/ad/13/eb56951b6f7950cadb579ca166e448ba77f9d24efc03edd7e55fa57d04b7/idna-2.8.tar.gz"
    sha256 "c357b3f628cf53ae2c4c05627ecc484553142ca23264e593d327bcde5e9c3407"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/b1/53/37d82ab391393565f2f831b8eedbffd57db5a718216f82f1a8b4d381a1c1/urllib3-1.24.1.tar.gz"
    sha256 "de9529817c93f27c8ccbfead6985011db27bd0ddfcdb2d86f3f663385c6a9c22"
  end

  # Direct dependencies

  resource "yaspin" do
    url "https://files.pythonhosted.org/packages/09/5e/13d0b2c03952e357d6e480311b577664d2f64a082fafcbfeb0912face3b2/yaspin-0.14.1.tar.gz"
    sha256 "441f8a6761e347652d04614899fd0a9cfda7439e2d5682e664bd31230c656176"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/52/2c/514e4ac25da2b08ca5a464c50463682126385c4272c18193876e91f4bc38/requests-2.21.0.tar.gz"
    sha256 "502a824f31acdacb3a35b6690b5fbf0bc41d63a24a45c4004352b0242707598e"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"albumart-dl", "--version"
  end
end
