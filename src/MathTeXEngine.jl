module MathTeXEngine
# Adapted from matplotlib mathtext engine
# https://github.com/matplotlib/matplotlib/blob/master/lib/matplotlib/_mathtext.py

using AbstractTrees
using Automa
using FreeTypeAbstraction
using LaTeXStrings

import Automa.RegExp: @re_str
import DataStructures: Stack
import FreeTypeAbstraction:
    ascender, descender, get_extent, hadvance, inkheight, inkwidth,
    leftinkbound, rightinkbound, topinkbound, bottominkbound
import GeometryBasics: Point2f0
import REPL.REPLCompletions: latex_symbols

const re = Automa.RegExp

export TeXExpr, texparse
export TeXElement, TeXChar, VLine, HLine, generate_tex_elements

include("parser/texexpr.jl")
include("parser/command_data.jl")
include("parser/parser.jl")

include("engine/fonts.jl")
include("engine/texelements.jl")
include("engine/layout.jl")

end # module
