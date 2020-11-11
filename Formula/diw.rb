class Diw < Formula
  desc "Diw is a CLI utility"
  homepage "https://dasistweb.de"
  url "https://github.com/MarcoFaul/diw/archive/v0.0.3.3.tar.gz"
  version "0.0.3.3"
  sha256 "1d25656ebc7746500ead45ac3669de5664ba713de753bf4a8e7141fbf4a1d849"

  depends_on "composer"

  def install
    composer install
    prefix.install Dir["*"]
    bin.install 'diw'
    doc.install 'README'
  end

  def caveats
    <<~EOS
      Diw is a CLI utility made for DIW

      To start diw simply run:

            diw

        Documentation is available at: https://diw-tool.netlify.app/
        Created by Marco Faul
    EOS
  end

    test do
      system "#{bin}/diw"
    end
end
