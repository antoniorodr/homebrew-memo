class Memo < Formula
  include Language::Python::Virtualenv
  desc 'CLI app to manage your Apple Notes and Apple reminders'
  homepage 'https://github.com/antoniorodr/memo'
  url 'https://github.com/antoniorodr/memo/releases/download/v0.3.1/memo-0.3.1.tar.gz'
  sha256 'ba3bff4c074d3a9db3308a4eddd7294b9ae7c8b50d2653a4f3b1484129da69d4'
  license 'MIT'

  livecheck do
    url :stable
  end

  depends_on 'python@3.13'

  resource 'click' do
    url 'https://files.pythonhosted.org/packages/b9/2e/0090cbf739cee7d23781ad4b89a9894a41538e4fcf4c31dcdd705b78eb8b/click-8.1.8.tar.gz'
    sha256 'ed53c9d8990d83c2a27deae68e4ee337473f6330c040a31d4225c9574d16096a'
  end

  resource 'html2text' do
    url 'https://files.pythonhosted.org/packages/1a/43/e1d53588561e533212117750ee79ad0ba02a41f52a08c1df3396bd466c05/html2text-2024.2.26.tar.gz'
    sha256 '05f8e367d15aaabc96415376776cdd11afd5127a77fce6e36afc60c563ca2c32'
  end

  resource 'mistune' do
    url 'https://files.pythonhosted.org/packages/c4/79/bda47f7dd7c3c55770478d6d02c9960c430b0cf1773b72366ff89126ea31/mistune-3.1.3.tar.gz'
    sha256 'a7035c21782b2becb6be62f8f25d3df81ccb4d6fa477a6525b15af06539f02a0'
  end

  resource 'chardet' do
    url 'https://files.pythonhosted.org/packages/f3/0d/f7b6ab21ec75897ed80c17d79b15951a719226b9fababf1e40ea74d69079/chardet-5.2.0.tar.gz'
    sha256 '1b3b6ff479a8c414bc3fa2c0852995695c4a026dcd6d0633b2dd092ca39c1cf7'
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    output = shell_output("#{bin}/memo --help")
    assert_match 'Usage', output
  end
end
