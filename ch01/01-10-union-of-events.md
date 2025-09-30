(sec-1-10)=
# The Probability of a Union of Events

*The axioms of probability tell us directly how to find the probability of the union of disjoint events. @thm-1-5-7 showed how to find the probability for the union of two arbitrary events. This theorem is generalized to the union of an arbitrary finite collection of events.*

We shall now consider again an arbitrary sample space $S$ that may contain either a finite number of outcomes or an infinite number, and we shall develop some further general properties of the various probabilities that might be specified for the events in $S$. In this section, we shall study in particular the probability of the union $\bigcup_{i=1}^n A_i$ of $n$ events $A_1, \ldots, A_n$.

If the events $A_1, \ldots, A_n$ are disjoint, we know that

$$
\Pr\left( \bigcup_{i=1}^n A_i \right) = \sum_{i=1}^n \Pr(A_i).
$$

Furthermore, for every two events $A_1$ and $A_2$, regardless of whether or not they are disjoint, we know from @thm-1-5-7 of @sec-1-5 that

$$
\Pr(A_1 \cup A_2) = \Pr(A_1) + \Pr(A_2) - \Pr(A_1 \cap A_2).
$$

In this section, we shall extend this result, first to three events and then to an arbitrary finite number of events.

### The Union of Three Events

