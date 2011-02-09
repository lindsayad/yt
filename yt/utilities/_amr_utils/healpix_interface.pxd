"""
A light interface to a few HEALPix routines

Author: Matthew Turk <matthewturk@gmail.com>
Affiliation: NSF / Columbia
Homepage: http://yt.enzotools.org/
License:
  Copyright (C) 2011 Matthew Turk.  All Rights Reserved.

  This file is part of yt.

  yt is free software; you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation; either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.
"""

import numpy as np
cimport numpy as np
cimport cython

from stdio cimport fopen, fclose, FILE

cdef extern from "healpix_vectors.h":
    #int mkPix2xy(long *ipix2x, long *ipix2y)
    #int mk_xy2pix(int *x2pix, int *y2pix)
    int pix2vec_nest(long nside, long ipix, double *v, double (*vertex)[3])
    #int vec2pix_nest( long nside, double *vec, long *ipix)
    #int pix2coord_nest( long nside, long ipix, int xsize, int ysize, int &npts,
    #                    int * &xpolygon, int * &ypolygon, int &draw_poly)