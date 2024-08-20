# qgis-build
http://gwmodel.whu.edu.cn/mirrors/osgeo4w/

http://gwmodel.whu.edu.cn/mirrors/osgeo4w/v2/x86_64/release/qgis/qgis-ltr/setup.hint

https://download.osgeo.org/osgeo4w/v2/x86_64/release/qgis/qgis-ltr/setup.hint

http://gwmodel.whu.edu.cn/mirrors/osgeo4w/v2/x86_64/setup.ini

# Tips
关闭杀毒软件可以避免一些文件占用错误

# git.osgeo.org
https://git.osgeo.org/gitea/explore/repos

# Older versions from repo snapshots
Each time the repository is updated the previous version of the setup.ini is kept. Old packages files are usually not removed from the repo (unless it necessary to, to make room for new one). The snapshots reside at ​https://download.osgeo.org/osgeo4w/v2/snapshots. To get an older version find the date of the package you want (eg. qgis-ltr-3.22.9-1.tar.bz2 from 2022-Jul-15 14:49 in ​http://download.osgeo.org/osgeo4w/v2/x86_64/release/qgis/qgis-ltr/) and then pick a ​https://download.osgeo.org/osgeo4w/v2/snapshots/ from shortly after that date, eg. ​https://download.osgeo.org/osgeo4w/v2/snapshots/20220715-190611/. Add that URL as User URL on the "Choose a download Site" page (or via the command line option --site). Picking qgis-ltr will then get you 3.22.9 instead of the latest version. I'd recommend to do this in a separate installation as in existing installations versions of dependencies probably won't be properly downgraded and will likely break.

比如想获取版本qgis-ltr-3.22.9-1.tar.bz2,从(http://download.osgeo.org/osgeo4w/v2/x86_64/release/qgis/qgis-ltr/) 查询得知qgis-ltr-3.28.10-1.tar.bz2是下一个版本,发布时间为2023-Aug-18 14:45, 那么在https://download.osgeo.org/osgeo4w/v2/snapshots/ 这个地址里早于2023-Aug-18 14:45的版本就是qgis-ltr-3.22.9的最新版

# osgeo4w 源码
https://github.com/hxbb00/OSGeo4W/blob/master/src/setup/CMakeLists.txt
