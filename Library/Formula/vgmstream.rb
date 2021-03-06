require 'formula'

class Vgmstream < Formula
  url 'https://vgmstream.svn.sourceforge.net/svnroot/vgmstream',
    :using => UnsafeSubversionDownloadStrategy, :revision => 967
  homepage 'http://hcs64.com/vgmstream.html'
  version 'r967'

  depends_on 'mpg123'
  depends_on 'libvorbis'

  def install
    Dir.chdir "test"
    system "make"
    bin.install "test" => "vgmstream"
    lib.install "../src/libvgmstream.a"
  end
end
