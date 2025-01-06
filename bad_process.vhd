```vhdl
ENTITY bad_process IS
  PORT (clk : IN  STD_LOGIC;
       reset : IN STD_LOGIC;
       data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
       data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END ENTITY bad_process;

ARCHITECTURE behavioral OF bad_process IS
  SIGNAL internal_data : STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
BEGIN
  PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      internal_data <= "00000000";
    ELSIF rising_edge(clk) THEN
      internal_data <= data_in;
      -- INCORRECT: data_out should be assigned within the process
    END IF;
  END PROCESS;

  data_out <= internal_data;
END ARCHITECTURE;
```