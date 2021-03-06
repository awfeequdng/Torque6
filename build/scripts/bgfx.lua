function bgfx()
    project "bgfx"
        location (LIB_PROJECT_DIR)
        targetdir (LIB_BUILD_DIR)

        targetname "bgfx"
        language "C++"
        kind "StaticLib"

        includedirs {
            path.join(LIB_DIR, "bgfx/include"),
            path.join(LIB_DIR, "bgfx/3rdparty"),
            path.join(LIB_DIR, "bgfx/3rdparty/dxsdk/include"),
            path.join(LIB_DIR, "bgfx/3rdparty/khronos"),
            path.join(LIB_DIR, "bgfx/3rdparty/fcpp"),
            path.join(LIB_DIR, "bgfx/3rdparty/glsl-optimizer/include"),
            path.join(LIB_DIR, "bgfx/3rdparty/glsl-optimizer/src/glsl"),
            path.join(LIB_DIR, "bgfx/3rdparty/glsl-optimizer/src/mapi"),
            path.join(LIB_DIR, "bgfx/3rdparty/glsl-optimizer/src/mesa"),
            path.join(LIB_DIR, "bgfx/3rdparty/glsl-optimizer/src/getopt"),
            path.join(LIB_DIR, "bgfx/3rdparty/glsl-optimizer/src"),

            path.join(LIB_DIR, "bgfx/3rdparty/scintilla/include"),
			path.join(LIB_DIR, "bgfx/3rdparty/scintilla/lexlib"),
        }

        files {
            path.join(LIB_DIR, "bgfx/src/**.h"),
            path.join(LIB_DIR, "bgfx/src/**.c"),
            path.join(LIB_DIR, "bgfx/src/**.cpp"),
            path.join(LIB_DIR, "bgfx/3rdparty/ocornut-imgui/**.cpp"),
            path.join(LIB_DIR, "bgfx/3rdparty/ocornut-imgui/**.h"),
            path.join(LIB_DIR, "bgfx/common/bounds.h"),
            path.join(LIB_DIR, "bgfx/common/bounds.cpp"),
            path.join(LIB_DIR, "bgfx/common/cube_atlas.h"),
            path.join(LIB_DIR, "bgfx/common/cube_atlas.cpp"),
            path.join(LIB_DIR, "bgfx/common/debugdraw/**.h"),
            path.join(LIB_DIR, "bgfx/common/debugdraw/**.cpp"),
            path.join(LIB_DIR, "bgfx/common/font/**.h"),
            path.join(LIB_DIR, "bgfx/common/font/**.cpp"),
            path.join(LIB_DIR, "bgfx/common/imgui/**.cpp"),
            path.join(LIB_DIR, "bgfx/common/imgui/**.h"),
            path.join(LIB_DIR, "bgfx/common/imgui/**.cpp"),
            path.join(LIB_DIR, "bgfx/common/nanovg/**.h"),
            path.join(LIB_DIR, "bgfx/common/nanovg/**.cpp"),
            path.join(LIB_DIR, "bgfx/include/bgfx.c99.h"),
            path.join(LIB_DIR, "bgfx/include/bgfx.h"),
            path.join(LIB_DIR, "bgfx/include/bgfxdefines.h"),
            path.join(LIB_DIR, "bgfx/include/bgfxplatform.c99.h"),
            path.join(LIB_DIR, "bgfx/include/bgfxplatform.h"),
            path.join(LIB_DIR, "bgfx/tools/shaderc/**.cpp"),
            path.join(LIB_DIR, "bgfx/tools/shaderc/**.h"),

            path.join(LIB_DIR, "bgfx/3rdparty/fcpp/**.h"),
		    path.join(LIB_DIR, "bgfx/3rdparty/fcpp/cpp1.c"),
		    path.join(LIB_DIR, "bgfx/3rdparty/fcpp/cpp2.c"),
		    path.join(LIB_DIR, "bgfx/3rdparty/fcpp/cpp3.c"),
		    path.join(LIB_DIR, "bgfx/3rdparty/fcpp/cpp4.c"),
		    path.join(LIB_DIR, "bgfx/3rdparty/fcpp/cpp5.c"),
		    path.join(LIB_DIR, "bgfx/3rdparty/fcpp/cpp6.c"),
		    path.join(LIB_DIR, "bgfx/3rdparty/fcpp/cpp6.c"),

		    path.join(LIB_DIR, "bgfx/3rdparty/glsl-optimizer/src/mesa/**.c"),
		    path.join(LIB_DIR, "bgfx/3rdparty/glsl-optimizer/src/glsl/**.cpp"),
		    path.join(LIB_DIR, "bgfx/3rdparty/glsl-optimizer/src/mesa/**.h"),
		    path.join(LIB_DIR, "bgfx/3rdparty/glsl-optimizer/src/glsl/**.c"),
		    path.join(LIB_DIR, "bgfx/3rdparty/glsl-optimizer/src/glsl/**.cpp"),
		    path.join(LIB_DIR, "bgfx/3rdparty/glsl-optimizer/src/glsl/**.h"),
		    path.join(LIB_DIR, "bgfx/3rdparty/glsl-optimizer/src/util/**.c"),
		    path.join(LIB_DIR, "bgfx/3rdparty/glsl-optimizer/src/util/**.h"),

			path.join(LIB_DIR, "bgfx/3rdparty/scintilla/src/**.cxx"),
			path.join(LIB_DIR, "bgfx/3rdparty/scintilla/src/**.h"),
			path.join(LIB_DIR, "bgfx/3rdparty/scintilla/lexlib/**.cxx"),
			path.join(LIB_DIR, "bgfx/3rdparty/scintilla/lexlib/**.h"),
			path.join(LIB_DIR, "bgfx/3rdparty/scintilla/lexers/**.cxx"),
            path.join(LIB_DIR, "bgfx/3rdparty/scintilla/include/**.h"),
        }

        removefiles {
            path.join(LIB_DIR, "bgfx/src/amalgamated.cpp"),
            path.join(LIB_DIR, "bgfx/src/**.bin.h"),
            path.join(LIB_DIR, "bgfx/common/**.ttf.h"),
            path.join(LIB_DIR, "bgfx/common/**.bin.h"),

            path.join(LIB_DIR, "bgfx/3rdparty/glsl-optimizer/src/glsl/glcpp/glcpp.c"),
		    path.join(LIB_DIR, "bgfx/3rdparty/glsl-optimizer/src/glsl/glcpp/tests/**"),
		    path.join(LIB_DIR, "bgfx/3rdparty/glsl-optimizer/src/glsl/glcpp/**.l"),
		    path.join(LIB_DIR, "bgfx/3rdparty/glsl-optimizer/src/glsl/glcpp/**.y"),
		    path.join(LIB_DIR, "bgfx/3rdparty/glsl-optimizer/src/glsl/ir_set_program_inouts.cpp"),
		    path.join(LIB_DIR, "bgfx/3rdparty/glsl-optimizer/src/glsl/main.cpp"),
		    path.join(LIB_DIR, "bgfx/3rdparty/glsl-optimizer/src/glsl/builtin_stubs.cpp"),
        }

		defines {
		    "__STDC_LIMIT_MACROS",
		    "__STDC_FORMAT_MACROS",
		    "__STDC_CONSTANT_MACROS",
			"DISABLED_SCI_NAMESPACE",
			"DISABLED_SCI_LEXER",
            "_WINSOCKAPI_",
		    "BGFX_CONFIG_PROFILER_REMOTERY=1"
		}

		buildoptions {
--			"-Wno-missing-field-initializers"),
		}

        configuration { "windows", "x32", "Release" }
            targetdir (LIB_BUILD_DIR .. "/windows.x32.release")

        configuration { "windows", "x32", "Debug" }
            targetdir (LIB_BUILD_DIR .. "/windows.x32.debug")

        configuration { "windows", "x64", "Release" }
            targetdir (LIB_BUILD_DIR .. "/windows.x64.release")

        configuration { "windows", "x64", "Debug" }
            targetdir (LIB_BUILD_DIR .. "/windows.x64.debug")

        configuration "Debug"
            defines     { "TORQUE_DEBUG", "BGFX_CONFIG_DEBUG=1" }
            flags       { "Symbols" }

        configuration "Release"
            defines     {  }

        configuration "vs*"
            includedirs { path.join(LIB_DIR, "bgfx/include/compat/msvc") }
            defines     { "_CRT_SECURE_NO_WARNINGS", "__STDC_FORMAT_MACROS" }
            buildoptions {
                "/wd4996",
                "/wd4291"
            }

        configuration "vs2015"
            windowstargetplatformversion "10.0.10240.0"

        configuration "windows"
            links { "ole32" }

        configuration { "mingw* or linux or osx" }
		    buildoptions {
			    "-fno-strict-aliasing", -- glsl-optimizer has bugs if strict aliasing is used.
			    "-Wno-unused-parameter",
                "-std=c++0x",
		    }
		    removebuildoptions {
			    "-Wshadow", -- glsl-optimizer is full of -Wshadow warnings ignore it.
		    }

        configuration "bsd"
            targetdir   "../bin/bsd"

        configuration "linux or bsd"
            defines     {  }
            links       { "m", "GL" }
            linkoptions { "-rdynamic" }
            buildoptions { "-fPIC" }

        configuration "macosx"
            linkoptions {
                "-framework Cocoa",
                "-framework Metal",
                "-framework QuartzCore",
                "-framework OpenGL",
            }
            includedirs { path.join(LIB_DIR, "bgfx/include/compat/osx"), }

        configuration { "xcode* or osx or ios*" }
            files {
                path.join(LIB_DIR, "bgfx/src/glcontext_eagl.mm"),
                path.join(LIB_DIR, "bgfx/src/glcontext_nsgl.mm"),
                path.join(LIB_DIR, "bgfx/src/renderer_mtl.mm"),
            }
end
