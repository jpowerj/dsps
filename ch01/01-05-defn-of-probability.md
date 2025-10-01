(sec-1-5)=
# 1.5 The Definition of Probability

(sec-1-5-0)=
# Overview

*We begin with the mathematical definition of probability and then present some useful results that follow easily from the definition.*

(sec-1-5-1)=
# 1.5.1 Axioms and Basic Theorems

In this section, we shall present the mathematical, or axiomatic, definition of probability. In a given experiment, it is necessary to assign to each event $A$ in the sample space $S$ a number $\Pr(A)$ that indicates the probability that $A$ will occur. In order to satisfy the mathematical definition of probability, the number $\Pr(A)$ that is assigned must satisfy three specific axioms. These axioms ensure that the number $\Pr(A)$ will have certain properties that we intuitively expect a probability to have under each of the various interpretations described in @sec-1-2.

The first axiom states that the probability of every event must be nonnegative.

:::{prf:axiom} Axiom 1
:label: prp-1

For every event $A$, $\Pr(A) \geq 0$.

:::

The second axiom states that if an event is certain to occur, then the probability of that event is 1.

::::{prf:axiom} Axiom 2
:label: prp-2

:::{math}
:enumerated: false
\Pr(S) = 1.
:::

::::

Before stating Axiom 3, we shall discuss the probabilities of disjoint events. If two events are disjoint, it is natural to assume that the probability that one or the other will occur is the sum of their individual probabilities. In fact, it will be assumed that this **additive property** of probability is also true for every finite collection of disjoint events and even for every infinite sequence of disjoint events. If we assume that this additive property is true only for a finite number of disjoint events, we cannot then be certain that the property will be true for an infinite sequence of disjoint events as well. However, if we assume that the additive property is true for every infinite sequence of disjoint events, then (as we shall prove) the property must also be true for every finite number of disjoint events. These considerations lead to the third axiom.

:::: {prf:axiom} Axiom 3
:label: prp-3

For every infinite sequence of disjoint events $A_1, A_2, \ldots$,

:::{math}
:enumerated: false
\Pr\left(\bigcup_{i=1}^{\infty}\right) = \sum_{i=1}^{\infty}\Pr(A_i).
:::

::::

::: {prf:example} Rolling a Die
:label: exm-1-5-1
:enumerator: 1.5.1

In @exm-1-4-1, for each subset $A$ of $S = \{1, 2, 3, 4, 5, 6\}$, let $\Pr(A)$ be the number of elements of $A$ divided by 6. It is trivial to see that this satisfies the first two axioms. There are only finitely many distinct collections of nonempty disjoint events. It is not difficult to see that @prp-3 is also satisfied by this example.

:::

::: {prf:example} A Loaded Die
:label: exm-1-5-2

In @exm-1-5-1, there are other choices for the probabilities of events. For example, if we believe that the die is loaded, we might believe that some sides have different probabilities of turning up. To be specific, suppose that we believe that 6 is twice as likely to come up as each of the other five sides. We could set $p_i = 1/7$ for $i = 1, 2, 3, 4, 5$ and $p_6 = 2/7$. Then, for each event $A$, define $\Pr(A)$ to be the sum of all $p_i$ such that $i \in A$. For example, if $A = \{1, 3, 5\}$, then $\Pr(A) = p_1 + p_3 + p_5 = 3/7$. It is not difficult to check that this also satisfies all three axioms.

:::

We are now prepared to give the mathematical definition of probability.

::: {prf:definition} Probability
:label: def-1-5-1

A **probability measure**, or simply a **probability**, on a sample space $S$ is a specification of numbers $\Pr(A)$ for all events $A$ that satisfy @prp-1, @prp-2, and @prp-3.

:::

We shall now derive two important consequences of @prp-3. First, we shall show that if an event is impossible, its probability must be 0.

:::: {prf:theorem}
:label: thm-1-5-1
:enumerator: 1.5.1

$$
Pr(\varnothing) = 0.
$$

::: {.proof}
Consider the infinite sequence of events $A_1, A_2, \ldots$ such that $A_i = \varnothing$ for $i = 1, 2, \ldots$. In other words, each of the events in the sequence is just the empty set $\varnothing$. Then this sequence is a sequence of disjoint events, since $\varnothing \cap \varnothing = \varnothing$. Furthermore, $\bigcup_{i=1}^{\infty}A_i = \varnothing$. Therefore, it follows from @prp-3 that

