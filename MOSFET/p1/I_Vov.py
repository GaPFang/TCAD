import csv
import numpy as np
import matplotlib.pyplot as plt

V_T1 = 1.7
V_T2 = 2.1

# Read in data from csv file
with open('p1-1/data.csv', 'r') as f:
    reader = csv.reader(f)
    data1 = list(reader)

for i in range(len(data1)):
    if i == 0:
        continue
    data1[i] = [float(x) for x in data1[i]]

# Extract data
Vov1 = [row[0] - V_T1 for row in data1[30:]]
I_D1 = [row[1] for row in data1[30:]]

with open('p1-2/data.csv', 'r') as f:
    reader = csv.reader(f)
    data2 = list(reader)

for i in range(len(data2)):
    if i == 0:
        continue
    data2[i] = [float(x) for x in data2[i]]

# Extract data
Vov2 = [row[0] - V_T2 for row in data2[53:]]
I_D2 = [row[1] for row in data2[53:]]

# Plot data
plt.plot(Vov1, I_D1, 'b-', label='V_DS = 0.5 V')
plt.plot(Vov2, I_D2, 'r-', label='V_DS = 3.0 V')
plt.legend()
plt.xlabel('$V_{ov}$ (V)')
plt.ylabel('$I_D$ (A)')
plt.yscale('log')
plt.title('$I_D$ vs. $V_{ov}$')
plt.grid()
plt.savefig('I_Vov.png')
