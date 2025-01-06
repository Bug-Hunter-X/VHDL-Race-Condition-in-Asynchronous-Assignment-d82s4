# VHDL Race Condition Example

This repository demonstrates a common, yet subtle, race condition that can occur in VHDL code when assignments are not handled carefully within processes. The bug lies in the asynchronous assignment to the output signal `data_out`. The solution shows how to fix this by properly assigning the output signal within the process.