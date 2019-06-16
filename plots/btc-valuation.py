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

def prices(url):
    with open(url, 'r') as infile:
        reader = csv.DictReader(infile)

        date = []
        price = []
        prev_year = 0
        for row in reader:
            d = dt.datetime.strptime(row['Date'], '%Y-%m-%d')
            # if d.year == prev_year:
                # continue
            # prev_year = d.year
            date.append(d)
            price.append(float(row['Close']))
        return (date, price)

# https://finance.yahoo.com/quote/BTC-USD/history?period1=1279317600&period2=1557439200&interval=1mo&filter=history&frequency=1mo
(date, price) = prices('BTC-USD.csv')

# It's just for the high level understanding. Plus xkcd style is pretty
plt.xkcd()

# Removes remaining white lines after xkcdifying the plot.
# Changing the background didn't fix it.
mpl.rcParams['path.effects'] = [patheffects.withStroke(linewidth=0)]

fig = plt.figure(figsize=(8, 5))
ax = fig.add_subplot(1, 1, 1)

def y_fmt(y, pos):
    return ' ${:,.0f}'.format(y)
ax.get_yaxis().set_major_formatter(FuncFormatter(y_fmt))
ax.get_xaxis().set_major_formatter(mdates.DateFormatter('%Y'))

ax.spines['right'].set_color('none')
ax.spines['top'].set_color('none')

# ax.set_xticks([dt.date(y, 1, 1) for y in [1970, 1980, 1990, 2000, 2010, 2018]])
# ax.set_yticks((0, 500, 1000, 1500, 2000))

plt.plot(date, price, '#343535')

plt.savefig('btc-valuation.svg', format="svg", transparent=True)
print "done"

