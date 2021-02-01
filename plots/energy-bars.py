import numpy as np
import matplotlib.pyplot as plt
import matplotlib as mpl
from matplotlib import patheffects


plt.xkcd()

# Removes remaining white lines after xkcdifying the plot.
# Changing the background didn't fix it.
mpl.rcParams['path.effects'] = [patheffects.withStroke(linewidth=0)]


#24.72 TWh Nigeria
#39.5 TWh New Zealand
#46.94 TWh Portugal
#58.2 TWh BTC
#94.23 TWh Kazakhstan
#133 TWh Sweden
#3902 Twh USA
#5564 Twh China

labels = ('Nigeria',
        'New Zealand',
        'Portugal',
        'BTC',
        'Kazakhstan',
        'Sweden')

energy = (24.72, 39.5, 46.94, 58.2, 94.23, 133)
y_pos = np.arange(len(labels))

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

fig, ax = plt.subplots(figsize=(6, 4.5))
fig.set_facecolor(background_col)
ax.set_facecolor(background_col)

# http://ksrowell.com/blog-visualizing-data/2012/02/02/optimal-colors-for-graphs/
energy_col = '#7293CB'
btc_col = '#D35E60'

# barlist=plt.bar([1,2,3,4], [1,2,3,4])
# barlist[0].set_color('r')
# plt.show()

p1 = ax.barh(y_pos, energy, align='center', color=energy_col, height=0.5)
p1[3].set_color(btc_col)
ax.set_yticks(y_pos)
ax.set_yticklabels(labels)
ax.invert_yaxis()

ax.xaxis.set_tick_params(width=1)
ax.yaxis.set_ticks_position('none')

ax.spines['right'].set_color('none')
ax.spines['top'].set_color('none')
ax.spines['left'].set_color('none')
ax.set_xlabel('TWh')

#plt.legend( (p2[0], p1[0]), ('Cited as sole reason', 'Cited with other reasons') )

plt.savefig('energy-bars.svg', format="svg", transparent=True, bbox_inches="tight")
print("done")

#print plt.style.available
#print plt.rcParams.keys()
#for x in plt.rcParams.keys():
    #print x
