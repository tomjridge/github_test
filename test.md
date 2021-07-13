# This is a test of markdown in codespaces

Here is some more text and some more

And another paragraph with $x+y=z$

Ah! Great. Mathematics works fine. Good stuff.

$$
\begin{array}{rlcl}
\text{Leaf steal right:} 
& \nu[\boxed{\ldots, kv_0}, k_0, \rho(kv_1,kv_2,\ldots)] & \text{becomes}
& \nu[\boxed{\ldots, kv_0,kv_1}, k_2, \rho(kv_2,\ldots)] \\
\text{Leaf steal left:} 
& \nu[\rho(\ldots, kv_0,kv_1), k_0, \boxed{kv_2,\ldots}] & \text{becomes}
& \nu[\rho(\ldots, kv_0), k_1, \boxed{kv_1,kv_2,\ldots}] \\
\text{Node steal right:} 
& \nu[\boxed{\ldots,r_0}, k_0, \rho(r_1,k_1,r_2,\ldots)] & \text{becomes}
& \nu[\boxed{\ldots, r_0,k_0,r_1}, k_1, \rho(r_2,\ldots)] \\
\text{Node steal left:} 
& \nu[\rho(\ldots,r_0,k_0,r_1), k_1, \boxed{r_2,\ldots}] & \text{becomes}
& \nu[\rho(\ldots, r_0), k_0, \boxed{r_1,k_1,r_2,\ldots}] \\
\end{array}
$$

Cool! Even quite complicated mathematics is supported. 

See link to [test.el](test.el). And local links work fine too.