(sec-1-12)=
# Supplementary Exercises

::: {#exr-1-12-1}

# Exercise 1.12.1

Suppose that a coin is tossed seven times. Let $A$ denote the event that a head is obtained on the first toss, and let $B$ denote the event that a head is obtained on the fifth toss. Are $A$ and $B$ disjoint?

:::

::: {#exr-1-12-2}

# Exercise 1.12.2

If $A$, $B$, and $D$ are three events such that $\Pr(A \cup B \cup D) = 0.7$, what is the value of $\Pr(A^c \cap B^c \cap D^c)$?

:::

::: {#exr-1-12-3}

# Exercise 1.12.3

Suppose that a certain precinct contains 350 voters, of which 250 are Democrats and 100 are Republicans. If 30 voters are chosen at random from the precinct, what is the probability that exactly 18 Democrats will be selected?

:::

::: {#exr-1-12-4}

# Exercise 1.12.4

Suppose that in a deck of 20 cards, each card has one of the numbers 1, 2, 3, 4, or 5 and there are four cards with each number. If 10 cards are chosen from the deck at random, without replacement, what is the probability that each of the numbers 1, 2, 3, 4, and 5 will appear exactly twice?

:::

::: {#exr-1-12-5}

# Exercise 1.12.5

Consider the contractor in @exm-1-5-4. He wishes to compute the probability that the total utility demand is high, meaning that the sum of water and electrical demand (in the units of @exm-1-4-5) is at least 215. Draw a picture of this event on a graph like @fig-1-5 or @fig-1-9 and find its probability.

:::

::: {#exr-1-12-6}

# Exercise 1.12.6

Suppose that a box contains $r$ red balls and $w$ white balls. Suppose also that balls are drawn from the box one at a time, at random, without replacement. **(a)** What is the probability that all $r$ red balls will be obtained before any white balls are obtained? **(b)** What is the probability that all $r$ red balls will be obtained before two white balls are obtained?

:::

::: {#exr-1-12-7}

# Exercise 1.12.7

Suppose that a box contains $r$ red balls, $w$ white balls, and $b$ blue balls. Suppose also that balls are drawn from the box one at a time, at random, without replacement. What is the probability that all $r$ red balls will be obtained before any white balls are obtained?

:::

::: {#exr-1-12-8}

# Exercise 1.12.8

Suppose that 10 cards, of which seven are red and three are green, are put at random into 10 envelopes, of which seven are red and three are green, so that each envelope contains one card. Determine the probability that exactly $k$ envelopes will contain a card with a matching color ($k = 0, 1, \ldots, 10$).

:::

::: {#exr-1-12-9}

# Exercise 1.12.9

Suppose that 10 cards, of which five are red and five are green, are put at random into 10 envelopes, of which seven are red and three are green, so that each envelope contains one card. Determine the probability that exactly $k$ envelopes will contain a card with a matching color ($k = 0, 1, \ldots, 10$).

:::

::: {#exr-1-12-10}

# Exercise 1.12.10

Suppose that the events $A$ and $B$ are disjoint. Under what conditions are $A^c$ and $B^c$ disjoint?

:::

::: {#exr-1-12-11}

# Exercise 1.12.11

Let $A_1$, $A_2$, and $A_3$ be three arbitrary events. Show that the probability that exactly one of these three events will occur is

$$
\begin{align*}
\Pr(A_1) &+ \Pr(A_2) + \Pr(A_3) \\
&− 2 \Pr(A_1 \cap A_2) − 2 \Pr(A_1 \cap A_3) − 2 \Pr(A_2 \cap A_3) \\
&+ 3 \Pr(A_1 \cap A_2 \cap A_3).
\end{align*}
$$

:::

12. Let $A_1, \ldots, A_n$ be $n$ arbitrary events. Show that the probability that exactly one of these $n$ events will occur is

$$
\begin{align*}
\sum_{i=1}^n\Pr(A_i) &- 2\sum_{i < j}\Pr(A_i \cap A_j) + 3\sum_{i < j < k}\Pr(A_i \cap A_j \cap A_k) \\
&- \cdots + (-1)^{n+1}n \Pr(A_1 \cap A_2 \cap \cdots \cap A_n).
\end{align*}
$$

:::

::: {#exr-1-12-13}

# Exercise 1.12.13

Consider a state lottery game in which each winning combination and each ticket consists of one set of $k$ numbers chosen from the numbers $1$ to $n$ without replacement. We shall compute the probability that the winning combination contains at least one pair of consecutive numbers.

(a) Prove that if $n < 2k − 1$, then every winning combination has at least one pair of consecutive numbers. For the rest of the problem, assume that $n \geq 2k − 1$.
(b) Let $i_1 < \cdots < i_k$ be an arbitrary possible winning combination arranged in order from smallest to largest. For $s = 1, \ldots, k$, let $j_s = i_s - (s-1)$. That is,
    $$
    \begin{align*}
    j_1 &= i_1, \\
    j_2 &= i_2 - 1 \\
    &\vdots \\
    j_k &= i_k - (k-1).
    \end{align*}
    $$
    
    Prove that $(i_1, \ldots, i_k)$ contains at least one pair of consecutive numbers if and only if $(j_1, \ldots, j_k)$ contains repeated numbers.
(c) Prove that $1 \leq j_1 \leq \cdots \leq j_k \leq n - k + 1$ and that the number of $(j_1, \ldots, j_k)$ sets with no repeats is $\binom{n-k+1}{k}$.
(d) Find the probability that there is no pair of consecutive numbers in the winning combination.
(e) Find the probability of at least one pair of consecutive numbers in the winning combination.

:::
