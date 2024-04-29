# Premake Extension to support Emscripten

This is a fork of https://github.com/TurkeyMan/premake-emscripten with a bunch of fixes:

* `.wasm` target extension
* `gmake` and `gmake2` actions
* `emscripten` system (and `os==emscripten` support)
* `wasm32` and `wasm64` architectures 
* fix `emcc` toolset validation in gmake actions

And the original:

* VisualStudio support through [vs-tool](https://github.com/juj/vs-tool)
