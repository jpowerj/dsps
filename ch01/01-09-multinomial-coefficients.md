(sec-1-9)=
# 1.9 Multinomial Coefficients

(sec-1-9-0)=
# Overview

*We learn how to count the number of ways to partition a finite set into more than two disjoint subsets. This generalizes the binomial coefficients from @sec-1-8. The generalization is useful when outcomes consist of several parts selected from a fixed number of distinct types. We begin with a fairly simple example that will illustrate the general ideas of this section.*

::: {.callout-tip}
::: {#exm-1-9-1}

## Example 1.9.1: Choosing Committees

Suppose that 20 members of an organization are to be divided into three committees $A$, $B$, and $C$ in such a way that each of the committees $A$ and $B$ is to have eight members and committee $C$ is to have four members. We shall determine the number of different ways in which members can be assigned to these committees. Notice that each of the 20 members gets assigned to one and only one committee.

One way to think of the assignments is to form committee $A$ first by choosing its eight members and then split the remaining 12 members into committees $B$ and $C$. Each of these operations is choosing a combination, and every choice of committee $A$ can be paired with every one of the splits of the remaining 12 members into committees $B$ and $C$. Hence, the number of assignments into three committees is the product of the numbers of combinations for the two parts of the assignment. Specifically, to form committee $A$, we must choose eight out of 20 members, and this can be done in $\binom{20}{8}$ ways. Then to split the remaining 12 members into committees $B$ and $C$ there are are $\binom{12}{8}$ ways to do it. Here, the answer is

$$
\binom{20}{8}\binom{12}{8} = \frac{20!}{8!12!}\cdot \frac{12!}{8!4!} = \frac{20!}{8!8!4!} = 62,355,150.
$$

:::
:::

Notice how the $12!$ that appears in the denominator of $\binom{20}{8}$ divides out with the $12!$ that appears in the numerator of $\binom{12}{8}$. This fact is the key to the general formula that we shall derive next.

In general, suppose that $n$ distinct elements are to be divided into $k$ different groups ($k \geq 2$) in such a way that, for $j = 1, \ldots, k$, the $j$th group contains exactly $n_j$ elements, where $n_1 + n2 + \cdots + n_k = n$. It is desired to determine the number of different ways in which the $n$ elements can be divided into the $k$ groups. The $n_1$ elements in the first group can be selected from the $n$ available elements in $\binom{n}{n_1}$ different ways. After the $n_1$ elements in the first group have been selected, the $n_2$ elements in the second group can be selected from the remaining $n − n_1$ elements in $\binom{n-n_1}{n_2}$ different ways. Hence, the total number of different ways of selecting the elements for both the first group and the second group is $\binom{n}{n_1}\binom{n-n_1}{n_2}$. After the $n_1 + n_2$ elements in the first two groups have been selected, the number of different ways in which the $n_3$ elements in the third group can be selected is $\binom{n-n_1-n_2}{n_3}$. Hence, the total number of different ways of selecting the elements for the first three groups is

$$
\binom{n}{n_1}\binom{n-n_1}{n_2}\binom{n-n_1-n_2}{n_3}.
$$

It follows from the preceding explanation that, for each $j = 1, \ldots, k-2$ after the first $j$ groups have been formed, the number of different ways in which the $n_{j+1}$ elements in the next group ($j + 1$) can be selected from the remaining $n − n_1 − \cdots − n_j$ elements is $\binom{n-n_1-\cdots - n_j}{n_{j+1}}$. After the elements of group $k − 1$ have been selected, the remaining $n_k$ elements must then form the last group. Hence, the total number of different ways of dividing the $n$ elements into the $k$ groups is

$$
\binom{n}{n_1}\binom{n-n_1}{n_2}\binom{n-n_1-n_2}{n_3}\cdots \binom{n-n_1-\cdots - n_{k-2}}{n_{k-1}} = \frac{n!}{n_1!n_2!\cdots n_k!},
$$

where the last formula follows from writing the binomial coefficients in terms of factorials.

::: {.callout-tip}
::: {#def-1-9-1}

## Definition 1.9.1: Multinomial Coefficients

The number

$$
\frac{n!}{n_1!n_2! \cdots n_k!},\text{ which we shall denote by }\binom{n}{n_1, n_2, \ldots, n_k},
$$

is called a **multinomial coefficient**.

:::
:::

The name **multinomial coefficient** derives from the appearance of the symbol in the multinomial theorem, whose proof is left as @exr-1-9-11 in this section.

::: {.callout-tip}
::: {#thm-1-9-1}

## Theorem 1.9.1: Multinomial Theorem

For all numbers $x_1, \ldots, x_k$ and each positive integer $n$,

$$
(x_1 + \cdots + x_k)^n = \sum \binom{n}{n_1, n_2, \ldots, n_k}x_1^{n_1}x_2^{n_2}\cdots x_k^{n_k},
$$

where the summation extends over all possible combinations of nonnegative integers $n_1, \ldots, n_k$ such that $n_1 + n_2 + \cdots + n_k = n$.

:::
:::

A multinomial coefficient is a generalization of the binomial coefficient discussed in @sec-1-8. For $k = 2$, the multinomial theorem is the same as the binomial theorem, and the multinomial coefficient becomes a binomial coefficient. In particular,

$$
\binom{n}{k, n-k} = \binom{n}{k}.
$$

::: {.callout-tip}
::: {#exm-1-9-2}

## Example 1.9.2: Choosing Committees

In @exm-1-9-1, we see that the solution obtained there is the same as the multinomial coefficient for which $n = 20$, $k = 3$, $n_1 = n_2 = 8$, and $n_3 = 4$, namely,

$$
\binom{20}{8, 8, 4} = \frac{20!}{(8!)^24!} = 62,355,150.
$$

:::
:::

**Arrangements of Elements of More Than Two Distinct Types**: Just as binomial coefficients can be used to represent the number of different arrangements of the elements of a set containing elements of only two distinct types, multinomial coefficients can be used to represent the number of different arrangements of the elements of a set containing elements of k different types ($k \geq 2$). Suppose, for example, that $n$ balls of $k$ different colors are to be arranged in a row and that there are $n_j$ balls of color $j$ ($j = 1, \ldots, k$), where $n_1 + n_2 + \cdots + n_k = n$. Then each different arrangement of the $n$ balls corresponds to a different way of dividing the $n$ available positions in the row into a group of $n_1$ positions to be occupied by the balls of color 1, a second group of $n_2$ positions to be occupied by the balls of color 2, and so on. Hence, the total number of different possible arrangements of the $n$ balls must be

$$
\binom{n}{n_1, n_2, \ldots, n_k} = \frac{n!}{n_1!n_2!\cdots n_k!}.
$$

::: {.callout-tip}
::: {#exm-1-9-3}

## Example 1.9.3: Rolling Dice

Suppose that 12 dice are to be rolled. We shall determine the probability $p$ that each of the six different numbers will appear twice.

Each outcome in the sample space $S$ can be regarded as an ordered sequence of 12 numbers, where the $i$th number in the sequence is the outcome of the $i$th roll. Hence, there will be $6^{12}$ possible outcomes in $S$, and each of these outcomes can be regarded as equally probable. The number of these outcomes that would contain each of the six numbers $1, 2, \ldots , 6$ exactly twice will be equal to the number of different possible arrangements of these 12 elements. This number can be determined by evaluating the multinomial coefficient for which $n = 12$, $k = 6$, and $n_1 = n_2 = \cdots = n_6 = 2$. Hence, the number of such outcomes is

$$
\binom{12}{2,2,2,2,2,2} = \frac{12!}{(2!)^6}
$$

and the required probability $p$ is

$$
o = \frac{12!}{2^6 6^{12}} = 0.0034.
$$

:::
:::

::: {.callout-tip}
::: {#exm-1-9-4}

## Example 1.9.4: Playing Cards

A deck of 52 cards contains 13 hearts. Suppose that the cards are shuffled and distributed among four players $A$, $B$, $C$, and $D$ so that each player receives 13 cards. We shall determine the probability $p$ that player $A$ will receive six hearts, player $B$ will receive four hearts, player $C$ will receive two hearts, and player $D$ will receive one heart.

The total number $N$ of different ways in which the 52 cards can be distributed among the four players so that each player receives 13 cards is

$$
N = \binom{52}{13, 13, 13, 13} = \frac{52!}{(13!)^4}.
$$

It may be assumed that each of these ways is equally probable. We must now calculate the number $M$ of ways of distributing the cards so that each player receives the required number of hearts. The number of different ways in which the hearts can be distributed to players $A$, $B$, $C$, and $D$ so that the numbers of hearts they receive are 6, 4, 2, and 1, respectively, is

$$
\binom{13}{6, 4, 2, 1} = \frac{13!}{6!4!2!1!}.
$$

Also, the number of different ways in which the other 39 cards can then be distributed to the four players so that each will have a total of 13 cards is

$$
\binom{39}{7, 9, 11, 12} = \frac{39!}{7!9!11!12!}.
$$

Therefore,

$$
M = \frac{13!}{6!4!2!1!} \cdot \frac{39!}{7!9!11!12!},
$$

and the required probability $p$ is

$$
p = \frac{M}{N} = \frac{13!39!(13!)^4}{6!4!2!1!7!9!11!12!52!} = 0.00196.
$$

There is another approach to this problem along the lines indicated in @exm-1-8-9. The number of possible different combinations of the 13 positions in the deck occupied by the hearts is $\binom{52}{13}$. If player $A$ is to receive six hearts, there are $\binom{13}{6}$ possible combinations of the six positions these hearts occupy among the 13 cards that $A$ will receive. Similarly, if player $B$ is to receive four hearts, there are $\binom{13}{4}$ possible combinations of their positions among the 13 cards that $B$ will receive. There are $\binom{13}{2}$ possible combinations for player C, and there are $\binom{13}{1}$ possible combinations for player $D$. Hence,

$$
p = \frac{\binom{13}{6} \binom{13}{4} \binom{13}{2} \binom{13}{1}}{\binom{52}{13}},
$$

which produces the same value as the one obtained by the first method of solution.

:::
:::

(sec-1-9-1)=
# 1.9.1 Summary

Multinomial coefficients generalize binomial coefficients. The coefficient $\binom{n}{n_1, \ldots, n_k}$ is the number of ways to partition a set of $n$ items into distinguishable subsets of sizes $n_1, \ldots, n_k$ where $n_1 + \cdots + n_k = n$. It is also the number of arrangements of $n$ items of $k$ different types for which $n_i$ are of type $i$ for $i = 1, \ldots, k$. @exm-1-9-4 illustrates another important point to remember about computing probabilities: There might be more than one correct method for computing the same probability.

(sec-1-9-2)=
# 1.9.2 Exercises

::: {#exr-1-9-1}

## Exercise 1.9.1

Three pollsters will canvas a neighborhood with 21 houses. Each pollster will visit seven of the houses. How many different assignments of pollsters to houses are possible?

:::

::: {#exr-1-9-2}

# Exercise 1.9.2

Suppose that 18 red beads, 12 yellow beads, eight blue beads, and 12 black beads are to be strung in a row. How many different arrangements of the colors can be formed?

:::

::: {#exr-1-9-3}

# Exercise 1.9.3

Suppose that two committees are to be formed in an organization that has 300 members. If one committee is to have five members and the other committee is to have eight members, in how many different ways can these committees be selected?

:::

::: {#exr-1-9-4}

# Exercise 1.9.4

If the letters `s`, `s`, `s`, `t`, `t`, `t`, `i`, `i`, `a`, `c` are arranged in a random order, what is the probability that they will spell the word "statistics"?

:::

::: {#exr-1-9-5}

# Exercise 1.9.5

Suppose that $n$ balanced dice are rolled. Determine the probability that the number $j$ will appear exactly $n_j$ times ($j = 1, \ldots, 6$), where $n_1 + n_2 + \cdots + n_6 = n$.

:::

::: {#exr-1-9-6}

# Exercise 1.9.6

If seven balanced dice are rolled, what is the probability that each of the six different numbers will appear at least once?

:::

::: {#exr-1-9-7}

# Exercise 1.9.7

Suppose that a deck of 25 cards contains 12 red cards. Suppose also that the 25 cards are distributed in a random manner to three players $A$, $B$, and $C$ in such a way that player $A$ receives 10 cards, player $B$ receives eight cards, and player $C$ receives seven cards. Determine the probability that player $A$ will receive six red cards, player $B$ will receive two red cards, and player $C$ will receive four red cards.

:::

::: {#exr-1-9-8}

# Exercise 1.9.8

A deck of 52 cards contains 12 picture cards. If the 52 cards are distributed in a random manner among four players in such a way that each player receives 13 cards, what is the probability that each player will receive three picture cards?

:::

::: {#exr-1-9-9}

# Exercise 1.9.9

Suppose that a deck of 52 cards contains 13 red cards, 13 yellow cards, 13 blue cards, and 13 green cards. If the 52 cards are distributed in a random manner among four players in such a way that each player receives 13 cards, what is the probability that each player will receive 13 cards of the same color?

:::

::: {#exr-1-9-10}

# Exercise 1.9.10

Suppose that two boys named Davis, three boys named Jones, and four boys named Smith are seated at random in a row containing nine seats. What is the probability that the Davis boys will occupy the first two seats in the row, the Jones boys will occupy the next three seats, and the Smith boys will occupy the last four seats?

:::

::: {#exr-1-9-11}

# Exercise 1.9.11

Prove the multinomial theorem, @thm-1-9-1. (You may wish to use the same hint as in @exr-1-8-20 in @sec-1-8.)

:::

::: {#exr-1-9-12}

# Exercise 1.9.12

Return to @exm-1-8-6. Let $S$ be the larger sample space (first method of choosing) and let $S'$ be the smaller sample space (second method). For each element $s'$ of $S'$, let $N(s')$ stand for the number of elements of $S$ that lead to the same boxful $s'$ when the order of choosing is ignored.

(a) For each $s' \in S'$, find a formula for $N(s')$. *Hint*: Let $n_i$ stand for the number of items of type $i$ in $s'$ for $i = 1, \ldots, 7$.
(b) Verify that $\sum_{s' \in S'}N(s')$ equals the number of outcomes in $S$.

:::
