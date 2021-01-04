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
            #d = dt.datetime.strptime(row['Date'], '%Y-%m-%d')
            d = dt.datetime.strptime(row['\ufeffDate'], '%b %d, %Y')
            # if d.year == prev_year:
                # continue
            # prev_year = d.year
            date.append(d)
            price.append(float(row['Price'].replace(',', '')))
        return (date, price)

# https://finance.yahoo.com/quote/BTC-USD/history?period1=1279317600&period2=1557439200&interval=1mo&filter=history&frequency=1mo
# (date, price) = prices('BTC-USD.csv')
# https://www.investing.com/crypto/bitcoin/historical-data
(date, price) = prices('data/Bitcoin Historical Data - Investing.com2.csv')

# It's just for the high level understanding. Plus xkcd style is pretty
plt.xkcd()

mycol = '#343535'
background_col = '#fcfcfc'

plt.rcParams["font.family"] = "Concourse T4"
plt.rcParams["axes.linewidth"] = 1
plt.rcParams["axes.edgecolor"] = mycol
plt.rcParams["text.color"] = mycol
plt.rcParams["xtick.color"] = mycol
plt.rcParams["ytick.color"] = mycol
plt.rcParams["ytick.minor.width"] = 0
plt.rcParams['figure.facecolor'] = background_col


# Removes remaining white lines after xkcdifying the plot.
# Changing the background didn't fix it.
mpl.rcParams['path.effects'] = [patheffects.withStroke(linewidth=0)]

fig = plt.figure(figsize=(8, 5))
ax = fig.add_subplot(1, 1, 1)
fig.set_facecolor(background_col)
ax.set_facecolor(background_col)

def y_fmt(y, pos):
    return ' ${:,.0f}'.format(y)
ax.get_yaxis().set_major_formatter(FuncFormatter(y_fmt))
ax.get_xaxis().set_major_formatter(mdates.DateFormatter('%Y'))

ax.spines['right'].set_color('none')
ax.spines['top'].set_color('none')

ax.xaxis.set_tick_params(width=2)
ax.yaxis.set_tick_params(width=2)

ax.set_xticks([dt.date(y, 1, 1) for y in [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020]])
# ax.set_yticks((0, 500, 1000, 1500, 2000))

plt.plot(date, price, mycol, linewidth=1.5)

plt.savefig('btc-valuation.svg', format="svg", transparent=False, bbox_inches='tight')
print("done")