::: {.callout-tip}
::: {#thm-1-10-1}

# Theorem 1.10.1

For every three events $A_1$, $A_2$, and $A_3$,

$$
\begin{align*}
\Pr(A_1 \cup A_2 \cup A_3) = &\Pr(A_1) + \Pr(A_2) + \Pr(A_3) \\
&− [\Pr(A_1 \cap A_2) + \Pr(A_2 \cap A_3) + \Pr(A_1 \cap A_3)] \\
&+ \Pr(A_1 \cap A_2 \cap A_3).
\end{align*}
$$ {#eq-1-10-1}

::: {.proof}
By the associative property of unions (@thm-1-4-6), we can write

$$
A_1 \cup A_2 \cup A_3 = (A_1 \cup A_2) \cup A_3.
$$

Apply @thm-1-5-7 to the two events $A = A_1 \cup A_2$ and $B = A_3$ to obtain

$$
\begin{align*}
\Pr(A_1 \cup A_2 \cup A_3) &= \Pr(A \cup B) \\
&= \Pr(A) + \Pr(B) − \Pr(A \cap B).
\end{align*}
$$ {#eq-1-10-2}

We next compute the three probabilities on the far right side of @eq-1-10-2 and combine
them to get @eq-1-10-1. First, apply @thm-1-5-7 to the two events $A_1$ and $A_2$ to obtain

$$
\Pr(A) = \Pr(A_1) + \Pr(A_2) − \Pr(A_1 \cap A_2).
$$ {#eq-1-10-3}

Next, use the first distributive property in @thm-1-4-10 to write

$$
A \cap B = (A_1 \cup A_2) \cap A_3 = (A_1 \cap A_3) \cup (A_2 \cap A_3).
$$ {#eq-1-10-4}

Apply @thm-1-5-7 to the events on the far right side of @eq-1-10-4 to obtain

$$
\Pr(A \cap B) = \Pr(A_1 \cap A_3) + \Pr(A_2 \cap A_3) − \Pr(A_1 \cap A_2 \cap A_3).
$$ {#eq-1-10-5}

Substitute @eq-1-10-3, $\Pr(B) = \Pr(A_3)$, and @eq-1-10-5 into @eq-1-10-2 to complete the proof.
:::

:::
:::

::: {.callout-tip}
::: {#exm-1-10-1}

# Example 1.10.1: Student Enrollment

Among a group of 200 students, 137 students are enrolled in a mathematics class, 50 students are enrolled in a history class, and 124 students are enrolled in a music class. Furthermore, the number of students enrolled in both the mathematics and history classes is 33, the number enrolled in both the history and music classes is 29, and the number enrolled in both the mathematics and music classes is 92. Finally, the number of students enrolled in all three classes is 18. We shall determine the probability that a student selected at random from the group of 200 students will be enrolled in at least one of the three classes.

Let $A_1$ denote the event that the selected student is enrolled in the mathematics class, let $A_2$ denote the event that he is enrolled in the history class, and let $A_3$ denote the event that he is enrolled in the music class. To solve the problem, we
must determine the value of $\Pr(A_1 \cup A_2 \cup A3)$. From the given numbers,

$$
\begin{align*}
&\Pr(A_1) = \frac{137}{200}, \; \Pr(A_2) = \frac{50}{200}, \; \Pr(A_3) = \frac{124}{200}, \\
&\Pr(A_1 \cap A_2) = \frac{33}{200}, \; \Pr(A_2 \cap A_3) = \frac{29}{200}, \; \Pr(A_1 \cap A_3) = \frac{92}{200}, \\
&\Pr(A_1 \cap A_2 \cap A_3) = \frac{18}{200}.
\end{align*}
$$

It follows from @eq-1-10-1 that $\Pr(A_1 \cup A_2 \cup A_3) = 175/200 = 7/8$.

:::
:::

### The Union of a Finite Number of Events

A result similar to @thm-1-10-1 holds for any arbitrary finite number of events, as shown by the following theorem.

::: {.callout-tip}
::: {#thm-1-10-2}

# Theorem 1.10.2

For every $n$ events $A_1, \ldots, A_n$,

$$
\begin{align*}
\Pr\left( \bigcup_{i=1}^nA_i \right) = &\sum_{i=1}^n \Pr(A_i) - \sum_{i < j}\Pr(A_i \cap A_j) + \sum_{i < j < k}\Pr(A_i \cap A_j \cap A_k) \\
&- \sum_{i < j < k < \ell}\Pr(A_i \cap A_j \cap A_k \cap A_\ell) + \cdots \\
&+ (-1)^{n+1}\Pr(A_1 \cap A_2 \cap \cdots \cap A_n).
\end{align*}
$$ {#eq-1-10-6}

::: {.proof}
The proof proceeds by induction. In particular, we first establish that @eq-1-10-6 is true for $n = 1$ and $n = 2$. Next, we show that if there exists $m$ such that @eq-1-10-6 is true for all $n \leq m$, then @eq-1-10-6 is also true for $n = m + 1$. The case of $n = 1$ is trivial, and the case of $n = 2$ is @thm-1-5-7. To complete the proof, assume that @eq-1-10-6 is true for all $n \leq m$. Let $A_1, \ldots, A_{m+1}$ be events. Define $A = \bigcup_{i=1}^mA_i$ and $B = A_{m + 1}$. @thm-1-5-7 says that

$$
\Pr\left(\bigcup_{i=1}^n\right) \Pr(A \cup B) = \Pr(A) + \Pr(B) - \Pr(A \cap B).
$$ {#eq-1-10-7}

We have assumed that $\Pr(A)$ equals @eq-1-10-6 with $n = m$. We need to show that when we add $\Pr(A)$ to $\Pr(B) − \Pr(A \cap B)$, we get @eq-1-10-6 with $n = m + 1$. The difference between @eq-1-10-6 with $n = m + 1$ and $\Pr(A)$ is all of the terms in which one of the subscripts ($i$, $j$, $k$, etc.) equals $m + 1$. Those terms are the following:

$$
\begin{align*}
&\Pr(A_{m+1}) - \sum_{i=1}^m\Pr(A_i \cap A_{m+1}) + \sum_{i < j}\Pr(A_i \cap A_j \cap A_{m+1}) \\
&- \sum_{i < j < k}\Pr(A_i \cap A_j \cap A_k \cap A_{m+1}) + \cdots \\
&+ (-1)^{m+2}\Pr(A_1 \cap A_2 \cap \cdots \cap A_m \cap A_{m+1}).
\end{align*}
$$ {#eq-1-10-8}

The first term in @eq-1-10-8 is $\Pr(B) = \Pr(A_{m+1})$. All that remains is to show that $− \Pr(A \cap B)$ equals all but the first term in @eq-1-10-8.

Use the natural generalization of the distributive property (@thm-1-4-10) to write

$$
A \cap B = \left( \bigcup_{i=1}^mA_i \right) \cap A_{m+1} = \bigcup_{i=1}^m (A_i \cap A_{m+1}).
$$ {#eq-1-10-9}

The union in @eq-1-10-9 contains $m$ events, and hence we can apply @eq-1-10-6 with $n = m$ and each $A_i$ replaced by $A_i \cap A_{m+1}$. The result is that $− \Pr(A \cap B)$ equals all but the first term in @eq-1-10-8.

:::

:::
:::

The calculation in @thm-1-10-2 can be outlined as follows: First, take the sum of the probabilities of the $n$ individual events. Second, subtract the sum of the probabilities of the intersections of all possible pairs of events; in this step, there will be $\binom{n}{2}$ different pairs for which the probabilities are included. Third, add the probabilities of the intersections of all possible groups of three of the events; there will be $\binom{n}{3}$ intersections of this type. Fourth, subtract the sum of the probabilities of the intersections of all possible groups of four of the events; there will be $\binom{n}{4}$ intersections of this type. Continue in this way until, finally, the probability of the intersection of all $n$ events is either added or subtracted, depending on whether $n$ is an odd number or an even number.

### The Matching Problem

Suppose that all the cards in a deck of $n$ different cards are placed in a row, and that the cards in another similar deck are then shuffled and placed in a row on top of the cards in the original deck. It is desired to determine the probability $p_n$ that there will be at least one match between the corresponding cards from the two decks. The same problem can be expressed in various entertaining contexts. For example, we could suppose that a person types $n$ letters, types the corresponding addresses on $n$ envelopes, and then places the $n$ letters in the $n$ envelopes in a random manner. It could be desired to determine the probability $p_n$ that at least one letter will be placed in the correct envelope. As another example, we could suppose that the photographs of $n$ famous film actors are paired in a random manner with $n$ photographs of the same actors taken when they were babies. It could then be desired to determine the probability $p_n$ that the photograph of at least one actor will be paired correctly with this actor's own baby photograph.

Here we shall discuss this matching problem in the context of letters being placed in envelopes. Thus, we shall let $A_i$ be the event that letter $i$ is placed in the correct envelope ($i = 1, \ldots, n$), and we shall determine the value of $p_n = \Pr(\bigcup_{i=1}^nA_i)$ by using @eq-1-10-6. Since the letters are placed in the envelopes at random, the probability $\Pr(A_i)$ that any particular letter will be placed in the correct envelope is $1/n$. Therefore, the value of the first summation on the right side of @eq-1-10-6 is

$$
\sum_{i=1}^n\Pr(A_i) = n \cdot \frac{1}{n} = 1.
$$

Furthermore, since letter 1 could be placed in any one of $n$ envelopes and letter 2 could then be placed in any one of the other $n − 1$ envelopes, the probability $\Pr(A_1 \cap A_2)$ that both letter 1 and letter 2 will be placed in the correct envelopes is $1/[n(n − 1)]$. Similarly, the probability $\Pr(A_i \cap A_j)$ that any two specific letters $i$ and $j$ ($i \neq j$) will both be placed in the correct envelopes is $1/[n(n − 1)]$. Therefore, the value of the second summation on the right side of @eq-1-10-6 is

$$
\sum_{i < j}\Pr(A_i \cap A_j) = \binom{n}{2}\frac{1}{n(n-1)} = \frac{1}{2!}.
$$

By similar reasoning, it can be determined that the probability $\Pr(A_i \cap A_j \cap A_k)$ that any three specific letters $i$, $j$, and $k$ ($i < j < k$) will be placed in the correct envelopes is $1/[n(n − 1)(n − 2)]$. Therefore, the value of the third summation is

$$
\sum_{i < j < k}\Pr(A_i \cap A_j \cap A_k) = \binom{n}{3}\frac{1}{n(n-1)(n-2)} = \frac{1}{3!}.
$$

This procedure can be continued until it is found that the probability $\Pr(A_1 \cap A_2 \cap \cdots \cap A_n)$ that all $n$ letters will be placed in the correct envelopes is $1/(n!)$. It now follows from @eq-1-10-6 that the probability $p_n
$ that at least one letter will be placed
in the correct envelope is

$$
p_n = 1 - \frac{1}{2!} + \frac{1}{3!} - \frac{1}{4!} + \cdots + (-1)^{n+1}\frac{1}{n!}.
$$ {#eq-1-10-10}

This probability has the following interesting features. As $n \rightarrow \infty$, the value of
$p_n$ approaches the following limit:

$$
\lim_{n \rightarrow \infty}p_n = 1 - \frac{1}{2!} + \frac{1}{3!} - \frac{1}{4!} + \cdots .
$$

It is shown in books on elementary calculus that the sum of the infinite series on the right side of this equation is $1 − (1/e)$, where $e = 2.71828\ldots$. Hence, $1 − (1/e) = 0.63212\ldots$. It follows that for a large value of $n$, the probability $p_n$ that at least one letter will be placed in the correct envelope is approximately $0.63212$.

The exact values of $p_n$, as given in @eq-1-10-10, will form an oscillating sequence as $n$ increases. As $n$ increases through the even integers $2, 4, 6, \ldots$, the values of $p_n$ will increase toward the limiting value $0.63212$; and as $n$ increases through the odd integers $3, 5, 7, \ldots$, the values of $p_n$ will decrease toward this same limiting value.

The values of $p_n$ converge to the limit very rapidly. In fact, for $n = 7$ the exact value $p_7$ and the limiting value of $p_n$ agree to four decimal places. Hence, regardless of whether seven letters are placed at random in seven envelopes or seven million letters are placed at random in seven million envelopes, the probability that at least one letter will be placed in the correct envelope is $0.6321$.

### Summary

We generalized the formula for the probability of the union of two arbitrary events to the union of finitely many events. As an aside, there are cases in which it is easier to compute $\Pr(A_1 \cup \cdots \cup A_n)$ as $1 − \Pr(A_1^c \cap \cdots \cap A_n^c)$ using the fact that $\left(A_1 \cup \cdots \cup A_n\right)^c = A_1^c \cap \cdots \cap A_n^c$.

### Exercises

::: {#exr-1-10-1}

# Exercise 1.10.1

Three players are each dealt, in a random manner, five cards from a deck containing 52 cards. Four of the 52 cards are aces. Find the probability that at least one person receives exactly two aces in their five cards.

:::

::: {#exr-1-10-2}

# Exercise 1.10.2

In a certain city, three newspapers $A$, $B$, and $C$ are published. Suppose that 60 percent of the families in the city subscribe to newspaper $A$, 40 percent of the families subscribe to newspaper $B$, and 30 percent subscribe to newspaper $C$. Suppose also that 20 percent of the families subscribe to both $A$ and $B$, 10 percent subscribe to both $A$ and $C$, 20 percent subscribe to both $B$ and $C$, and 5 percent subscribe to all three newspapers $A$, $B$, and $C$. What percentage of the families in the city subscribe to at least one of the three newspapers?

:::

::: {#exr-1-10-3}

# Exercise 1.10.3

For the conditions of @exr-1-10-2, what percentage of
the families in the city subscribe to exactly one of the three newspapers?

:::

::: {#exr-1-10-4}

# Exercise 1.10.4

Suppose that three compact discs are removed from their cases, and that after they have been played, they are put back into the three empty cases in a random manner. Determine the probability that at least one of the CD's will be put back into the proper cases.

:::

::: {#exr-1-10-5}

# Exercise 1.10.5

Suppose that four guests check their hats when they arrive at a restaurant, and that these hats are returned to them in a random order when they leave. Determine the probability that no guest will receive the proper hat.

:::

::: {#exr-1-10-6}

# Exercise 1.10.6

A box contains 30 red balls, 30 white balls, and 30 blue balls. If 10 balls are selected at random, without replacement, what is the probability that at least one color will be missing from the selection?

:::

::: {#exr-1-10-7}

# Exerise 1.10.7

Suppose that a school band contains 10 students from the freshman class, 20 students from the sophomore class, 30 students from the junior class, and 40 students from the senior class. If 15 students are selected at random from the band, what is the probability that at least one student will be selected from each of the four classes? *Hint*: First determine the probability that at least one of the four classes will not be represented in the selection.

:::

::: {#exr-1-10-8}

# Exercise 1.10.8

If $n$ letters are placed at random in $n$ envelopes, what is the probability that exactly $n − 1$ letters will be placed in the correct envelopes?

:::

::: {#exr-1-10-9}

# Exercise 1.10.9

Suppose that $n$ letters are placed at random in $n$ envelopes, and let $q_n$ denote the probability that no letter is placed in the correct envelope. For which of the following four values of $n$ is $q_n$ largest: $n = 10$, $n = 21$, $n = 53$, or $n = 300$?

:::

::: {#exr-1-10-10}

# Exercise 1.10.10

If three letters are placed at random in three envelopes, what is the probability that exactly one letter will be placed in the correct envelope?

:::

::: {#exr-1-10-11}

# Exercise 1.10.11

Suppose that 10 cards, of which five are red and five are green, are placed at random in 10 envelopes, of which five are red and five are green. Determine the probability that exactly $x$ envelopes will contain a card with a matching color ($x = 0, 1, \ldots, 10$).

:::

::: {#exr-1-10-12}

# Exercise 1.10.12

Let $A_1, A_2, \ldots$ be an infinite sequence of events such that $A_1 \subset A_2 \subset \cdots$. Prove that

$$
\Pr\left(\bigcup_{i=1}^{\infty}A_i\right) \lim_{n \rightarrow \infty}\Pr(A_n).
$$

*Hint*: Let the sequence $B_1, B_2, \ldots$ be defined as in @exr-1-5-12 of @sec-1-5, and show that

$$
\Pr\left( \bigcup_{i=1}^{\infty}A_i \right) = \lim_{n \rightarrow \infty}\Pr\left( \bigcup_{i=1}^n B_i \right) = \lim_{n \rightarrow \infty}\Pr(A_n).
$$

:::

::: {#exr-1-10-13}

# Exercise 1.10.13

Let $A_1, A_2, \ldots$ be an infinite sequence of events such that $A_1 \supset A2 \supset \cdots$. Prove that

$$
\Pr\left( \bigcap_{i=1}^{\infty}A_i \right) = \lim_{n \rightarrow \infty}\Pr(A_n).
$$

*Hint*: Consider the sequence $A_1^c, A_2^c, \ldots$, and apply @exr-1-10-12.

:::

