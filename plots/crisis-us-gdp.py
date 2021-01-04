import matplotlib.pyplot as plt
import numpy as np
import math
from matplotlib.ticker import FuncFormatter

from matplotlib import patheffects
import matplotlib as mpl
import csv
import datetime as dt

import matplotlib.patches as mpatches
import matplotlib.dates as mdates

gdp = [4.5, # 1st 2005
       1.9,
       3.6,
       2.6,
       5.4,
       0.9,
       0.6,
       3.5, # 4th 2006
        0.9,  # 1st 2007
       2.3,  # 2nd 2007
       2.2,  # 3rd 2007
       2.5,  # 4th 2007
       -2.3, # 1st 2008
       2.1,  # 2nd 2008
       -2.1, # 3rd 2008
       -8.4, # 4th 2008
       -4.4, # 1st 2009
       -0.6, # 2nd 2009
       1.5,  # 3rd 2009
       4.5,  # 4th 2009
       1.5,
       3.7,
       3,
       2,
       -1,
       2.9,
       -0.1,
       4.7]  #4th 2011
years = [2005.125,
         2005.375,
         2005.625,
         2005.875,
         2006.125,
         2006.375,
         2006.625,
         2006.875,
         2007.125,
         2007.375,
         2007.625,
         2007.875,
         2008.125,
         2008.375,
         2008.625,
         2008.875,
         2009.125,
         2009.375,
         2009.625,
         2009.875,
         2010.125,
         2010.375,
         2010.625,
         2010.875,
         2011.125,
         2011.375,
         2011.625,
         2011.875,
         ]

# It's just for the high level understanding. Plus xkcd style is pretty
plt.xkcd()

mycol = '#343535'
background_col = '#fcfcfc'

plt.rcParams["font.family"] = "Concourse T4"
plt.rcParams["axes.linewidth"] = 2
plt.rcParams["axes.edgecolor"] = mycol
plt.rcParams["text.color"] = mycol
plt.rcParams["xtick.color"] = mycol
plt.rcParams["ytick.color"] = mycol
plt.rcParams["ytick.minor.width"] = 0
plt.rcParams['figure.facecolor'] = background_col

# Removes remaining white lines after xkcdifying the plot.
# Changing the background didn't fix it.
mpl.rcParams['path.effects'] = [patheffects.withStroke(linewidth=0)]

fig = plt.figure(figsize=(10, 5))
ax = fig.add_subplot(1, 1, 1)
fig.set_facecolor(background_col)
ax.set_facecolor(background_col)

def y_fmt(y, pos):
    return '{:,.1f}%'.format(y)
ax.get_yaxis().set_major_formatter(FuncFormatter(y_fmt))
# ax.get_xaxis().set_major_formatter(mdates.DateFormatter('%Y'))

ax.spines['right'].set_color('none')
ax.spines['top'].set_color('none')

ax.xaxis.set_tick_params(width=2)
ax.yaxis.set_tick_params(width=2)

# ax.set_xticks([dt.date(y, 1, 1) for y in [1970, 1980, 1990, 2000, 2010, 2018]])
ax.set_xticks([2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012])
#ax.set_yticks((0, 500, 1000, 1500, 2000))

plt.plot(years, gdp, '#343535')
# plt.plot(date, price, '#343535')

plt.savefig('us-gdp.svg', format="svg", transparent=False, bbox_inches='tight')
print("done")

