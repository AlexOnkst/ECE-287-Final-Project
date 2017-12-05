library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
entity willscodepart2 is 

port (clk, dot, dash, reset : in  std_logic;          -- clock 
		ledOn, ledA, ledB, ledC, ledD, ledE, ledF, ledG, ledH, ledI, ledJ, ledK, ledL, ledM, ledN, ledO, ledP, ledQ, ledR, ledS, ledT, ledU, ledV, ledW, ledX, ledY,
		ledZ, hexA, hexB, hexC, hexD, hexE, hexF, hexG :out std_logic);           -- LCD screen to dsiplay
end willscodepart2;

Architecture stuff of willscodepart2 is

type state_type is (State_initial, State_A, State_A2, State_B, State_B2, State_C, State_D, State_D2, State_E, State_E2, 
State_F, State_G, State_G2, State_H, State_H2, State_I, State_I2, State_J, State_J2, State_K, State_K2,
State_L, State_M, State_M2, State_N, State_N2, State_O, State_O2, State_Odot, State_Odot2, State_Odash2, 
State_Odash, State_P, State_P2, State_Q, State_R, State_R2, State_S, State_S2, State_T, State_T2, State_U, 
State_U2, State_Udash, State_Udash2, State_V, State_V2, State_W, State_W2, State_X, State_Y, State_Z, State_Z2,
State_1, State_2, State_3, State_4, State_5, State_6, State_7, State_8, State_9, State_0);

signal state: state_type := State_initial;




