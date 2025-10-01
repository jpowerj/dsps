(sec-2-4)=
# 2.4 The Gambler's Ruin Problem

(sec-2-4-0)=
# Overview

*Consider two gamblers with finite resources who repeatedly play the same game against each other. Using the tools of conditional probability, we can calculate the probability that each of the gamblers will eventually lose all of his money to the opponent.*

(sec-2-4-1)=
# 2.4.1 Statement of the Problem

Suppose that two gamblers $A$ and $B$ are playing a game against each other. Let $p$ be a given number ($0 < p < 1$), and suppose that on each play of the game, the probability that gambler $A$ will win one dollar from gambler $B$ is $p$ and the probability that gambler $B$ will win one dollar from gambler $A$ is $1 − p$. Suppose also that the initial fortune of gambler $A$ is $i$ dollars and the initial fortune of gambler $B$ is $k − i$ dollars, where $i$ and $k − i$ are given positive integers. Thus, the total fortune of the two gamblers is $k$ dollars. Finally, suppose that the gamblers play the game repeatedly and independently until the fortune of one of them has been reduced to 0 dollars. Another way to think about this problem is that $B$ is a casino and $A$ is a gambler who is determined to quit as soon he wins $k − i$ dollars from the casino or when he goes broke, whichever comes first.

We shall now consider this game from the point of view of gambler $A$. His initial fortune is $i$ dollars and on each play of the game his fortune will either increase by one dollar with a probability of $p$ or decrease by one dollar with a probability of $1 − p$. If $p > 1/2$, the game is favorable to him; if $p < 1/2$, the game is unfavorable to him; and if $p = 1/2$, the game is equally favorable to both gamblers. The game ends either when the fortune of gambler $A$ reaches $k$ dollars, in which case gambler $B$ will have no money left, or when the fortune of gambler $A$ reaches 0 dollars. The problem is to determine the probability that the fortune of gambler $A$ will reach $k$ dollars before it reaches 0 dollars. Because one of the gamblers will have no money left at the end of the game, this problem is called the Gambler's Ruin problem.

### Solution of the Problem

We shall continue to assume that the total fortune of the gamblers $A$ and $B$ is $k$ dollars, and we shall let $a_i$ denote the probability that the fortune of gambler $A$ will reach $k$ dollars before it reaches 0 dollars, given that his initial fortune is $i$ dollars. We assume that the game is the same each time it is played and the plays are independent of each other. It follows that, after each play, the Gambler's Ruin problem essentially starts over with the only change being that the initial fortunes of the two gamblers have changed. In particular, for each $j = 0, \ldots, k$, each time that we observe a sequence of plays that lead to gambler $A$'s fortune being $j$ dollars, the conditional probability, given such a sequence, that gambler $A$ wins is $a_j$. If gambler $A$'s fortune ever reaches 0, then gambler $A$ is ruined, hence $a_0 = 0$. Similarly, if his fortune ever reaches $k$, then gambler $A$ has won, hence $a_k = 1$. We shall now determine the value of $a_i$ for $i = 1, \ldots, k-1$.

Let $A_1$ denote the event that gambler $A$ wins one dollar on the first play of the game, let $B_1$ denote the event that gambler $A$ loses one dollar on the first play of the game, and let $W$ denote the event that the fortune of gambler $A$ ultimately reaches $k$ dollars before it reaches 0 dollars. Then

