class Asprint < Formula
  desc "Command-line program for OS X that pretty-prints out contents of compiled AppleScript (.scpt) files using ANSI escape sequences."
  homepage "http://hasseg.org/asprint"
  head "https://github.com/ali-rantakari/asprint.git"

  patch :DATA

  def install
    system "make", "asprint"
    system "make", "asprint.1"
    bin.install "asprint"
    man1.install "asprint.1"
  end

  test do
    system "asprint"
    system "man", "-w", "1", "asprint"
  end
end

__END__
diff --git i/Makefile w/Makefile
index d4a5642..418e740 100644
--- i/Makefile
+++ w/Makefile
@@ -14,7 +14,7 @@ VERSIONCHANGELOGFILELOC="$(TEMP_DEPLOYMENT_DIR)/changelog.html"
 GENERALCHANGELOGFILELOC="changelog.html"
 SCP_TARGET=$(shell cat ./deploymentScpTarget)
 DEPLOYMENT_INCLUDES_DIR="./deployment-files"
-COMPILER="/Developer/usr/bin/clang"
+COMPILER="clang"
 #COMPILER="gcc"


@@ -39,7 +39,7 @@ asprint: asprint.m ANSIEscapeHelper.m
 	@echo
 	@echo ---- Compiling:
 	@echo ======================================
-	$(COMPILER) -O2 -Wall -force_cpusubtype_ALL -mmacosx-version-min=10.5 -arch i386 -arch ppc -framework Cocoa -o $@ asprint.m ANSIEscapeHelper.m
+	$(COMPILER) -O2 -Wall -force_cpusubtype_ALL -mmacosx-version-min=10.5 -arch i386 -framework Cocoa -o $@ asprint.m ANSIEscapeHelper.m



diff --git i/asprint.pod w/asprint.pod
index 4e66492..e7b1555 100644
--- i/asprint.pod
+++ w/asprint.pod
@@ -33,6 +33,7 @@ Don't replace tabs with spaces (by default, tabs are replaced with 4 spaces).

 Replace tabs with I<num> number of spaces.

+=back

 =head1 SEE ALSO

