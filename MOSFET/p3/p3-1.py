import numpy as np
import csv
import matplotlib.pyplot as plt

# Read data from csv file
with open('data.csv', 'r') as csvfile:
    csvreader = csv.reader(csvfile)
    data = list(csvreader)

# Convert data to numpy array
data = np.array(data[1:]).astype(float)

x_ticks = [1e15, 1e16, 1e17, 1e18, 1e19]
# Plot data
plt.plot(x_ticks, [data[0,6], data[6,6], data[12,6], data[18,6], data[24,6]], label='t_ox=1 nm')
plt.plot(x_ticks, [data[1,6], data[7,6], data[13,6], data[19,6], data[25,6]], label='t_ox=2 nm')
plt.plot(x_ticks, [data[2,6], data[8,6], data[14,6], data[20,6], data[26,6]], label='t_ox=5 nm')
plt.plot(x_ticks, [data[3,6], data[9,6], data[15,6], data[21,6], data[27,6]], label='t_ox=10 nm')
plt.plot(x_ticks, [data[4,6], data[10,6], data[16,6], data[22,6], data[28,6]], label='t_ox=20 nm')
plt.plot(x_ticks, [data[5,6], data[11,6], data[17,6], data[23,6], data[29,6]], label='t_ox=50 nm')
plt.title('SS vs. Na')
plt.xlabel('Na (cm-3)')
plt.xscale('log')
plt.xticks(x_ticks, x_ticks)
plt.ylabel('SS (mV/dec)')
plt.legend()
plt.savefig('../diagrams/p3-1.png')