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

# def prices(url):
    # with open(url, 'r') as infile:
        # reader = csv.DictReader(infile)

        # date = []
        # price = []
        # for row in reader:
            # d = dt.datetime.strptime(row['Date'], '%Y-%m')
            # if d.year < 1970:
                # continue
            # date.append(d)
            # price.append(float(row['Price']))
        # return (date, price)

# (date, price) = prices('monthly_gold_prices.csv')

# # https://www.macrotrends.net/1333/historical-gold-prices-100-year-chart
years = [2018, 2017, 2016, 2015, 2014, 2013, 2012, 2011, 2010, 2009, 2008, 2007, 2006, 2005, 2004,
         2003, 2002, 2001, 2000, 1999, 1998, 1997, 1996, 1995, 1994, 1993, 1992, 1991, 1990, 1989,
         1988, 1987, 1986, 1985, 1984, 1983, 1982, 1981, 1980, 1979, 1978, 1977, 1976, 1975, 1974,
         1973, 1972, 1971, 1970]
closing_price = [1281.65, 1296.50, 1151.70, 1060.20, 1199.25, 1201.50, 1664.00, 1574.50, 1410.25, 1104.00,
                 865.00, 836.50, 635.70, 513.00, 438.00, 417.25, 342.75, 276.50, 272.65, 290.85, 287.45,
                 289.20, 369.55, 386.70, 382.50, 390.65, 332.90, 353.40, 391.00, 401.00, 410.15, 486.50,
                 390.90, 327.00, 309.00, 381.50, 448.00, 400.00, 589.50, 524.00, 224.50, 165.60, 134.55,
                 140.25, 187.50, 112.25, 64.70, 43.50, 37.38]

# It's just for the high level understanding. Plus xkcd style is pretty
plt.xkcd()

# Removes remaining white lines after xkcdifying the plot.
# Changing the background didn't fix it.
mpl.rcParams['path.effects'] = [patheffects.withStroke(linewidth=0)]

fig = plt.figure()
ax = fig.add_subplot(1, 1, 1)

def y_fmt(y, pos):
    return '${:,.0f}'.format(y)
ax.get_yaxis().set_major_formatter(FuncFormatter(y_fmt))
# ax.get_xaxis().set_major_formatter(mdates.DateFormatter('%Y'))

ax.spines['right'].set_color('none')
ax.spines['top'].set_color('none')

# ax.set_xticks([dt.date(y, 1, 1) for y in [1970, 1980, 1990, 2000, 2010, 2018]])
ax.set_xticks([1970, 1980, 1990, 2000, 2010, 2018])
ax.set_yticks((0, 500, 1000, 1500, 2000))

plt.plot(years, closing_price, '#343535')
# plt.plot(date, price, '#343535')

plt.savefig('gold-valuation.svg', format="svg", transparent=True)
print "done"

