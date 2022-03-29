import matplotlib.pyplot as plt
import numpy as np
import csv
import sys

def main():
    #==================================================================#
    plt.style.use('dark_background')
    plot_color = "#39ff14"

    fig, axs = plt.subplots(3, sharex=True)
    for ax in axs:
        ax.grid(color='k', linestyle='--', linewidth=0.1)
    #==================================================================#
    xBuff1 = []
    yBuff1 = []
    x1 = []
    y1 = []
    with open(f'export/data.csv','r') as csvfile:
            plots = csv.reader(csvfile, delimiter = ',')
            for row in list(plots):
                xBuff1.append(int(row[0]))
                yBuff1.append(int(row[3]))
    for i in range(int(len(xBuff1))):
        x1.append(xBuff1[i])
    for i in range(int(len(yBuff1))):
        y1.append(yBuff1[i])
    axs[1].plot(x1, y1, color = plot_color, linewidth = 0.6)
    axs[1].xaxis.set_ticks([])
    axs[1].set_ylim(-0.2, 64)
    axs[1].set_xlim(min(x1),max(x1))
    axs[1].yaxis.set_ticks(np.linspace(0,64, 9))
    axs[1].set_ylabel("Carrier")
    #==================================================================#
    xBuff2 = []
    yBuff2 = []
    x2 = []
    y2 = []
    with open(f'export/data.csv','r') as csvfile:
            plots = csv.reader(csvfile, delimiter = ',')
            for row in list(plots):
                xBuff2.append(int(row[0]))
                yBuff2.append(int(row[4]))
    for i in range(int(len(xBuff2))):
        x2.append(xBuff2[i])
    for i in range(int(len(yBuff2))):
        y2.append(yBuff2[i])
    axs[2].plot(x2, y2, color = plot_color, linewidth = 0.5)
    axs[2].set_ylim(-0.2, 1.2)
    axs[2].set_xlim(min(x2),max(x2))
    axs[2].yaxis.set_ticks(np.linspace(0,1, 2))
    axs[2].set_ylabel("Saida")

    #==================================================================#
    plt.xlabel("Time(s)")
    plt.tight_layout()
    
    if "save" in sys.argv:
        fig.savefig("test.svg", format="svg",dpi=1200)
        fig.savefig("test.png", format="png",dpi=1200)
    
    plt.show()

if __name__ == "__main__": 
    main()