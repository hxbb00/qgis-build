chcp 65001




set VCSDK=10.0.17763.0


set OSGEO4W_ROOT=C:\OSGeo4W64
set OSGEO4W_ARCH=x86_64
set CLCACHE_DIR=c:\clcache-x86_64
set PLATFORM=x64
set TARGET=Experimental
set OSGEO4W_PKG=qgis-dev
set OSGEO4W_DEPS=qgis-dev-deps
set MAJOR=3
set MINOR=33
set PATCH=0
set BINARY=50
set VERSION=3.33.0
set BUILDNAME=qgis-dev-3.33.0-db9fd7b74d-Experimental-VC14-x86_64
set BUILD_SHA=db9fd7b74d
set PATH=c:\cygwin\bin;%OSGEO4W_ROOT%\apps\Python39;%OSGEO4W_ROOT%\apps\Python39\Scripts;D:\Program Files\cmake-3.27.7-x86_64\bin\;%OSGEO4W_ROOT%\bin;%PATH%

type nul> skippackage
set OSGEO4W_CXXFLAGS=/MD /MP /Od /D NDEBUG

package-nightly.cmd %VERSION% %BINARY% %OSGEO4W_PKG% %OSGEO4W_ARCH% %BUILD_SHA%
