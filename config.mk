#==========================================================================
#
# Implemented combinations of OS and FORT are:
#
#  +--------+-----------+
#  | OS     | FORT      |
#  |--------+-----------+
#  | Linux  | ifort     |
#  | Linux  | pgi       |
#  | Linux  | g95       |
#  | Linux  | gfortran  |
#  | IRIX   | f90       |
#  +--------+-----------+
#
# For ports to other achictectures, create a corresponding file
# in the "Compilers" directory. Contributions are most welcome!.
#
#==========================================================================

#-------------------------------#
#  Platform specific variables  #
#-------------------------------#

OS ?= Linux

# Compiler (gfortran (default), ifort, pgi, g95)

FORT ?= gfortran

#==========================================================================
#  Machine format, can be either big_endian, little_endian or native machine
#  format. YOUR CHOICE MUST BE CONSITENT WITH THE WAY YOU CREATE THE INPUT
#  FILE (see also matlab routines gread.m and gwrite.m)
#
#  Note: with some compilers (e.g. IRIX-f90) some options are
#  not available
#==========================================================================

FORMAT ?= big_endian

#==========================================================================
# PRECISION attributed for the internal data processing 
# single or double (default)
#==========================================================================

PRECISION ?= double

#==========================================================================
# Start of user-defined options. Modify macro variables: 'on' is TRUE while
# blank is FALSE.
#==========================================================================
#
#  Activate debugging compiler options:

DEBUG ?=TRUE

#  Activate static linking

STATIC ?= TRUE

#  Activate OpenMPi

OPENMP ?= TRUE

#  Activate OFAST

OFAST ?= TRUE

#==========================================================================
# Library names and locations
# Variables name use the following naming scheme:
# 
# <library>_INCDIR: directory containing the include files and compiled modules (e.g. /home/user/mpi/include)
# <library>_LIBDIR: directory containing the library  (e.g. /home/user/mpi/lib)
# <library>_LIB: name of the library (including dependencies) for the linker (e.g. -lmpi -lpthread)
#
#==========================================================================

#==========================================================================
# netCDF library
# Note if the nc-config tool is present and NETCDF_CONFIG is defined, then the values of 
# NETCDF_INCDIR, NETCDF_LIBDIR and NETCDF_LIB are not used
#==========================================================================

#NETCDF_CONFIG ?= nf-config

#==========================================================================
# This directory should contains a file usually called netcdf.inc and 
# netcdf.mod
#==========================================================================

#NETCDF_INCDIR ?= 

#==========================================================================
# Locations of the NetCDF library
# This directory should contains a file usually called libnetcdf.a
#==========================================================================

#NETCDF_LIBDIR ?= 
#NETCDF_LIB ?= -lnetcdf

#==========================================================================
# Lapack library
#==========================================================================

#LAPACK_LIBDIR ?= 
#LAPACK_LIB ?= -llapack

#==========================================================================
# BLAS library
#==========================================================================

#BLAS_LIBDIR ?=
#BLAS_LIB ?= -lblas

#==========================================================================
# ARPACK library
# Locations of the ARPACK library
# This directory should contains a file usually called libarpack.a
#==========================================================================

#ARPACK_LIBDIR ?=
#ARPACK_LIB ?= -larpack

