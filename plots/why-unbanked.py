import numpy as np
import matplotlib.pyplot as plt
import matplotlib as mpl
from matplotlib import patheffects


plt.xkcd()

# Removes remaining white lines after xkcdifying the plot.
# Changing the background didn't fix it.
mpl.rcParams['path.effects'] = [patheffects.withStroke(linewidth=0)]

labels = ('Not enough money',
          'Do not need an account',
          'Accounts too expensive',
          'Family member already has an account',
          'Financial institutions too far away',
          'Lack of necessary documentation',
          'Lack of trust',
          'Religious reasons')
other_reasons = (61, 30, 26, 26, 22, 20, 16, 6)
sole_reason = (19, 3, 1, 5, 1, 2, 1, 0)
y_pos = np.arange(len(labels))

mycol = '#343535'

plt.rcParams["font.family"] = "Concourse T4"
plt.rcParams["axes.linewidth"] = 1
plt.rcParams["axes.edgecolor"] = mycol
plt.rcParams["text.color"] = mycol
plt.rcParams["xtick.color"] = mycol
plt.rcParams["ytick.color"] = mycol
plt.rcParams["ytick.minor.width"] = 0


fig, ax = plt.subplots(figsize=(4, 4.5))

# http://ksrowell.com/blog-visualizing-data/2012/02/02/optimal-colors-for-graphs/
other_col = '#7293CB'
sole_col = '#D35E60'

p1 = ax.barh(y_pos, other_reasons, align='center', color=other_col, height=0.5)
p2 = ax.barh(y_pos, sole_reason, align='center', color=sole_col, height=0.54)
ax.set_yticks(y_pos)
ax.set_yticklabels(labels)
ax.invert_yaxis()

ax.xaxis.set_tick_params(width=1)
ax.yaxis.set_ticks_position('none') 

ax.spines['right'].set_color('none')
ax.spines['top'].set_color('none')
ax.spines['left'].set_color('none')

plt.legend( (p2[0], p1[0]), ('Cited as sole reason', 'Cited with other reasons') )

plt.savefig('why-unbanked.svg', format="svg", transparent=True, bbox_inches="tight")
print "done"

#print plt.style.available
#print plt.rcParams.keys()
#for x in plt.rcParams.keys():
    #print x
