class Memo < Formula
  include Language::Python::Virtualenv
  desc 'CLI app to manage your Apple Notes and Apple reminders'
  homepage 'https://github.com/antoniorodr/memo'
  url 'https://github.com/antoniorodr/memo/releases/download/v0.5.2/memo-0.5.2.tar.gz'
  sha256 '8d871a05d92adb2fc68b2a8a5c6e5e037d1d46a7ca8b17f0dc5ae607cbd7ea8c'
  license 'MIT'

  livecheck do
    url :stable
  end

  depends_on 'fzf'
  depends_on 'python@3.13'

  resource 'click' do
    url 'https://files.pythonhosted.org/packages/57/75/31212c6bf2503fdf920d87fee5d7a86a2e3bcf444984126f13d8e4016804/click-8.3.2.tar.gz'
    sha256 '14162b8b3b3550a7d479eafa77dfd3c38d9dc8951f6f69c78913a8f9a7540fd5'
  end

  resource 'html2text' do
    url 'https://files.pythonhosted.org/packages/f8/27/e158d86ba1e82967cc2f790b0cb02030d4a8bef58e0c79a8590e9678107f/html2text-2025.4.15.tar.gz'
    sha256 '948a645f8f0bc3abe7fd587019a2197a12436cd73d0d4908af95bfc8da337588'
  end

  resource 'mistune' do
    url 'https://files.pythonhosted.org/packages/9d/55/d01f0c4b45ade6536c51170b9043db8b2ec6ddf4a35c7ea3f5f559ac935b/mistune-3.2.0.tar.gz'
    sha256 '708487c8a8cdd99c9d90eb3ed4c3ed961246ff78ac82f03418f5183ab70e398a'
  end

  resource 'chardet' do
    url 'https://files.pythonhosted.org/packages/19/b6/9df434a8eeba2e6628c465a1dfa31034228ef79b26f76f46278f4ef7e49d/chardet-7.4.3.tar.gz'
    sha256 'cc1d4eb92a4ec1c2df3b490836ffa46922e599d34ce0bb75cf41fd2bf6303d56'
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    output = shell_output("#{bin}/memo --help")
    assert_match 'Usage', output
  end
end
