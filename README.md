# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name
Eric Harris

## Summary
In this lab we coded a Moore finite state machine using two different encoding methods, binary and one-hot.
The states were stored using D flip flops where the number of required flip flops is determined by the type
of encoding and the total number of states in the FSM.

## Lab Questions

### Compare and contrast One Hot and Binary encodings
The one-hot encoding requires a flip flop for each state, but the binary encoding only requires log2(N) flip
flops, where N is the number of states. In the case for this lab where the state machine had 5 states, the
binary encoded state machine used two less flip flops than the one-hot version. However, the input and output
logic of the binary state machine was more complicated. For the output of the one-hot FSM, it was a matter of
simply passing the output of the flip flops representing states with a '1' output through an OR gate. The
binary FSM on the other hand required all three flip flops as part of the output's combinational logic.
Similarly, the inpit logic of the binary FSM was much more complex, and required K-Maps to build the circuit
as opposed to the one-hot FSM that was a simple combination of a states that cause a state transition with the
'w' input.

### Which method did your team find easier, and why?
As discussed above, the one-hot FSM was much easier to implement because the input and output combinational logic
was more straight forward to design.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
In situations where flip flops are more abundant than logic gates, a one-hot encoded FSM would be preferred. On
average the one-hot encoded FSM is likely faster due to the fact that the input and output have fewer gates to
pass through. Binary encoding may be needed if flip flops are limited in comparison to the number of logic gates
available.

