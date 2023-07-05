library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity WateringSystem_Test is 
end entity WateringSystem_Test;

architecture behavioral2 of WateringSystem_Test is
  component WateringSystem 
  Port(
      RESET: in std_logic; ---input
      Clk  : in std_logic; ---input
      L, T : in std_logic; ---inputs
      M    : in std_logic_vector(2 downto 0);  ---input(have 3 bits)
      STATE: out std_logic_vector(1 downto 0); ---output(have 2 bits, for example 00)
      SEG  : out std_logic_vector(6 downto 0); ---output(have 7 bits)
      light, temperature: out std_logic;       ---output
      moisture: out std_logic_vector(2 downto 0); ---output(have 3 bits)
      OUTPUT: out std_logic ---output
      );
  end component;

  ---inputs
  signal RESET: std_logic := '0';
  signal CLK: std_logic := '0';
  Signal L: std_logic := '0';
  Signal T: std_logic := '0';
  Signal M: std_logic_vector(2 downto 0):= "000";

  ---outputs
  signal STATE: std_logic_vector(1 downto 0):= "11";
  signal SEG: std_logic_vector(6 downto 0):= "1000000";
  signal light: std_logic := '0';
  signal temperature: std_logic := '0';
  signal moisture: std_logic_vector(2 downto 0) := "000";
  signal OUTPUT: std_logic := '0';

  begin
       FA: WateringSystem
           port map(RESET, CLK, L, T, M, STATE, SEG, light, temperature, moisture, OUTPUT);

       Test_process: process
        begin
				CLK <= '1';
				RESET <= '1' ;
				wait for 10 ns;
				RESET <= '0' ;
                                 
                                ---in state 00 or 11 , T = 0 and L = 0 and M = 100 we stay at state
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M<= "100";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;
                                
                                ---in state 00 or 11, T = 0 and L = 0 and M = 101 we stay at state
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "101";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;
                              
                                ---in state 00 or 11, T = 0 and L = 0 and M = 110 we stay at state
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "110";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 00 or 11, T = 0 and L = 0 and M = 111 we stay at state
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "111";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 00 or 11, T = 1 and L = 1 and M = 010 we stay at state
				CLK <= '0' ;
				T <= '1' ;
				L <= '1' ;
				M <= "010";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;
                               
                                ---in state 00 or 11, T = 1 and L = 1 and M = 011 we stay at state
				CLK <= '0' ;
				T<= '1' ;
				L <= '1' ;
				M <= "011";
				wait for 10 ns;
 
				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 00 or 11, T = 1 and L = 1 and M = 100 we stay at state
				CLK <= '0' ;
				T <= '1' ;
				L <= '1' ;
				M<= "100";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 00 or 11, T = 1 and L = 1 and M = 101 we stay at state
				CLK <= '0' ;
				T<= '1' ;
				L <= '1' ;
				M <= "101";
				wait for 10 ns;  

				CLK <= '1' ;
				wait for 10 ns;
                                
                                ---in state 00 or 11, T = 1 and L = 1 and M = 110 we stay at state
				CLK <= '0' ;
				T <= '1' ;
				L <= '1' ;
				M <= "110";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 00 or 11, T = 1 and L = 1 and M = 111 we stay at state
				CLK <= '0' ;
				T <= '1' ;
				L <= '1' ;
				M <= "111";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;
                                    
                                ---reset to state 11
				RESET <= '1' ;
				wait for 10 ns ;
				RESET <= '0' ;
 
                                ---in state 11, T = 0 and L = 0 and M = 011 we go to state 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "011";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---reset to state 11
				RESET <= '1' ;
				wait for 10 ns ;
				RESET <= '0' ;
                                     
                                ---in state 11, T = 0 and L = 0 and M = 010 we go to state 01  
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "010";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;
                                
                                ---reset to state 11
				RESET <= '1' ;
				wait for 10 ns ;
				RESET <= '0' ;
                       
                                ---in state 11, T = 0 and L = 0 and M = 001 we go to state 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "001";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---reset to state 11
				RESET <= '1' ;
				wait for 10 ns ;
				RESET <= '0' ;

                                ---in state 11, T = 0 and L = 0 and M = 000 we go to state 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "000";
				wait for 10 ns;


				CLK <= '1' ;
				wait for 10 ns;

                                ---reset to state 11
				RESET <= '1' ;
				wait for 10 ns ;
				RESET <= '0' ;
 
                                ---in state 11, T = 1 and L = 1 and M = 001 we go to state 01
				CLK <= '0' ;
				T <= '1' ;
				L <= '1' ;
				M <= "001";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;
                              
                                ---reset to state 11
				RESET <= '1' ;
				wait for 10 ns ;
				RESET <= '0' ;

                                ---in state 11, T = 1 and L = 1 and M = 000 we go to state 01
				CLK <= '0' ;
				T <= '1' ;
				L <= '1' ;
				M <= "000";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;


                                ---in state 01, T = 0 and L = 0 and M = 000 we stay at 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "000";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;


                                ---in state 01, T = 0, L = 0 and M = 001 we stay at 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "001";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;


                                ---in state 01, T = 0 and L = 0 and M = 010 we stay at 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "010";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;


                                ---in state 01, T = 0 and L = 0 and M = 011 we stay at 011
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "011";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 01, T = 0 and L = 0 and M = 100 we stay at 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "100";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 01, T = 0 and L = 0 and M = 101 we stay at 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "101";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 01, T = 0 and L = 0 and M = 110 we stay at 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "110";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 01, T = 1 and L = 1 and M = 000 we stay at 01
				CLK <= '0' ;
				T <= '1' ;
				L <= '1' ;
				M <= "000";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;
                                    
                                ---in state 01, T = 1 and L = 1 and M = 001 we stay at 01
				CLK <= '0' ;
				T <= '1' ;
				L <= '1' ;
				M <= "001";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 01, T = 1 and L = 1 and M = 010 we stay at 01
				CLK <= '0' ;
				T <= '1' ;
				L <= '1' ;
				M <= "010";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 01, T = 0 and L = 0 and M = 000 we stay 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "000";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 01, T = 0 and L = 0 and M = 111 we go to 00
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "111";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 00, T = 0 and L = 0 and M = 000 we go to 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "000";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 01, with 111 we go to 00
				CLK <= '0' ;
				T <= '1' ;
				L <= '0' ;
				M <= "111";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;
                               
                                ---in state 00 with T = 0 and L = 0 and M = 000 we go to 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "000";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 01, with 111 we go to 00
				CLK <= '0' ;
				T <= '0' ;
				L <= '1' ;
				M <= "111";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;
                               
                                ---in state 00 with T = 0 and L = 0 and M = 000 we go to 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "000";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 01 with T = 1 or L = 1 and M >= 011 we go to 00
				CLK <= '0' ;
				T <= '1' ;
				L <= '1' ;
				M <= "111";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 00 with T = 0 and L = 0 and M = 000 we go to 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "000";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 01 with T = 1 or L = 1 and M >= 011 we go to 00
				CLK <= '0' ;
				T <= '1' ;
				L <= '0' ;
				M <= "011";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 00 with T = 0 and L = 0 and M = 000 we go to 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "000";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 01 with T = 1 or L = 1 and M >= 011 we go to 00
				CLK <= '0' ;
				T <= '0' ;
				L <= '1' ;
				M <= "011";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 00 with T = 0 and L = 0 and M = 000 we go to 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "000";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 01 with T = 1 or L = 1 and M >= 011 we go to 00
				CLK <= '0' ;
				T <= '1' ;
				L <= '1' ;
				M <= "011";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 00 with T = 0 and L = 0 and M = 000 we go to 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "000";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 01 with T = 1 or L = 1 and M >= 011 we go to 00
				CLK <= '0' ;
				T <= '1' ;
				L <= '0' ;
				M <= "100";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 00 with T = 0 and L = 0 and M = 000 we go to 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "000";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 01 with T = 1 or L = 1 and M >= 011 we go to 00
				CLK <= '0' ;
				T <= '0' ;
				L <= '1' ;
				M <= "100";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 00 with T = 0 and L = 0 and M = 000 we go to 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "000";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 01 with T = 1 or L = 1 and M >= 011 we go to 00
				CLK <= '0' ;
				T <= '1' ;
				L <= '1' ;
				M <= "100";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 00 with T = 0 and L = 0 and M = 000 we go to 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "000";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 01 with T = 1 or L = 1 and M >= 011 we go to 00
				CLK <= '0' ;
				T <= '1' ;
				L <= '0' ;
				M <= "101";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 00 with T = 0 and L = 0 and M = 000 we go to 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "000";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 01 with T = 1 or L = 1 and M >= 011 we go to 00
				CLK <= '0' ;
				T <= '0' ;
				L <= '1' ;
				M <= "101";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 00 with T = 0 and L = 0 and M = 000 we go to 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "000";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 01 with T = 1 or L = 1 and M >= 011 we go to 00
				CLK <= '0' ;
				T <= '1' ;
				L <= '1' ;
				M <= "101";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 00 with T = 0 and L = 0 and M = 000 we go to 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "000";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 01 with T = 1 or L = 1 and M >= 011 we go to 00
				CLK <= '0' ;
				T <= '1' ;
				L <= '0' ;
				M <= "110";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 00 with T = 0 and L = 0 and M = 000 we go to 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "000";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;
                             
                                ---in state 01 with T = 1 or L = 1 and M >= 011 we go to 00
				CLK <= '0' ;
				T <= '0' ;
				L <= '1' ;
				M <= "110";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 00 with T = 0 and L = 0 and M = 000 we go to 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "000";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 01 with T = 1 or L = 1 and M >= 011 we go to 00
				CLK <= '0' ;
				T <= '1' ;
				L <= '1' ;
				M <= "110";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 00 with T = 0 and L = 0 and M = 000 we go to 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "000";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 01 with T = 1 or L = 1 and M >= 011 we go to 00
				CLK <= '0' ;
				T <= '1' ;
				L <= '0' ;
				M <= "111";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 00 with T = 0 and L = 0 and M = 000 we go to 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "000";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 01 with T = 1 or L = 1 and M >= 011 we go to 00
				CLK <= '0' ;
				T <= '0' ;
				L <= '1' ;
				M <= "111";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 00 with T = 0 and L = 0 and M = 000 we go to 01
				CLK <= '0' ;
				T <= '0' ;
				L <= '0' ;
				M <= "000";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;

                                ---in state 01 with T = 1 or L = 1 and M >= 011 we go to 00
				CLK <= '0' ;
				T <= '1' ;
				L <= '1' ;
				M <= "111";
				wait for 10 ns;

				CLK <= '1' ;
				wait for 10 ns;



				wait;

       end process Test_process;
end architecture behavioral2;
