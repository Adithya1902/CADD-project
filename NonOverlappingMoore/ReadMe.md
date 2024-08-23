A non-overlapping Moore sequence detector is a type of finite state machine designed to identify specific sequences of input symbols in a continuous stream, where the detection of a new sequence only begins after the previous one has completed. 
The sequence detector with no overlap allowed resets itself to the start state when the sequence has been detected. After the initial sequence 1101 has been detected, the detector with no overlap resets and starts searching for the initial 1 of the next sequence.
For this project we will be assuming a sequence detector that detects the number 1010.
