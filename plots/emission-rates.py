import numpy as np
import matplotlib.pyplot as plt
import math
from matplotlib.ticker import FuncFormatter

from matplotlib import patheffects
import matplotlib as mpl

import matplotlib.patches as mpatches

def btc(x):
    """ Calculate BTC supply """
    total = 0
    # Start with 50 BTC/block
    block_reward = 50
    # Half every 210 000 block (approx every 4 years)
    halving = 210000

    supply = []
    for i in range(0, x[-1] + 1):
        if i > 0 and i % halving == 0:
            block_reward /= 2

        total += block_reward
        supply.append(total)

    return [supply[i] for i in x]


def xmr(x):
    """ This just doesn't work right... """
    total = 0.0
    M = 2**(64 - 1)

    supply = []
    for i in range(0, x[-1] + 1):
        A = int(total * 10**12)
        block_reward = max(0.6, math.floor((M - A)/(2**19)) / 10**12)

        total += block_reward
        supply.append(total)

    return [supply[i] for i in x]


# Use actual blocktime of 9.4 min
btc_years = np.arange(2009, 2051, 1)
btc_blocks = [int((y - 2009)*365*24*60/9.4) for y in btc_years]
btc_supply = btc(btc_blocks)

# Just approximate values... It's not exact anyway.
xmr_x = [2014, 2015, 2016, 2017, 2018, 2019,
         2020, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030, 2031, 2032, 2033,
         2034, 2035, 2036, 2037, 2038, 2039, 2040, 2041, 2042, 2043, 2044, 2045, 2046, 2047,
         2048, 2049, 2050]
xmr_y = [0, 6967312, 11319909, 14382647, 15671138, 16849637, 17460360, 17679028, 17850042,
         18007722, 18165402, 18323082, 18480762, 18638442, 18796122, 18953802, 19111482,
         19269162, 19426842, 19584522, 19742202, 19899882, 20057562, 20215242, 20372922,
         20530602, 20688282, 20845962, 21003642, 21161322, 21319002, 21476682, 21634362,
         21792042, 21949722, 22107402, 22265082]


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
    return '{val:d} M'.format(val=int(y/1000000))
ax.get_yaxis().set_major_formatter(FuncFormatter(y_fmt))

ax.spines['right'].set_color('none')
ax.spines['top'].set_color('none')

ax.set_xticks((2009, 2014, 2020, 2030, 2040, 2050))
ax.set_yticks((0, 10000000, 21000000))
ax.tick_params(axis=u'both', which=u'both',width=2)

plt.annotate(
    'we are here',
    xy=(2020, 16800000), arrowprops=dict(arrowstyle='->'), xytext=(2025, 13100000))

# http://ksrowell.com/blog-visualizing-data/2012/02/02/optimal-colors-for-graphs/
#396AB1
#DA7C30


btc_col = '#DA7C30'
monero_col = '#396AB1'
#monero_col =  '#CC2529'
plt.plot(btc_years, btc_supply, btc_col, label='Bitcoin')
plt.plot(xmr_x, xmr_y, monero_col, label='Monero')

plt.legend(loc='lower right')

plt.figtext(0.03, 0.91, 'Circulating supply')

plt.savefig('emission-rates.svg', format="svg", transparent=False, bbox_inches='tight')
print("done")

