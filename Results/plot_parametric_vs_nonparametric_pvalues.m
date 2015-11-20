close all
clear all
clc

parametric_pvalues_23    = [1.37e-40 1.16e-14  4.8e-5 0.0103   1.36e-36  0.0152  0.00888  3.46e-33  2.37e-30  1.6e-25  4.88e-9   0.000213  2.75e-5  8.71e-5  0.000541  0.00889  0.0302  2.3e-32  7.57e-30  1.02e-28  2.11e-16   0.00044   0.0182   9.77e-30   5.08e-27  4.73e-25   2.27e-11  8.3e-10  1.6e-9  4.18e-9   0.00174   0.00283   1.79e-7   2.8e-45   0.0287   0.0299   3.05e-14  2.98e-7   0.00115   0.00354   0.0226   0.0237   0.0486  9.65e-29];                                       
nonparametric_pvalues_23 = [0.002    0.024     0.097  0.219    0.005     0.202   0.118    0.001     0.002     0.003    0.035     0.116     0.08    0.096     0.128     0.172    0.207   0.001    0.001     0.002     0.01       0.139     0.249    0.001      0.002     0.003      0.025     0.035    0.037   0.04      0.159     0.173     0.054     0.001     0.248    0.251    0.017     0.051     0.146     0.18      0.253    0.258    0.297   0.005];
cluster_sizes_23 =         [14682    3467      799    408      13284     440     655      8612      7577      5920     1439      601       751      669      546       396      323     7397     6586      6232      2834       486       288      7062       6158      5529       1853      1523     1465    1382      437       409       998       12837     280      278      2118      881       395       340       255      253      222     6183];           

large = parametric_pvalues_23 > 1e-4;
parametric_pvalues_23 = parametric_pvalues_23(large);
nonparametric_pvalues_23 = nonparametric_pvalues_23(large);
cluster_sizes_23 = cluster_sizes_23(large);




parametric_pvalues_31    = [1.18e-38   5.44e-23  2.49e-21  1.04e-13  1.19e-7  1.78e-5  0.00806  0.0127  0.0347  5.43e-27  3.7e-19  6.83e-17  2.95e-11  1.19e-6  0.000153   0.0498    7.01e-10   0.0237   4.8e-12  8.96e-10  5.96e-8   0.000326   0.0109   0.021   0.0373  0.0394   0.0301      0.000187    0.00222       0.0149     0.000845      0.00582      0.00751   0.00791    0.0425    0.00302     0.00574     0.00821    0.0195   0.00145   0.00433   0.0123     0.0146    0.0313   0.0332   0.0423];
nonparametric_pvalues_31 = [0.001      0.002     0.002     0.005     0.008    0.012    0.036    0.043   0.056   0.001     0.002    0.002     0.004     0.008    0.017      0.061     0.002      0.05     0.001    0.002     0.003     0.013      0.048    0.059   0.063   0.079    0.042       0.017       0.029         0.053      0.024         0.042        0.044     0.044      0.074     0.033       0.04        0.044      0.06     0.025     0.035     0.048      0.051     0.067    0.069    0.077] ;
cluster_sizes_31 =         [4859       2273      2039      1081      473      306      133      122     99      3074      1868     1558      874       422      255        96        766        120      761      569       417       187        109      96      85      84       90          176         133           95         143           112          107       106        75        109         98          92         78       132       111       92         89        76       75       71];

large = parametric_pvalues_31 > 1e-4;
parametric_pvalues_31 = parametric_pvalues_31(large);
nonparametric_pvalues_31 = nonparametric_pvalues_31(large);
cluster_sizes_31 = cluster_sizes_31(large);


 
figure
semilogy(cluster_sizes_23,nonparametric_pvalues_23./parametric_pvalues_23,'*r')
hold on
semilogy(cluster_sizes_31,nonparametric_pvalues_31./parametric_pvalues_31,'*b')
hold off
xlabel('Cluster size (voxels)')
ylabel('Ratio')
title(sprintf('Ratio of FWE-corrected cluster size p-values: \nnon-parametric / parametric'))
set(gca,'FontSize',15)
legend('CDT p = 0.01','CDT p = 0.001','Location','NorthWest')
%axis([0 850 1 10000])
%print -dpng clusterpratios.png
%print -depsc clusterpratios.eps




figure
semilogy(cluster_sizes_23,nonparametric_pvalues_23./parametric_pvalues_23,'*k')
hold on
semilogy(cluster_sizes_31,nonparametric_pvalues_31./parametric_pvalues_31,'+k')
hold off
xlabel('Cluster size (voxels)')
ylabel('Ratio')
title(sprintf('Ratio of FWE-corrected cluster size p-values: \nnon-parametric / parametric'))
set(gca,'FontSize',15)
legend('CDT p = 0.01','CDT p = 0.001','Location','NorthWest')
%axis([0 850 1 10000])
%print -dpng clusterpratios_bw.png
%print -deps clusterpratios_bw.eps


