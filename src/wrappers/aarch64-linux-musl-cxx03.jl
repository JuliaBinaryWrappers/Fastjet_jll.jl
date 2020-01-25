# Autogenerated wrapper script for FastJet_jll for aarch64-linux-musl-cxx03
export libsiscone_spherical, libfastjettools, libsiscone, libfastjetplugins, libfastjet

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libsiscone_spherical`
const libsiscone_spherical_splitpath = ["lib", "libsiscone_spherical.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libsiscone_spherical_path = ""

# libsiscone_spherical-specific global declaration
# This will be filled out by __init__()
libsiscone_spherical_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libsiscone_spherical = "libsiscone_spherical.so.0"


# Relative path to `libfastjettools`
const libfastjettools_splitpath = ["lib", "libfastjettools.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libfastjettools_path = ""

# libfastjettools-specific global declaration
# This will be filled out by __init__()
libfastjettools_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libfastjettools = "libfastjettools.so.0"


# Relative path to `libsiscone`
const libsiscone_splitpath = ["lib", "libsiscone.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libsiscone_path = ""

# libsiscone-specific global declaration
# This will be filled out by __init__()
libsiscone_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libsiscone = "libsiscone.so.0"


# Relative path to `libfastjetplugins`
const libfastjetplugins_splitpath = ["lib", "libfastjetplugins.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libfastjetplugins_path = ""

# libfastjetplugins-specific global declaration
# This will be filled out by __init__()
libfastjetplugins_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libfastjetplugins = "libfastjetplugins.so.0"


# Relative path to `libfastjet`
const libfastjet_splitpath = ["lib", "libfastjet.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libfastjet_path = ""

# libfastjet-specific global declaration
# This will be filled out by __init__()
libfastjet_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libfastjet = "libfastjet.so.0"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"FastJet")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    global libsiscone_spherical_path = normpath(joinpath(artifact_dir, libsiscone_spherical_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libsiscone_spherical_handle = dlopen(libsiscone_spherical_path)
    push!(LIBPATH_list, dirname(libsiscone_spherical_path))

    global libfastjettools_path = normpath(joinpath(artifact_dir, libfastjettools_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libfastjettools_handle = dlopen(libfastjettools_path)
    push!(LIBPATH_list, dirname(libfastjettools_path))

    global libsiscone_path = normpath(joinpath(artifact_dir, libsiscone_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libsiscone_handle = dlopen(libsiscone_path)
    push!(LIBPATH_list, dirname(libsiscone_path))

    global libfastjetplugins_path = normpath(joinpath(artifact_dir, libfastjetplugins_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libfastjetplugins_handle = dlopen(libfastjetplugins_path)
    push!(LIBPATH_list, dirname(libfastjetplugins_path))

    global libfastjet_path = normpath(joinpath(artifact_dir, libfastjet_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libfastjet_handle = dlopen(libfastjet_path)
    push!(LIBPATH_list, dirname(libfastjet_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

