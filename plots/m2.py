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

        value = []
        date = []
        for row in reader:
            date.append(dt.datetime.strptime(row['DATE'], '%Y-%m-%d'))
            value.append(float(row['M2']))
        return (date, value)

# https://fred.stlouisfed.org/series/M2
(date, value) = parse('data/M2.csv')

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

def y_fmt(y, pos):
    return '${:,.0f}'.format(int(y/1000))
ax.get_yaxis().set_major_formatter(FuncFormatter(y_fmt))
ax.get_xaxis().set_major_formatter(mdates.DateFormatter('%Y'))
ax.set_ylabel("Supply in trillions")

ax.spines['right'].set_color('none')
ax.spines['top'].set_color('none')

ax.xaxis.set_tick_params(width=2)
ax.yaxis.set_tick_params(width=2)

# ax.set_xlim(dt.datetime(1965, 01, 01), dt.datetime(2020, 04, 01))
# ax.set_xticks([dt.datetime(y, 01, 01) for y in range(2010, 2021)])
ax.set_xticks([dt.datetime(y, 01, 01) for y in range(2010, 2021, 2)])
# ax.set_ylim(0, 27000000)

# plt.annotate(
#     'The 2008 financial crisis',
#     xy=(dt.datetime(2006, 1, 1), 9700000),
#         arrowprops=dict(arrowstyle='->'),
#         xytext=(dt.datetime(1990, 1, 1), 12500000))
#
plt.annotate(
    'COVID-19 pandemic',
    xy=(dt.datetime(2019, 10, 1), 15500),
        arrowprops=dict(arrowstyle='->'),
        xytext=(dt.datetime(2014, 1, 1), 16000))

# #396AB1
# #DA7C30
# #3E9651
# #CC2529
# #535154
# #6B4C9A
# #922428
# #948B3D

# For different y-axis:
# https://stackoverflow.com/questions/9103166/multiple-axis-in-matplotlib-with-different-scales
plt.plot(date, value, mycol, label='Value')

plt.savefig('m2.svg', format="svg", transparent=True, bbox_inches='tight')
print "done"

