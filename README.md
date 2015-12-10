# vim

My customized Vim configuration files &amp; plugins.  Focused on backend ES6 NodeJS / PostgreSQL / Bash / YAML.

All bundles are included as git submodules and loaded using the "Pathogen" package manager.


https://github.com/scrooloose/syntastic
https://github.com/airblade/vim-gitgutter
https://github.com/Valloric/YouCompleteMe
https://github.com/ternjs/tern_for_vim
https://github.com/Raimondi/delimitMate
https://github.com/nathanaelkane/vim-indent-guides

Update git submodule dependencies with:
```
git submodule update --init --recursive
```

YouCompleteMe Issues
https://github.com/Valloric/YouCompleteMe/issues/8
Vim must be built with python2 support
Cmake links against wrong python version or something but this fixes:
```
DYLD_FORCE_FLAT_NAMESPACE=1 vim
```
Possible to fix by passing -DPYTHON_LIBRARY and -DPYTHON_INCLUDE_DIR to Cmake
-DPYTHON_LIBRARY=/System/Library/Frameworks/Python.framework/Versions/2.7/

cmake -G "Unix Makefiles" -DPYTHON_LIBRARY=/System/Library/Frameworks/Python.framework/Versions/2.7/lib/libpython2.7.dylib -DPYTHON_INCLUDE_DIR=/System/Library/Frameworks/Python.framework/Versions/2.7/Headers . ../third_party/ycmd/cpp


rvm use 2.2.2
gem install sqlint
npm install jshint -g
npm install jscs -g


TODO:
DYLD_FORCE_FLAT_NAMESPACE=1 vim
https://github.com/tomtom/tcomment_vim
https://wincent.com/products/command-t
http://stackoverflow.com/questions/102384/using-vims-tabs-like-buffers
Custom color theme
Bash
YAML
Python 3
Scala
HTML
CSS
R
