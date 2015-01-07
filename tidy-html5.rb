class TidyHtml5 < Formula
  homepage "http://w3c.github.io/tidy-html5/"
  head "https://github.com/w3c/tidy-html5.git"

  def install
    ENV.deparallelize

    system "make", "-C", "build/gmake"
    system "make", "installexes", "installmanpage", "-C", "build/gmake",
                   "runinst_prefix=#{prefix}",
                   "devinst_prefix=#{prefix}",
                   "maninst=#{man}"
  end

  test do
    system "tidy"
  end
end