begin 
	process (clk, dot, dash, reset)
	
	begin
		if clk'event and clk = '1' then
			case state is 

				when State_initial =>											--State_initial
				ledOn <= '1';
				ledA <= '0';
				ledB <= '0';
				ledC <= '0';
				ledD <= '0';
				ledE <= '0';
				ledF <= '0';
				ledG <= '0';
				ledH <= '0';
				ledI <= '0';
				ledJ <= '0';
				ledK <= '0';
				ledL <= '0';
				ledM <= '0';
				ledN <= '0';
				ledO <= '0';
				ledP <= '0';
				ledQ <= '0';
				ledR <= '0';
				ledS <= '0';
				ledT <= '0';
				ledU <= '0';
				ledV <= '0';
				ledW <= '0';
				ledX <= '0';
				ledY <= '0';
				ledZ <= '0';
				hexA <= '1';
				hexB <= '1';
				hexC <= '1';
				hexD <= '1';
				hexE <= '1';
				hexF <= '1';
				hexG <= '1';
				
				
				
				if dot = '1' and dash = '0' then
					state <= State_E;
				end if;
				if dash = '1' and dot = '0' then
					state <= State_T;
				end if;
				if dash = '0' and dot = '0' then
					state <= State_initial;
				end if;


				when State_A =>											--State A
				ledE <= '0';
				ledA <= '1';
				
				if dash = '1' then
					state <= State_A;
				end if;
				if dash = '0' and dot = '0' then
					state <= State_A2;
				end if;

				
				when State_A2 =>											--State A2
				
				if dash = '0' and dot = '0' then
					state <= State_A2;
				end if;
				if reset = '1' then
					state <= State_initial;
				end if;
				if dash = '1' then
					state <= State_W;
				end if;
				if dot = '1' then
					state <= State_R;
				end if;
				
				when State_B =>											--State B
				ledD <= '0';
				ledB <= '1';
				if dot = '1' then
					state <= State_B;
				end if;
				if dot = '0' and dash = '0' then
					state <= State_B2;
				end if;
				
				when State_B2=>											--State B2
				if dot = '0' and dash = '0' then
					state <= State_B2;
				end if;
				if reset = '1' then
					state <= State_initial;
				end if;
				if dot = '1' then
					state <= State_6;
				end if;
				
				
				when State_C =>											--State C
				ledK <= '0';
				ledC <= '1';
				if dot = '1' then
					state <= State_C;
				end if;
				if dot = '0' and dash = '0' then
					state <= State_initial;
				end if;
				
				when State_D =>											--State D
				ledN <= '0';
				ledD <= '1';
				if dot = '1' then
					state <= State_D;
				end if;
				if dot = '0' and dash = '0' then
					state <= State_D2;
				end if;
				
				when State_D2 =>											--State D2
				if dot = '0' and dash = '0' then
					state <= State_D2;
				end if;
				if reset = '1' then
					state <= State_initial;
				end if;
				if dot = '1' then
					state <= State_B;
				end if;
				if dash = '1' then
					state <= State_X;
				end if;
				
				
				
						
				when State_E =>											--State E
				ledE <= '1';
				ledOn <= '0';
				if reset = '1' then
					state <= State_initial;
				end if;
				if dot = '1' then
					state <= State_E;
				end if;
				if dot = '0' and dash = '0' then
					state <= State_E2;
				end if;
				
				
				
				when State_E2 =>											--State E2
				
				if dot = '0' and dash = '0' then
					state <= State_E2;
				end if;
				if reset = '1' then
					state <= State_initial;
				end if;
				if dot = '1' then
					state <= State_I;
				end if;
				if dash = '1' then
					state <= State_A;
				end if;
				
				when State_F =>											--State_F
				ledU <= '0';
				ledF <= '1';
				if dot = '1' then
					state <= State_F;
				end if;
				if dot = '0' and dash = '0' then
					state <= State_initial;
				end if;
			
				
				
				
				when State_G =>											--State G
				ledM <= '0';
				ledG <= '1';
				if dot = '1' then
					state <= State_G;
				end if;
				if dot = '0' and dash = '0' then
					state <= State_G2;
				end if;
				
				when State_G2 =>											--State G2
				if dot = '0' and dash = '0' then
					state <= State_G2;
				end if;
				if reset = '1' then
					state <= State_initial;
				end if;
				if dash = '1' then
					state <= State_Q;
				end if;
				if dot = '1' then
					state <= State_Z;
				end if;
				
				when State_H =>											--State H
				ledS <= '0';
				ledH <= '1';
				if dot = '1' then
					state <= State_H;
				end if;
				if dot = '0' and dash = '0' then
					state <= State_H2;
				end if;
				
				when State_H2 =>											--state H2
				if dot = '0' and dash = '0' then
					state <= State_H2;
				end if;
				if reset = '1' then
					state <= State_initial;
				end if;
				if dot = '1' then
					state <= State_5;
				end if;
				if dash = '1' then
					state <= State_4;
				end if;
				
				

				when State_I =>											--State I
				ledE <= '0';
				ledI <= '1';
				if dot = '1' then
					state <= State_I;
				end if;
				if dot = '0' and dash = '0' then
					state <= State_I2;
				end if;
				
				when State_I2 =>											--State I2
				if dot = '0' and dash = '0' then
					state <= State_I2;
				end if;
				if reset = '1' then
					state <= State_initial;
				end if;
				if dot = '1' then
					state <= State_S;
				end if;
				if dash = '1' then 
					state <= State_U;
				end if;
				
				
				
				when State_J =>											--State_J
				ledW <= '0';
				ledJ <= '1';
				if dash = '1' then
					state <= State_J;
				end if;
				if dot = '0' and dash = '0' then
					state <= State_J2;
				end if;
				
				when State_J2 =>											--State J2
				if dot = '0' and dash = '0' then
					state <= State_J2;
				end if; 
				if reset = '1' then
					state <= State_initial;
				end if;
				if dash = '1' then
					state <= State_1;
				end if;
				if dot = '1' then
					state <= State_J2;
				end if;
				
				
				when State_K =>											--State K
				ledN <= '0';
				ledK <= '1';
				if dash = '1' then
					state <= State_K;
				end if;
				if dot = '0' and dash = '0' then
					state <= State_K2;
				end if;
				if dot = '1' then
					state <= State_K;
				end if;
				
				when State_K2 =>											--State K2
				if dot = '0' and dash = '0' then
					state <= State_K2;
				end if;
				if reset = '1' then
					state <= State_initial;
				end if;
				if dot = '1' then
					state <= State_C;
				end if;
				if dash = '1' then
					state <= State_Y;
				end if;
				
				
				when State_L =>											--State L
				ledR <= '0';
				ledL <= '1';
				if dot = '1' then
					state <= State_L;
				end if;
				if dot = '0' and dash = '0' then
					state <= State_initial;
				end if;
				if dash = '1' then
					state <= State_L;
				end if;
				
				when State_M =>											--State M
				ledT <= '0';
				ledM <= '1';
				if dash = '1' then
					state <= State_M;
				end if;
				if dot = '0' and dash = '0' then
					state <= State_M2;
				end if;
					
				when State_M2 =>											--State M2
				if dot = '0' and dash = '0' then
					state <= State_M2;
				end if;
				if reset = '1' then
					state <= State_initial;
				end if;
				if dot = '1' then
					state <= State_G;
				end if;
				if dash = '1' then
					state <= State_O;
				end if;
				
				when State_N =>											--State N
				ledT <= '0';
				ledN <= '1';
				if dash = '1' then
					state <= State_N;
				end if;
				if dot = '0' and dash = '0' then
					state <= State_N2;
				end if;
				
				when State_N2 =>											--State N2
				if dot = '0' and dash = '0' then
					state <= State_N2;
				end if;
				if reset = '1' then
					state <= State_initial;
				end if;
				if dot = '1' then
					state <= State_D;
				end if;
				if dash = '1' then
					state <= State_K;
				end if;
				
				
				
				when State_O =>											--state O
				ledM <= '0';
				ledO <= '1';
				if dash = '1' then
					state <= State_O;
				end if;
				if dot = '0' and dash = '0' then
					state <= State_O2;
				end if;
				
				when State_O2 =>											--State O2
				if dot = '0' and dash = '0' then
					state <= State_O2;
				end if;
				if reset = '1' then
					state <= State_initial;
				end if;
				if dot = '1' then	
					state <= State_Odot;
				end if;
				if dash = '1' then
					state <= State_Odash;
				end if;
				
				when State_Odot =>										--State Odot
				if dot = '1' then 
					state <= State_Odot;
				end if;
				if dot = '0' and dash = '0' then	
					state <= State_Odot2;
				end if;
				
				when State_Odot2 =>										--State Odot2
				if dot = '0' and dash = '0' then	
					state <= State_Odot2;
				end if;
				if dot = '1' then	
					state <= State_8;
				end if;
				
				when State_Odash =>										--State Odash
				if dash = '1' then
					state <= State_Odash;
				end if;
				if dot = '0' and dash = '0' then
					state <= State_Odash2;
				end if;
				
				when State_Odash2 =>										--State Odash2
				if dot = '0' and dash = '0' then
					state <= State_Odash2;
				end if;
				if dot = '1' then	
					state <= State_9;
				end if;
				if dash = '1' then
					state <= State_0;
				end if;
				
				
				
				
				when State_P =>											--State_P
				ledW <= '0';
				ledP <= '1';
				if dot = '1' then
					state <= State_P;
				end if;
				if dot = '0' and dash = '0' then
					state <= State_P2;
				end if;
				
				when State_P2 =>											--State p2
				ledP <= '1';
				ledE <= '0';
				ledW <= '0';
				if dot = '1' then
					state <= State_P2;
				end if;
				if dash = '1' then
					state <= State_P2;
				end if;
				if dot = '0' and dash = '0' then
					state <= State_initial;
				end if;
				
				when State_Q =>											--State Q
				ledG <= '0';
				ledQ <= '1';
				if dash = '1' then
					state <= State_Q;
				end if;
				if dot = '0' and dash = '0' then
					state <= State_initial;
				end if;
				
				
				when State_R =>											--State_R
				ledA <= '0';
				ledR <= '1';
				if dot = '1' then
					state <= State_R;
				end if;
				if dash = '1' then
					state <= State_R;
				end if;
				if dash = '0' and dot = '0' then
					state <= State_R2;
				end if;
				
				when State_R2 =>											--state r2
				if dash = '0' and dot = '0' then
					state <= State_R2;
				end if;
				if reset = '1' then
					state <= State_initial;
				end if;
				if dot = '1' then
					state <= State_L;
				end if;
				if dash = '1' then 
					state <= State_R2;
				end if;
				
				when State_S =>											--state s
				ledI <= '0';
				ledS <= '1';
				if dot = '1' then
					state <= State_S;
				end if;
				if dash = '0' and dot = '0' then
					state <= State_S2;
				end if;
				
				when State_S2 =>											--State S2
				if dash = '0' and dot = '0' then
					state <= State_S2;
				end if;
				if reset = '1' then
					state <= State_initial;
				end if;
				if dot = '1' then
					state <= State_H;
				end if;
				if dash = '1' then
					state <= State_V;
				end if;
				
				
				
				
				
				when State_T =>											--state T
				ledT <= '1';
				ledOn <= '0';
				if dash = '1' then
					state <= State_T;
				end if;
				if dash = '0' and dot = '0' then
					state <= State_T2;
				end if;
				if dot = '1' then
					state <= State_T;
				end if;
				
				when State_T2 =>											--state T2
				if dash = '0' and dot = '0' then
					state <= State_T2;
				end if;
				if reset = '1' then
					state <= State_initial;
				end if;
				if dot = '1' then
					state <= State_N;
				end if;
				if dash = '1' then
					state <= State_M;
				end if;

				when State_U =>											--State U
				ledI <= '0';
				ledU <= '1';
				if dash = '1' then
					state <= State_U;
				end if;
				if dash = '0' and dot = '0' then
					state <= State_U2;
				end if;
				
				when State_U2 =>											--State U2
				if dash = '0' and dot = '0' then
					state <= State_U2;
				end if;
				if reset = '1' then
					state <= State_initial;
				end if;
				if dot = '1' then
					state <= State_F;
				end if;
				if dash = '1' then
					state <= State_Udash;
				end if;
				
				when State_Udash =>										--State Udash
				if dash = '1' then 
					state <= State_Udash;
				end if;
				if dash = '0' and dot = '0' then
					state <= State_Udash2;
				end if;
				
				
				when State_Udash2 =>										--State Udash2
				if dash = '0' and dot = '0' then
					state <= State_Udash2;
				end if;
				if dash = '1' then
					state <= State_2;
				end if;
				
				when State_V =>											--State V
				ledS <= '0';
				ledV <= '1';
				if dash = '1' then
					state <= State_V;
				end if;
				if dash = '0' and dot = '0' then
					state <= State_V2;
				end if;
				
				when State_V2=>											--State V2
				if dash = '0' and dot = '0' then
					state <= State_V2;
				end if;
				if reset = '1' then
					state <= State_initial;
				end if;
				if dash = '1' then
					state <= State_3;
				end if;
				
				
				when State_W =>											--State W
				ledA <= '0';
				ledW <= '1';
				
				if dash = '1' then
					state <= State_W;
				end if;
				if dash = '0' and dot = '0' then
					state <= State_W2;
				end if;
				
				when State_W2 =>											--state w2
				if dash = '0' and dot = '0' then
					state <= State_W2;
				end if;
				if reset = '1' then
					state <= State_initial;
				end if;
				if dash = '1' then
					state <= State_J;
				end if;
				if dot = '1' then
					state <= State_P;
				end if;
				
				when State_X =>											--State X
				ledD <= '0';
				ledX <= '1';
				if dash = '1' then
					state <= State_X;
				end if;
				if dash = '0' and dot = '0' then
					state <= State_initial;
				end if;
				
				when State_Y =>											--state y
				ledK <= '0';
				ledY <= '1';
				if dash = '1' then
					state <= State_Y;
				end if;
				if dash = '0' and dot = '0' then
					state <= State_initial;
				end if;
						
				when State_Z =>											--state z
				ledG <= '0';
				ledZ <= '1';
				if dot = '1' then
					state <= State_Z;
				end if;
				if dot = '0' and dash = '0' then
					state <= State_Z2;
				end if;
				
				when State_Z2 =>											--state z2
				if dot = '0' and dash = '0' then
					state <= State_Z2;
				end if;
				if reset = '1' then
					state <= State_initial;
				end if;
				if dot = '1' then
					state <= State_7;
				end if;
				
				
				when State_0 =>											--State Zero
				ledO <= '0';
				hexA <= '0';
				hexB <= '0';
				hexC <= '0';
				hexD <= '0';
				hexE <= '0';
				hexF <= '0';
				if dash = '1' then
					state <= State_0;
				end if;
				if dash = '0' and dot = '0' then	
					state <= State_initial;
				end if;
				
				when State_1 =>											--state 1
				ledJ <= '0';
				hexB <= '0';
				hexC <= '0';
				if dash = '1' then
					state <= State_1;
				end if;
				if dash = '0' and dot  = '0' then
					state <= State_initial;
				end if;
				
				when State_2 =>											--state 2
				ledU <= '0';
				hexA <= '0';
				hexB <= '0';
				hexD <= '0';
				hexE <= '0';
				hexG <= '0';
				hexC <= '1';
				if dash = '1' then
					state <= State_2;
				end if;
				if dash = '0' and dot = '0' then
					state <= State_initial;
				end if;
				
				when State_3 =>											--State 3
				ledV <= '0';
				hexB <= '0';
				hexC <= '0';
				hexA <= '0';
				hexG <= '0';
				hexD <= '0';
				if dash = '1' then 
					state <= State_3;
				end if;
				if dash = '0' and dot = '0' then
					state <= State_initial;
				end if;
				
				when State_4 =>											--State 4
				ledH <= '0';
				hexB <= '0';
				hexC <= '0';
				hexF <= '0';
				hexG <= '0';
				if dash = '1' then
					state <= State_4;
				end if;
				if dot = '0' and dash = '0' then
					state <= State_initial;
				end if;
				
				when State_5 =>											--State 5
				ledH <= '0';
				hexA <= '0';
				hexC <= '0';
				hexD <= '0';
				hexF <= '0';
				hexG <= '0';
				if dot = '1' then
					state <= State_5;
				end if;
				if dot = '0' and dash = '0' then
					state <= State_initial;
				end if;
				
				when State_6 =>											--State 6
				ledB <= '0';
				hexA <= '0';
				hexC <= '0';
				hexD <= '0';
				hexF <= '0';
				hexG <= '0';
				hexE <= '0';
				if dot = '1' then
					state <= State_6;
				end if;
				if dot = '0' and dash = '0' then
					state <= State_initial;
				end if;
				
				
				when State_7 =>											--state 7
				ledZ <= '0';
				hexA <= '0';
				hexB <= '0';
				hexC <= '0';
				if dot = '1' then
					state <= State_7;
				end if;
				if dash = '0' and dot = '0' then
					state <= State_initial;
				end if;
				
				when State_8 =>											--State 8
				ledO <= '0';
				hexA <= '0';
				hexB <= '0';
				hexC <= '0';
				hexD <= '0';
				hexE <= '0';
				hexF <= '0';
				hexG <= '0';
				if dot = '1' then
					state <= State_8;
				end if;
				if dot = '0' and dash = '0' then
					state <= State_initial;
				end if;
				
				when State_9 =>											--State 9
				ledO <= '0';
				hexA <= '0';
				hexB <= '0';
				hexC <= '0';
				hexD <= '0';
				hexF <= '0';
				hexG <= '0';
				if dot = '1' then
					state <= State_9;
				end if;
				if dot = '0' and dash = '0' then
					state <= State_initial;
				end if;
					
			when others =>
			state <= State_initial;


		end case;
		end if;
		end process;
		end stuff;