import numpy as np
import csv
import matplotlib.pyplot as plt

# Read data from csv file
with open('data.csv', 'r') as csvfile:
    csvreader = csv.reader(csvfile)
    data = list(csvreader)

# Convert data to numpy array
data = np.array(data[1:]).astype(float)

x_ticks = data[:6,1]
# Plot data
plt.plot(x_ticks, data[:6,6], label='Na=1e16 cm-3')
plt.plot(x_ticks, data[6:12,6], label='Na=1e17 cm-3')
plt.plot(x_ticks, data[12:18,6], label='Na=1e18 cm-3')
plt.plot(x_ticks, data[18:24,6], label='Na=1e19 cm-3')
plt.title('SS vs. t_ox')
plt.xlabel('t_ox (nm)')
plt.xscale('log')
plt.xticks(x_ticks, x_ticks)
plt.ylabel('SS (mV/dec)')
plt.legend()
plt.show()