$$
\begin{align*}
\Pr(W) &= \Pr(A_1)\Pr(W \mid A_1) + \Pr(B_1)\Pr(W \mid B_1) \\
&= p \Pr(W \mid A_1) + (1-p)\Pr(W \mid B_1).
\end{align*}
$$ {#eq-2-4-1}

Since the initial fortune of gambler $A$ is $i$ dollars ($i = 1, \ldots, k-1$), then $\Pr(W) = a_i$. Furthermore, if gambler $A$ wins one dollar on the first play of the game, then his fortune becomes $i + 1$ dollars and the conditional probability $\Pr(W \mid A_1)$ that his fortune will ultimately reach $k$ dollars is therefore $a_{i+1}$. If $A$ loses one dollar on the first play of the game, then his fortune becomes $i − 1$ dollars and the conditional probability $\Pr(W \mid B_1)$ that his fortune will ultimately reach $k$ dollars is therefore $a_{i−1}. Hence, by @eq-2-4-1,

$$
a_i = pa_{i+1} + (1-p)a_{i-1}.
$$ {#eq-2-4-2}

We shall let $i = 1, \ldots, k-1$ in @eq-2-4-2. Then, since $a_0 = 0$ and $a_k = 1$, we obtain the following $k − 1$ equations:

$$
\begin{align*}
a_1 &= pa_2, \\
a_2 &= pa_3 + (1-p)a_1, \\
a_3 &= pa_4 + (1-p)a_2, \\
&\vdots \\
a_{k-2} &= pa_{k-1} + (1-p)a_{k-3}, \\
a_{k-1} &= p + (1-p)a_{k-2}.
\end{align*}
$$ {#eq-2-4-3}

If the value of $a_i$ on the left side of the $i$th equation is rewritten in the form $p a_i + (1 − p)a_i$ and some elementary algebra is performed, then these $k − 1$ equations can be rewritten as follows:

$$
\begin{align*}
a_2 - a_1 &= \frac{1-p}{p}a_1, \\
a_3 - a_2 &= \frac{1-p}{p}(a_2 - a_1) = \left(\frac{1-p}{p}\right)^2a_1, \\
a_4 - a_3 &= \frac{1-p}{p}(a_3 - a_2) = \left(frac{1-p}{p}\right)^3a_1, \\
&\vdots \\
a_{k-1} - a_{k-2} &= \frac{1-p}{p}(a_{k-2} - a_{k-3}) = \left(\frac{1-p}{p}\right)^{k-2}a_1, \\
1 - a_{k-1} &= \frac{1-p}{p}(a_{k-1} - a_{k-2}) = \left(\frac{1-p}{p}\right)^{k-1}a_1.
\end{align*}
$$ {#eq-2-4-4}

By equating the sum of the left sides of these $k − 1$ equations with the sum of the right sides, we obtain the relation

$$
1 - a_1 = a_1 \sum_{i=1}^{k-1} \left(\frac{1-p}{p}\right)^i
$$ {#eq-2-4-5}

**Solution for a Fair Game**: Suppose first that $p = 1/2$. Then $(1 − p)/p = 1$, and it follows from @eq-2-4-5 that $1 − a_1 = (k − 1)a_1$, from which $a_1= 1/k$. In turn, it follows from the first equation in @eq-2-4-4 that $a_2 = 2/k$, it follows from the second equation in @eq-2-4-4 that $a_3 = 3/k$, and so on. In this way, we obtain the following complete solution when $p = 1/2$:

$$
a_i = \frac{i}{k} \; \text{ for }i = 1, \ldots, k-1.
$$ {#eq-2-4-6}

::: {#exm-2-4-1}

# Example 2.4.1: The Probability of Winning in a Fair Game

Suppose that $p = 1/2$, in which case the game is equally favorable to both gamblers; and suppose that the initial fortune of gambler $A$ is 98 dollars and the initial fortune of gambler $B$ is just two dollars. In this example, $i = 98$ and $k = 100$. Therefore, it follows from @eq-2-4-6 that there is a probability of 0.98 that gambler $A$ will win two dollars from gambler $B$ before gambler $B$ wins 98 dollars from gambler $A$.

:::

**Solution for an Unfair Game**: Suppose now that $p \neq 1/2$. Then @eq-2-4-5 can be rewritten in the form

$$
1 - a_1 = a_1 \frac{
    \left(\frac{1-p}{p}\right)^k - \left(\frac{1-p}{p}\right)
}{
    \left(\frac{1-p}{p}\right) - 1
}.
$$ {#eq-2-4-7}

Hence,

$$
a_1 = \frac{
    \left(\frac{1-p}{p}\right) - 1
}{
    \left(\frac{1-p}{p}\right)^k - 1
}.
$$ {#eq-2-4-8}

Each of the other values of $a_i$ for $i = 2, \ldots, k-1$ can now be determined in turn from the equations in @eq-2-4-4. In this way, we obtain the following complete solution:

$$
a_i = \frac{
    \left(\frac{1-p}{p}\right)^i - 1
}{
    \left(\frac{1-p}{p}\right)^k - 1
} \; \text{ for }i = 1, \ldots, k-1.
$$ {#eq-2-4-9}

::: {#exm-2-4-2}

# Example 2.4.2: The Probability of Winning in an Unfavorable Game

Suppose that $p = 0.4$, in which case the probability that gambler $A$ will win one dollar on any given play is smaller than the probability that he will lose one dollar. Suppose also that the initial fortune of gambler $A$ is 99 dollars and the initial fortune of gambler $B$ is just one dollar. We shall determine the probability that gambler $A$ will win one dollar from gambler $B$ before gambler $B$ wins 99 dollars from gambler $A$.

In this example, the required probability $a_i$ is given by @eq-2-4-9, in which $(1-p)/p = 3/2$, $i = 99$, and $k = 100$. Therefore, 

$$
a_i = \frac{
    \left(\frac{3}{2}\right)^{99} - 1
}{
    \left(\frac{3}{2}\right)^{100} - 1
} \approx \frac{1}{3/2} = \frac{2}{3}.
$$

Hence, although the probability that gambler $A$ will win one dollar on any given play is only 0.4, the probability that he will win one dollar before he loses 99 dollars is approximately $2/3$.

:::

### Summary

We considered a gambler and an opponent who each start with finite amounts of money. The two then play a sequence of games against each other until one of them runs out of money. We were able to calculate the probability that each of them would be the first to run out as a function of the probability of winning the game and of how much money each has at the start.

### Exercises

::: {#exr-2-4-1}

# Exercise 2.4.1

Consider the unfavorable game in @exm-2-4-2. This time, suppose that the initial fortune of gambler $A$ is $i$ dollars with $i \leq 98$. Suppose that the initial fortune of gambler $B$ is $100 − i$ dollars. Show that the probability is greater than $1/2$ that gambler $A$ loses $i$ dollars before
winning $100 − i$ dollars.

:::

::: {#exr-2-4-2}

# Exercise 2.4.2

Consider the following three different possible conditions in the gambler's ruin problem:

a. The initial fortune of gambler $A$ is two dollars, and the initial fortune of gambler $B$ is one dollar.
b. The initial fortune of gambler $A$ is 20 dollars, and the initial fortune of gambler $B$ is 10 dollars.
c. The initial fortune of gambler $A$ is 200 dollars, and the initial fortune of gambler $B$ is 100 dollars.

Suppose that $p = 1/2$. For which of these three conditions is there the greatest probability that gambler $A$ will win the initial fortune of gambler $B$ before he loses his own initial fortune?

:::

::: {#exr-2-4-3}

# Exercise 2.4.3

Consider again the three different conditions (a), (b), and (c) given in @exr-2-4-2, but suppose now that $p < 1/2$. For which of these three conditions is there the greatest probability that gambler $A$ will win the initial fortune of gambler $B$ before he loses his own initial fortune?

:::

::: {#exr-2-4-4}

# Exercise 2.4.4

Consider again the three different conditions (a), (b), and (c) given in @exr-2-4-2, but suppose now that $p > 1/2$. For which of these three conditions is there the greatest probability that gambler $A$ will win the initial fortune of gambler $B$ before he loses his own initial fortune?

:::

::: {#exr-2-4-5}

# Exercise 2.4.5

Suppose that on each play of a certain game, a person is equally likely to win one dollar or lose one dollar. Suppose also that the person's goal is to win two dollars by playing this game. How large an initial fortune must the person have in order for the probability to be at least 0.99 that she will achieve her goal before she loses her initial fortune?

:::

::: {#exr-2-4-6}

# Exercie 2.4.6

Suppose that on each play of a certain game, a person will either win one dollar with probability $2/3$ or lose one dollar with probability $1/3$. Suppose also that the person's goal is to win two dollars by playing this game. How large an initial fortune must the person have in order for the probability to be at least 0.99 that he will achieve his goal before he loses his initial fortune?

:::

::: {#exr-2-4-7}

# Exercise 2.4.7

Suppose that on each play of a certain game, a person will either win one dollar with probability $1/3$ or lose one dollar with probability $2/3$. Suppose also that the person's goal is to win two dollars by playing this game. Show that no matter how large the person's initial fortune might be, the probability that she will achieve her goal before she loses her initial fortune is less than $1/4$.

:::

::: {#exr-2-4-8}

# Exercise 2.4.8

Suppose that the probability of a head on any toss of a certain coin is $p$ ($0 < p < 1$), and suppose that the coin is tossed repeatedly. Let $X_n$ denote the total number of heads that have been obtained on the first $n$ tosses, and let $Y_n = n − X_n$ denote the total number of tails on the first $n$ tosses. Suppose that the tosses are stopped as soon as a number $n$ is reached such that either $X_n = Y_n + 3$ or $Y_n = X_n + 3$. Determine the probability that $X_n = Y_n + 3$ when the tosses are stopped.

:::

::: {#exr-2-4-9}

# Exercise 2.4.9

Suppose that a certain box $A$ contains five balls and another box $B$ contains 10 balls. One of these two boxes is selected at random, and one ball from the selected box is transferred to the other box. If this process of selecting a box at random and transferring one ball from that box to the other box is repeated indefinitely, what is the probability that box $A$ will become empty before box $B$ becomes
empty?

:::