```{math}
:enumerated: false

\Pr(\varnothing) = \Pr\left(\bigcup_{i=1}^{\infty}A_i\right) = \sum_{i=1}^{\infty}\Pr(A_i) = \sum_{i=1}^{\infty}\Pr(\varnothing).
```

This equation states that when the number $\Pr(\varnothing)$ is added repeatedly in an infinite series, the sum of that series is simply the number $\Pr(\varnothing)$. The only real number with this property is zero.
:::

::::

We can now show that the additive property assumed in @prp-3 for an infinite sequence of disjoint events is also true for every finite number of disjoint events.

::::{prf:theorem}
:label: thm-1-5-2
:enumerator: 1.5.2

For every finite sequence of $n$ disjoint events $A_1, \ldots, A_n$,

```{math}
:enumerated: false

\Pr\left(\bigcup_{i=1}^n A_i\right) = \sum_{i=1}^n \Pr(A_i).
```

::: {.proof}
Consider the infinite sequence of events $A_1, A_2, \ldots$, in which $A_1, \ldots, A_n$ are the $n$ given disjoint events and $A_i = \varnothing$ for $i > n$. Then the events in this infinite sequence are disjoint and $\bigcup_{i=1}^{\infty}A_i = \bigcup_{i=1}^n A_i$. Therefore, by @prp-3,

```{math}
:enumerated: false
\begin{align*}
\Pr\left(\bigcup_{i=1}^nA_i\right) &= \Pr\left(\bigcup_{i=1}^{\infty}A_i\right) = \sum_{i=1}^{\infty}\Pr(A_i) \\
&= \sum_{i=1}^n\Pr(A_i) + \sum_{i=n+1}^{\infty}\Pr(A_i) \\
&= \sum_{i=1}^n\Pr(A_i) + 0 \\
&= \sum_{i=1}^n\Pr(A_i).
\end{align*}
```

:::
::::

(sec-1-5-2)=
# 1.5.2 Further Properties of Probability

From the axioms and theorems just given, we shall now derive four other general properties of probability measures. Because of the fundamental nature of these four properties, they will be presented in the form of four theorems, each one of which is easily proved.

::::{prf:theorem}
:label: thm-1-5-3
:enumerator: 1.5.3

For every event $A$, $\Pr(A^c) = 1 − \Pr(A)$.

::: {.proof}

Since $A$ and $A^c$ are disjoint events and $A \cup A^c = S$, it follows from @thm-1-5-2 that $\Pr(S) = \Pr(A) + \Pr(A^c)$. Since $\Pr(S) = 1$ by @prp-2, then $\Pr(A^c) = 1 − \Pr(A)$.

:::

::::

:::: {prf:theorem}
:label: thm-1-5-4
:enumerator: 1.5.4

If $A \subset B$, then $\Pr(A) \leq \Pr(B)$.

::: {.proof}

As illustrated in @fig-1-8, the event $B$ may be treated as the union of the two disjoint events $A$ and $B \cap A^c$. Therefore, $\Pr(B) = \Pr(A) + \Pr(B \cap A^c)$. Since $\Pr(B \cap A^c) \geq 0$, then $\Pr(B) \geq \Pr(A)$.

:::
::::

:::: {prf:theorem}
:label: thm-1-5-5
:enumerator: 1.5.5

For every event $A$, $0 \leq \Pr(A) \leq 1$.

::: {.proof}
It is known from @prp-1 that $\Pr(A) \geq 0$. Since $A \subset S$ for every event $A$, @thm-1-5-4 implies $\Pr(A) \leq \Pr(S) = 1$, by @prp-2.
:::

::::

:::: {prf:theorem}
:label: thm-1-5-6
:enumerator: 1.5.6

For every two events $A$ and $B$,

```{math}
:enumerated: false

\Pr(A \cap B^c) = \Pr(A) − \Pr(A \cap B).
```

::: {.proof}
According to @thm-1-4-11, the events $A \cap B^c$ and $A \cap B$ are disjoint and

$$
A = (A \cap B) \cup (A \cap B^c).
$$

