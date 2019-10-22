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

        inflation = []
        value = []
        years = range(1960, 2019)
        for row in reader:
            country = row['Country Code']
            if country == "SWE":
                (inflation, value) = parse_row(row, years)
        return (inflation, value, years)

def parse_row(row, years):
    val = 100.0
    infl = []
    value = []
    for x in years:
        value.append(val)
        inflation = float(row[str(x)])
        infl.append(inflation)
        val -= val * inflation/100.0
    return (infl, value)

# https://data.worldbank.org/indicator/FP.CPI.TOTL?locations=US-SE-XC
(inflation, value, years) = parse('API_FP.CPI.TOTL.ZG_DS2_en_csv_v2_316099.csv')

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
ax.set_xlim(1960, 2020)
ax.set_xticks((1960, 1970, 1980, 1990, 2000, 2010, 2018))
ax.set_ylim(0, 105)
ax.set_yticks((0, 20, 40, 60, 80, 100))

# #396AB1
# #DA7C30
# #3E9651
# #CC2529
# #535154
# #6B4C9A
# #922428
# #948B3D

par1 = ax.twinx()
par1.set_ylim(-2, 15)
par1.set_ylabel("Inflation rate")
def y_fmt(y, pos):
    return '{:,.1f}%'.format(y)
par1.get_yaxis().set_major_formatter(FuncFormatter(y_fmt))

ax.set_ylabel("Value")

# For different y-axis:
# https://stackoverflow.com/questions/9103166/multiple-axis-in-matplotlib-with-different-scales
#p1, = ax.plot(years, value, '#535154', label='Value')
#p2, = par1.plot(years, inflation, '#CC2529', label='Inflation rate')
p1, = ax.plot(years, value, '#CC2529', label='Value')
p2, = par1.plot(years, inflation, '#535154', label='Inflation rate')

ax.yaxis.label.set_color(p1.get_color())
par1.yaxis.label.set_color(p2.get_color())

ax.legend(handles=[p1, p2], loc='best')

#plt.legend(loc='upper right')

plt.savefig('inflation.svg', format="svg", transparent=True, bbox_inches='tight')
print "done"


