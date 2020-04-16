%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Datos del sistema
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Base_MVA=100;

      %Nodo   Tipo   V    Ang(rad)  Pg       Qg     Pd     Qd    Vmin   Vmax
Nodos=[1       1    1.04     0      0.0      0.0    0.0    0.0   0.9    1.1;
       2       2    1.025    0      1.63     0.0    0.0    0.0   0.9    1.1;
       3       2    1.025    0      0.85     0.0    0.0    0.0   0.9    1.1;
       4       3    1.0      0      0.0      0.0    0.0    0.0   0.9    1.1;
       5       3    1.0      0      0.0      0.0    0.9    0.3   0.9    1.1;
       6       3    1.0      0      0.0      0.0    0.0    0.0   0.9    1.1;
       7       3    1.0      0      0.0      0.0    1.0    0.35  0.9    1.1;
       8       3    1.0      0      0.0      0.0    0.0    0.0   0.9    1.1;
       9       3    1.0      0      0.0      0.0    1.25   0.5   0.9    1.1];
% Donde Tipo= 1-->[Slack] ; 2-->[Pv] ;   3-->[PQ] ;   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Valores en impedancias en PU
    % De  Hacia	    r        x        g        b      Pmax          
Lineas= [1     4      0.0000   0.0576   0.0000   0.0000    150 ;
         4     5      0.0170   0.0920   0.0000   0.1580    150 ;
         5     6      0.0390   0.1700   0.0000   0.3580    150 ;
         3     6      0.0000   0.0586   0.0000   0.0000    150 ;
         6     7      0.0119   0.1008   0.0000   0.2090    150 ;
         7     8      0.0085   0.0720   0.0000   0.1490    150 ;
         8     2      0.0000   0.0625   0.0000   0.0000    150 ;
         8     9      0.0320   0.1610   0.0000   0.3060    150 ;
         9     4      0.0100   0.0850   0.0000   0.1760    150];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%Curvas de demanda
CD = [5  0.350 0.400 0.300 0.180 0.190 0.140 0.390 0.320 0.310 0.210 0.290 0.450 0.310 0.270 0.280 0.230 0.700 0.730 0.700 0.800 0.750 0.650 0.650 0.350;
      7  0.230 0.200 0.190 0.180 0.180 0.170 0.400 0.600 0.790 0.970 0.970 0.970 0.950 0.900 0.960 1.000 0.900 0.800 0.710 0.620 0.530 0.440 0.380 0.250;
      9  0.300 0.300 0.320 0.305 0.316 0.358 0.466 0.544 0.732 0.816 0.950 0.772 0.786 0.844 0.982 1.000 0.700 0.750 0.568 0.380 0.336 0.298 0.288 0.300];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Curvas de costos de generacion
% C(Pg_i) = a_i + b_i*Pg_i + d_i*(Pg_i)^2
Costos=[150    5    0.11;
        600    1.2  0.085;
        335    1    0.1225];
