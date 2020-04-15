%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Datos del sistema
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%NOTA IMPORTANTE---- Nodo 1 siempre como nodo Slack
      %Nodo   Tipo  V(pu)    Ang(radiantes)  P_gen(pu)  Q_gen(pu)   P_d(pu) Q_d(pu) Vmin Vmax
V_nod=[  1     1     1.06        0           1.3112     0.9082      0.0     0.0      0.9  1.1;
         2     2      1       -0.0360         0.4      -0.6159      0.2     0.1      0.9  1.1;
         3     3   0.98725    -0.0809          0          0         0.45    0.15     0.9  1.1;
         4     3   0.98413    -0.0865          0          0         0.40    0.05     0.9  1.1;
         5     3   0.97170    -0.1006          0          0         0.60    0.1      0.9  1.1;
       ];
% Donde Tipo= 1-->[Slack] ; 2-->[Pv] ;   3-->[PQ] ;   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Valores en impedancias en PU
    % De  Hacia	     r          x       g       b    peso (w)   pmax          
Dat= [1     2	    0.02	   0.06     0	  0.06      2        1;
      1     3	    0.08       0.24     0	  0.05      2        1;
      2     3	    0.06	   0.18     0	  0.04      2        1;
      2     4	    0.06       0.18     0	  0.04      2        1;
      2     5	    0.04	   0.12     0	  0.03      2        1;
      3     4	    0.01       0.03     0	  0.02      2        1;
      4     5	    0.08       0.24     0	  0.05      2        1;
              ];
Base_MVA=100;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Num_Lin = size(Dat,1); %numero de lineas
Num_Nod = size(V_nod,1); %numero de buses
De     = Dat(:,1); 
Hacia  = Dat(:,2);
[Y] = Ybus(Num_Nod,Num_Lin,De,Hacia,Dat);
%Curvas de costos de generacion
% C(Pg_i) = a_i + b_i*Pg_i + d_i*(Pg_i)^2
%Col 1 = a_i
%Col 2 = b_i
%Col 3 = c_i

Costos=[561    7.92    0.00154
        310    7.8     0.002
        ];