It follows from @thm-1-5-2 that

$$
\Pr(A) = \Pr(A \cap B) + \Pr(A \cap B^c).
$$

Subtract $\Pr(A \cap B)$ from both sides of this last equation to complete the proof.
:::

::::

```{figure} images/fig-1-8.svg
:label: fig-1-8
:enumerator: 1.8

$B = A \cup (B \cap A^c)$ in the proof of @thm-1-5-4.
```

:::: {prf:theorem}
:label: thm-1-5-7
:enumerator: 1.5.7

For every two events $A$ and $B$,

$$
\Pr(A \cup B) = \Pr(A) + \Pr(B) − \Pr(A \cap B).
$$ {#eq-1-5-1}

::: {.proof}
From @thm-1-4-11, we have

$$
A \cup B = B \cup (A \cap B^c),
$$

and the two events on the right side of this equation are disjoint. Hence, we have

$$
\begin{align*}
\Pr(A \cup B) &= \Pr(B) + \Pr(A \cap B^c) \\
&= \Pr(B) + \Pr(A) − \Pr(A \cap B),
\end{align*}
$$

where the first equation follows from @thm-1-5-2, and the second follows from @thm-1-5-6.
:::

::::

:::: {prf:example} Diagnosing Diseases
:label: exm-1-5-3
:enumerator: 1.5.3

A patient arrives at a doctor's office with a sore throat and lowgrade fever. After an exam, the doctor decides that the patient has either a bacterial infection or a viral infection or both. The doctor decides that there is a probability of $0.7$ that the patient has a bacterial infection and a probability of $0.4$ that the person has a viral infection. What is the probability that the patient has both infections?

Let $B$ be the event that the patient has a bacterial infection, and let $V$ be the event that the patient has a viral infection. We are told that $\Pr(B) = 0.7$, that $\Pr(V) = 0.4$, and that $S = B \cup V$. We are asked to find $\Pr(B \cap V)$. We will use @thm-1-5-7, which
says that

$$
\Pr(B \cup V) = \Pr(B) + \Pr(V) − \Pr(B \cap V).
$$ {#eq-1-5-2}

Since $S = B \cup V$, the left-hand side of @eq-1-5-2 is $1$, while the first two terms on the right-hand side are $0.7$ and $0.4$. The result is

$$
1 = 0.7 + 0.4 − \Pr(B \cap V),
$$

which leads to $\Pr(B \cap V) = 0.1$, the probability that the patient has both infections. 

::::

:::: {prf:example} Demands for Utilities
:label: exm-1-5-4
:enumerator: 1.5.4

Consider, once again, the contractor who needs to plan for water and electricity demands in @exm-1-4-5. There are many possible choices for how to spread the probability around the sample space (pictured in @fig-1-5). One simple choice is to make the probability of an event $E$ proportional to the area of $E$. The area of $S$ (the sample space) is $(150 − 1)\cdot (200 − 4) = 29,204$, so $\Pr(E)$ equals the area of $E$ divided by 29,204. For example, suppose that the contractor is interested in high demand. Let $A$ be the set where water demand is at least 100, and let $B$ be the event that electric demand is at least 115, and suppose that these values are considered high demand. These events are shaded with different patterns in @fig-1-9. The area of $A$ is $(150 − 1) \cdot (200 − 100) = 14,900$, and the area of $B$ is $(150 − 115) \cdot (200 − 4) = 6,860$. So,

$$
\Pr(A) = \frac{14,900}{29,204} = 0.5102, \; \Pr(B) = \frac{6,860}{29,204} = 0.2349.
$$

The two events intersect in the region denoted by $A \cap B$. The area of this region is $(150 − 115) \cdot (200 − 100) = 3,500$, so $\Pr(A \cap B) = 3,500/29,204 = 0.1198$. If the contractor wishes to compute the probability that at least one of the two demands will be high, that probability is

$$
\Pr(A \cup B) = \Pr(A) + \Pr(B) − \Pr(A \cap B) = 0.5102 + 0.2349 − 0.1198 = 0.6253,
$$

according to @thm-1-5-7.

::::

```{figure} images/fig-1-9.svg
:label: fig-1-9
:enumerator: 1.9
:align: center
:width: 60%

The two events of interest in utility demand sample space for @exm-1-5-4
```

The proof of the following useful result is left to @exr-1-5-13.

:::: {prf:theorem} Bonferroni Inequality
:label: thm-1-5-8
:enumerator: 1.5.8

For all events $A_1, \ldots, A_n$,

$$
\Pr\left( \bigcup_{i=1}^n A_i \right) \leq \sum_{i=1}^n \Pr(A_i)\text{ and }\Pr\left( \bigcap_{i=1}^n A_i \right) \geq 1 - \sum_{i=1}^n\Pr(A_i^c).
$$

(The second inequality above is known as the **Bonferroni inequality**.)

::::

**Note: Probability Zero Does Not Mean Impossible**. When an event has probability 0, it does not mean that the event is impossible. In @exm-1-5-4, there are many events with 0 probability, but they are not all impossible. For example, for every $x$, the event that water demand equals $x$ corresponds to a line segment in @fig-1-5. Since line segments have 0 area, the probability of every such line segment is 0, but the events are not all impossible. Indeed, if every event of the form $\{\text{water demand equals }x\}$ were impossible, then water demand could not take any value at all. If $\epsilon > 0$, the event

```{math}
:enumerated: false

\{\text{water demand is between }x − \epsilon\text{ and }x + \epsilon\}
```

will have positive probability, but that probability will go to 0 as $\epsilon$ goes to 0.

(sec-1-5-3)=
# 1.5.3 Summary

We have presented the mathematical definition of probability through the three axioms. The axioms require that every event have nonnegative probability, that the whole sample space have probability 1, and that the union of an infinite sequence of disjoint events have probability equal to the sum of their probabilities. Some important results to remember include the following:

* If $A_1, \ldots, A_k$ are disjoint, $\Pr\left(\bigcup_{i=1}^kA_i\right) = \sum_{i=1}^k\Pr(A_i)$.
* $\Pr(A^c) = 1 - \Pr(A)$.
* $A \subset B$ implies that $\Pr(A) \leq \Pr(B)$.
* $\Pr(A \cup B) = \Pr(A) + \Pr(B) − \Pr(A \cap B)$.

It does not matter how the probabilities were determined. As long as they satisfy the three axioms, they must also satisfy the above relations as well as all of the results that we prove later in the text.

(sec-1-5-4)=
# 1.5.4 Exercises

:::: {exercise}
:label: exr-1-5-1
:enumerator: 1.5.1

::: {.exr-head}

## Exercise 1.5.1

:::

One ball is to be selected from a box containing red, white, blue, yellow, and green balls. If the probability that the selected ball will be red is $1/5$ and the probability that it will be white is $2/5$, what is the probability that it will be blue, yellow, or green?

::::

:::: {exercise}
:label: exr-1-5-2
:enumerator: 1.5.2

::: {.exr-head}

## Exercise 1.5.2

:::

A student selected from a class will be either a boy or a girl. If the probability that a boy will be selected is 0.3, what is the probability that a girl will be selected?

::::

:::: {exercise}
:label: exr-1-5-3
:enumerator: 1.5.3

:::{.exr-head}
## Exercise 1.5.3
:::

Consider two events $A$ and $B$ such that $\Pr(A) = 1/3$ and $\Pr(B) = 1/2$. Determine the value of $\Pr(B \cap A^c)$ for each of the following conditions:

* **(a)** $A$ and $B$ are disjoint;
* **(b)** $A \subset B$;
* **(c)** $\Pr(A \cap B) = 1/8$.

::::

:::: {exercise}
:label: exr-1-5-4
:enumerator: 1.5.4

::: {.exr-head}
## Exercise 1.5.4
:::

If the probability that student $A$ will fail a certain statistics examination is 0.5, the probability that student $B$ will fail the examination is 0.2, and the probability that both student $A$ and student $B$ will fail the examination is 0.1, what is the probability that at least one of these two students will fail the examination?

::::

:::: {exercise}
:label: exr-1-5-5
:enumerator: 1.5.5
::: {.exr-head}
## Exercise 1.5.5
:::

For the conditions of @exr-1-5-4, what is the probability that neither student $A$ nor student $B$ will fail the examination?

::::

:::: {exercise}
:label: exr-1-5-6
:enumerator: 1.5.6
::: {.exr-head}
## Exercise 1.5.6
:::

For the conditions of @exr-1-5-4, what is the probability that exactly one of the two students will fail the examination?

::::

:::: {exercise}
:label: exr-1-5-7
:enumerator: 1.5.7
::: {.exr-head}
## Exercise 1.5.7
:::

Consider two events $A$ and $B$ with $\Pr(A) = 0.4$ and $\Pr(B) = 0.7$. Determine the maximum and minimum possible values of $\Pr(A \cap B)$ and the conditions under which each of these values is attained.

::::

:::: {exercise}
:label: exr-1-5-8
:enumerator: 1.5.8
::: {.exr-head}
## Exercise 1.5.8
:::

If 50 percent of the families in a certain city subscribe to the morning newspaper, 65 percent of the families subscribe to the afternoon newspaper, and 85 percent of the families subscribe to at least one of the two newspapers, what percentage of the families subscribe to both newspapers?

::::

:::: {exercise}
:label: exr-1-5-9
:enumerator: 1.5.9
::: {.exr-head}
## Exercise 1.5.9
:::

Prove that for every two events $A$ and $B$, the probability that exactly one of the two events will occur is given by the expression

```{math}
:enumerated: false

\Pr(A) + \Pr(B) − 2 \Pr(A \cap B).
```

::::

:::: {exercise}
:label: exr-1-5-10
:enumerator: 1.5.10
::: {.exr-head}
## Exercise 1.5.10
:::

For two arbitrary events $A$ and $B$, prove that

```{math}
:enumerated: false

\Pr(A) = \Pr(A \cap B) + \Pr(A \cap B^c).
```

::::

:::: {exercise}
:label: exr-1-5-11
:enumerator: 1.5.11
::: {.exr-head}
## Exercise 1.5.11
:::

A point $(x, y)$ is to be selected from the square $S$ containing all points $(x, y)$ such that $0 \leq x \leq 1$ and $0 \leq y \leq 1$. Suppose that the probability that the selected point will belong to each specified subset of $S$ is equal to the area of that subset. Find the probability of each of the following subsets:

* (a) The subset of points such that $\left(x − \frac{1}{2}\right)^2 + \left(y − \frac{1}{2}\right)^2 \geq \frac{1}{4}$;
* (b) The subset of points such that $\frac{1}{2} < x + y < \frac{3}{2}$;
* (c) The subset of points such that $y \leq 1 - x^2$;
* (d) The subset of points such that $x = y$.

::::

:::: {exercise}
:label: exr-1-5-12
:enumerator: 1.5.12
::: {.exr-head}
## Exercise 1.5.12
:::

Let $A_1, A_2, \ldots$ be an arbitrary infinite sequence of events, and let $B_1, B_2, \ldots$ be another infinite sequence of events defined as follows: $B_1 = A_1$, $B_2 = A_1^c \cap A_2$, $B_3 = A_1^c \cap A_2^c \cap A_3$, $B_4 = A_1^c \cap A_2^c \cap A_3^c \cap A_4$, $\ldots$. Prove that

$$
\Pr\left(\bigcup_{i=1}^nA_i\right) = \sum_{i=1}^n\Pr(B_i) \text{ for }n = 1, 2, \ldots,
$$

and that

$$
\Pr\left(\bigcup_{i=1}^{\infty}A_i\right) = \sum_{i=1}^{\infty}\Pr(B_i).
$$

::::

:::: {exercise}
:label: exr-1-5-13
:enumerator: 1.5.13
::: {.exr-head}
## Exercise 1.5.13
:::

Prove @thm-1-5-8. *Hint*: Use @exr-1-5-12.

::::

:::: {exercise}
:label: exr-1-5-14
:enumerator: 1.5.14
::: {.exr-head}
## Exercise 1.5.14
:::

Consider, once again, the four blood types A, B, AB, and O described in @exr-1-4-8 together with the two antigens anti-A and anti-B. Suppose that, for a given person, the probability of type O blood is 0.5, the probability of type A blood is 0.34, and the probability of type B blood is 0.12.

* (a) Find the probability that each of the antigens will react with this person's blood.
* (b) Find the probability that both antigens will react with this person's blood.

::::
