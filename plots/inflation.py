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

def parse(url):
    with open(url, 'r') as infile:
        reader = csv.DictReader(infile)

        us = []
        sweden = []
        years = range(1960, 2019)
        for row in reader:
            country = row['Country Code']
            if country == "SWE":
                sweden = parse_row(row, years)
            elif country == "USA":
                us = parse_row(row, years)
            else:
                sys.exit("unsupported country code: " + country)
        return (us, sweden, years)

def parse_row(row, years):
    res = []
    for x in years:
        res.append(float(row[str(x)]))
    return res

# https://data.worldbank.org/indicator/FP.CPI.TOTL?locations=US-SE-XC
(us, sweden, years) = parse('API_FP.CPI.TOTL_DS2_en_csv_v2_315921.csv')

# It's just for the high level understanding. Plus xkcd style is pretty
plt.xkcd()

mycol = '#343535'

plt.rcParams["font.family"] = "Concourse T4"
plt.rcParams["axes.linewidth"] = 1
plt.rcParams["axes.edgecolor"] = mycol
plt.rcParams["text.color"] = mycol
plt.rcParams["xtick.color"] = mycol
plt.rcParams["ytick.color"] = mycol
plt.rcParams["ytick.minor.width"] = 0

# Removes remaining white lines after xkcdifying the plot.
# Changing the background didn't fix it.
mpl.rcParams['path.effects'] = [patheffects.withStroke(linewidth=0)]

fig = plt.figure(figsize=(8, 5))
ax = fig.add_subplot(1, 1, 1)

# def y_fmt(y, pos):
    # return ' ${:,.0f}'.format(y)
# ax.get_yaxis().set_major_formatter(FuncFormatter(y_fmt))
# ax.get_xaxis().set_major_formatter(mdates.DateFormatter('%Y'))

ax.spines['right'].set_color('none')
ax.spines['top'].set_color('none')

ax.xaxis.set_tick_params(width=2)
ax.yaxis.set_tick_params(width=2)

# ax.set_xticks([dt.date(y, 1, 1) for y in [1970, 1980, 1990, 2000, 2010, 2018]])
#ax.set_yticks((0, 25, 50, 75, 100, 125))
ax.set_xticks((1960, 1970, 1980, 1990, 2000, 2010, 2018))

# #396AB1
# #DA7C30
# #3E9651
# #CC2529
# #535154
# #6B4C9A
# #922428
# #948B3D

plt.plot(years, us, '#CC2529', label='United States')
plt.plot(years, sweden, '#535154', label='Sweden')

plt.legend(loc='lower right')

plt.savefig('inflation.svg', format="svg", transparent=True, bbox_inches='tight')
print "done"


