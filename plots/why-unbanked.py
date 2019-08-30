import numpy as np
import matplotlib.pyplot as plt
import matplotlib as mpl
from matplotlib import patheffects


# N = 5
# menMeans   = (20, 35, 30, 35, 27)
# womenMeans = (25, 32, 34, 20, 25)
# menStd     = (2, 3, 4, 1, 2)
# womenStd   = (3, 5, 2, 3, 3)
# ind = np.arange(N)    # the x locations for the groups
# width = 0.35       # the width of the bars: can also be len(x) sequence

# plt.xkcd()

# p1 = plt.bar(ind, menMeans,   width, color='r', yerr=womenStd)
# p2 = plt.bar(ind, womenMeans, width, color='y',
             # bottom=menMeans, yerr=menStd)

# plt.ylabel('Scores')
# plt.title('Scores by group and gender')
# plt.xticks(ind+width/2., ('G1', 'G2', 'G3', 'G4', 'G5') )
# plt.yticks(np.arange(0,81,10))
# plt.legend( (p1[0], p2[0]), ('Men', 'Women') )

# plt.show()


# Fixing random state for reproducibility
# np.random.seed(19680801)


# plt.rcdefaults()
# fig, ax = plt.subplots()

# # Example data
# people = ('Tom', 'Dick', 'Harry', 'Slim', 'Jim')
# y_pos = np.arange(len(people))
# performance = 3 + 10 * np.random.rand(len(people))
# error = np.random.rand(len(people))

# ax.barh(y_pos, performance, xerr=error, align='center')
# ax.set_yticks(y_pos)
# ax.set_yticklabels(people)
# ax.invert_yaxis()  # labels read top-to-bottom
# ax.set_xlabel('Performance')
# ax.set_title('How fast do you want to go today?')

# plt.show()


plt.xkcd()
#plt.style.use('ggplot')
#plt.tight_layout()

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
plt.rcParams["axes.linewidth"] = 0.8
plt.rcParams["axes.edgecolor"] = mycol
plt.rcParams["text.color"] = mycol
plt.rcParams["xtick.color"] = mycol
plt.rcParams["ytick.color"] = mycol
plt.rcParams["ytick.minor.width"] = 0


# fig = plt.figure(figsize=(8, 5))
# ax = fig.add_subplot(1, 1, 1)
fig, ax = plt.subplots(figsize=(6, 4.5))


#ef8a62
#f7f7f7
#67a9cf

#d8b365
#f5f5f5
#5ab4ac

other_col = '#5ab4ac'
sole_col = '#d8b365'

other_col = '#66c2a5'
sole_col = '#fc8d62'
other_col = '#8da0cb'

#other_col = '#1b9e77'
#sole_col = '#d95f02'
#other_col = '#7570b3'

p1 = ax.barh(y_pos, other_reasons, align='center', color=other_col, height=0.5)
p2 = ax.barh(y_pos, sole_reason, align='center', color=sole_col, height=0.54)
#p1 = ax.barh(y_pos, other_reasons, align='center')
#p2 = ax.barh(y_pos, sole_reason, align='center')
ax.set_yticks(y_pos)
ax.set_yticklabels(labels)
ax.invert_yaxis()

ax.xaxis.set_tick_params(width=1)
#ax.yaxis.set_tick_params(width=1)
ax.yaxis.set_ticks_position('none') 

ax.spines['right'].set_color('none')
ax.spines['top'].set_color('none')
ax.spines['left'].set_color('none')

#plt.legend( (p1[0], p2[0]), ('Cited with other reasons', 'Cited as sole reason') )
plt.legend( (p2[0], p1[0]), ('Cited as sole reason', 'Cited with other reasons') )

plt.savefig('why-unbanked.svg', format="svg", transparent=True, bbox_inches="tight")
print "done"

#print plt.style.available
#print plt.rcParams.keys()
#for x in plt.rcParams.keys():
    #print x
