(sec-1-4)=
# 1.4 Set Theory

(sec-1-4-0)=
# Overview

*This section develops the formal mathematical model for events, namely, the theory of sets. Several important concepts are introduced, namely, element, subset, empty set, intersection, union, complement, and disjoint sets.*

(sec-1-4-1)=
# 1.4.1 The Sample Space

:::: {prf:definition} Sample Space
:label: def-1-4-1
:enumerator: 1.4.1
:::{.head}
## Definition 1.4.1: Sample Space
:::

The collection of all possible outcomes of an experiment is called the **sample space** of the experiment.

::::

The sample space of an experiment can be thought of as a **set**, or collection, of different possible outcomes; and each outcome can be thought of as a **point**, or an **element**, in the sample space. Similarly, events can be thought of as **subsets** of the sample space.

:::: {prf:example} Rolling a Die
:label: exm-1-4-1
:enumerator: 1.4.1
:::{.head}
## Example 1.4.1: Rolling a Die
:::

When a six-sided die is rolled, the sample space can be regarded as containing the six numbers 1, 2, 3, 4, 5, 6, each representing a possible side of the die that shows after the roll. Symbolically, we write

```{math}
:enumerated: false

S = \{1, 2, 3, 4, 5, 6\}.
```

One event $A$ is that an even number is obtained, and it can be represented as the subset $A = \{2, 4, 6\}$. The event $B$ that a number greater than 2 is obtained is defined by the subset $B = \{3, 4, 5, 6\}$.

::::

Because we can interpret outcomes as elements of a set and events as subsets of a set, the language and concepts of set theory provide a natural context for the development of probability theory. The basic ideas and notation of set theory will now be reviewed.

(sec-1-4-2)=
# 1.4.2 Relations of Set Theory

Let $S$ denote the sample space of some experiment. Then each possible outcome $s$ of the experiment is said to be a member of the space $S$, or to belong to the space $S$. The statement that s is a member of $S$ is denoted symbolically by the relation $s \in S$.

When an experiment has been performed and we say that some event $E$ has occurred, we mean two equivalent things. One is that the outcome of the experiment satisfied the conditions that specified that event $E$. The other is that the outcome,
considered as a point in the sample space, is an element of $E$.

To be precise, we should say which sets of outcomes correspond to events as defined above. In many applications, such as @exm-1-4-1, it will be clear which sets of outcomes should correspond to events. In other applications (such as @exm-1-4-5 coming up later), there are too many sets available to have them all be events. Ideally, we would like to have the largest possible collection of sets called events so that we have the broadest possible applicability of our probability calculations. However,
when the sample space is too large (as in @exm-1-4-5) the theory of probability
simply will not extend to the collection of all subsets of the sample space.We would
prefer not to dwell on this point for two reasons. First, a careful handling requires
mathematical details that interfere with an initial understanding of the important concepts, and second, the practical implications for the results in this text are minimal.

In order to be mathematically correct without imposing an undue burden on the reader, we note the following. In order to be able to do all of the probability calculations
that we might find interesting, there are three simple conditions that must
be met by the collection of sets that we call events. In every problem that we see in
this text, there exists a collection of sets that includes all the sets that we will need to
discuss and that satisfies the three conditions, and the reader should assume that such
a collection has been chosen as the events. For a sample space $S$ with only finitely many outcomes, the collection of all subsets of S satisfies the conditions, as the reader can show in @exr-3-2-1 in this section.

The first of the three conditions can be stated immediately.

::: {prf:criterion}
:label: cnd-1
:enumerator: 1

The sample space S must be an event.

:::

That is, we must include the sample space $S$ in our collection of events. The other two conditions will appear later in this section because they require additional definitions.

:::: {prf:definition} Containment
:label: def-1-4-2
:enumerator: 1.4.2
:::{.head}
## Definition 1.4.2: Containment
:::

It is said that a set $A$ is **contained in** another set $B$ if every element of the set $A$ also belongs to the set $B$. This relation between two events is expressed symbolically by the expression $A \subset B$, which is the set-theoretic expression for saying that $A$ is a subset of $B$. Equivalently, if $A \subset B$, we may say that $B$ **contains** $A$ and may write $B \supset A$.

::::

For events, to say that $A \subset B$ means that if $A$ occurs then so does $B$.

The proof of the following result is straightforward and is omitted.

:::: {prf:theorem}
:label: thm-1-4-1
:enumerator: 1.4.1
:::{.head}
## Theorem 1.4.1
:::

Let $A$, $B$, and $C$ be events. Then $A \subseteq S$. If $A \subseteq B$ and $B \subseteq A$, then $A = B$. If $A \subseteq B$ and $B \subseteq C$, then $A \subseteq C$.

::::

:::: {prf:example} Rolling a Die
:label: exm-1-4-2
:enumerator: 1.4.2
:::{.head}
## Example 1.4.2: Rolling a Die
:::

In @exm-1-4-1, suppose that $A$ is the event that an even number is obtained and $C$ is the event that a number greater than 1 is obtained. Since $A = \{2, 4, 6\}$ and $C = \{2, 3, 4, 5, 6\}$, it follows that $A \subseteq C$.

::::

**The Empty Set**: Some events are impossible. For example, when a die is rolled, it is impossible to obtain a negative number. Hence, the event that a negative number will be obtained is defined by the subset of $S$ that contains no outcomes.

:::: {prf:definition} Empty Set
:label: def-1-4-3
:enumerator: 1.4.3

The subset of $S$ that contains no elements is called the **empty set**, or **null set**, and it is denoted by the symbol $\varnothing$.

::::

In terms of events, the empty set is any event that cannot occur.

::::{prf:theorem}
:label: thm-1-4-2
:enumerator: 1.4.2

Let $A$ be an event. Then $\varnothing \subset A$.

_Proof_: Let $A$ be an arbitrary event. Since the empty set $\varnothing$ contains no points, it is logically correct to say that every point belonging to $\varnothing$ also belongs to $A$, or $\varnothing \subset A$.

::::

**Finite and Infinite Sets**: Some sets contain only finitely many elements, while others have infinitely many elements. There are two sizes of infinite sets that we need to distinguish.

:::: {prf:definition} Countable / Uncountable
:label: def-1-4-4
:enumerator: 1.4.4
:::{.head}
## Definition 1.4.4: Countable / Uncountable
:::

An infinite set $A$ is **countable** if there is a one-to-one correspondence between the elements of $A$ and the set of natural numbers $\{1, 2, 3, \ldots\}$. A set is **uncountable** if it is neither finite nor countable. If we say that a set has **at most countably many** elements, we mean that the set is either finite or countable.

::::

Examples of countably infinite sets include the integers, the even integers, the odd integers, the prime numbers, and any infinite sequence. Each of these can be put in one-to-one correspondence with the natural numbers. For example, the following function $f$ puts the integers in one-to-one correspondence with the natural numbers:

```{math}
:enumerated: false

f(n) = \begin{cases}
\frac{n-1}{2} &\text{if }n\text{ is odd,} \\
-\frac{n}{2} &\text{if }n\text{ is even.}
\end{cases}
```

Every infinite sequence of distinct items is a countable set, as its indexing puts it in one-to-one correspondence with the natural numbers. Examples of uncountable sets include the real numbers, the positive reals, the numbers in the interval $[0, 1]$, and the set of all ordered pairs of real numbers. An argument to show that the real numbers are uncountable appears at the end of this section. Every subset of the integers has at most countably many elements.

(sec-1-4-3)=
# 1.4.3 Operations of Set Theory

:::{prf:definition} Complement
:label: def-1-4-5
:enumerator: 1.4.5

The **complement** of a set $A$ is defined to be the set that contains all elements of the sample space $S$ that **do not** belong to $A$. The notation for the complement of $A$ is $A^c$.

:::

In terms of events, the event $A^c$ is the event that $A$ does not occur.

:::{prf:example} Rolling a Die
:label: exm-1-4-3

In @exm-1-4-1, suppose again that $A$ is the event that an even number is rolled; then $A^c = \{1, 3, 5\}$ is the event that an odd number is rolled.  

:::

We can now state the second condition that we require of the collection of events.

```{figure} images/fig-1-1.svg
:label: fig-1-1
:align: center
:enumerator: 1.1
:width: 50%

The event $A^c$
```

```{figure} images/fig-1-2.svg
:label: fig-1-2
:enumerator: 1.2
:width: 50%

The set $A \cup B$
```

:::{prf:criterion}

If $A$ is an event, then $A^c$ is also an event.

:::

That is, for each set $A$ of outcomes that we call an event, we must also call its complement $A^c$ an event.

A generic version of the relationship between $A$ and $A^c$ is sketched in @fig-1-1.

A sketch of this type is called a **Venn diagram**.

Some properties of the complement are stated without proof in the next result.

:::: {prf:theorem}
:label: thm-1-4-3
:enumerator: 1.4.3
:::{.head}
## Theorem 1.4.3
:::

Let $A$ be an event. Then

```{math}
:enumerated: false
(A^c)^c = A, \; \varnothing^c = S, \; S^c = \varnothing.
```

The empty event $\varnothing$ is an event.

::::

:::{prf:definition} Union of Two Sets
:label: def-1-4-6

If $A$ and $B$ are any two sets, the **union** of $A$ and $B$ is defined to be the set containing all outcomes that belong to $A$ alone, to $B$ alone, or to both $A$ and
$B$. The notation for the union of $A$ and $B$ is $A \cup B$.

:::

The set $A \cup B$ is sketched in @fig-1-2. In terms of events, $A \cup B$ is the event that either $A$ or $B$ or both occur.

The union has the following properties whose proofs are left to the reader.

:::{prf:theorem}
:label: thm-1-4-4

For all sets $A$ and $B$,

$$
\begin{align*}
A \cup B &= B \cup A, \; & A \cup A &= A, \; & A \cup A^c = S, \\
A \cup \varnothing &= A, & \; A \cup S &= S. & \; &
\end{align*}
$$

Furthermore, if A ⊂ B, then A ∪ B = B.

:::

The concept of union extends to more than two sets.

:::{prf:definition} Union of Many Sets
:label: def-1-4-7

The **union** of $n$ sets $A_1, \ldots, A_n$ is defined to be the set that contains all outcomes that belong to at least one of these $n$ sets. The notation for this union is either of the following:

```{math}
:enumerated: false
A_1 \cup A_2 \cup \cdots A_n\text{ or }\bigcup_{i=1}^n A_i.
```

:::

Similarly, the **union** of an infinite sequence of sets $A_1, A_2, \ldots$ is the set that contains all outcomes that belong to at least one of the events in the sequence. The infinite union is denoted by $\bigcup_{i=1}^{\infty}A_i$.

In terms of events, the union of a collection of events is the event that at least one of the events in the collection occurs.

We can now state the final condition that we require for the collection of sets that we call events.

:::{prf:criterion}

If $A_1, A_2, \ldots$ is a countable collection of events, then $\bigcup_{i=1}^{\infty}A_i$ is also an event.

:::

In other words, if we choose to call each set of outcomes in some countable collection an event, we are required to call their union an event also. We do **not** require that the union of an arbitrary collection of events be an event. To be clear, let $I$ be an arbitrary set that we use to index a general collection of events $\{A_i : i \in I \}$. The union of the events in this collection is the set of outcomes that are in at least one of the events in the collection. The notation for this union is $\bigcup_{i \in I}A_i$. We do not require that $\bigcup_{i \in I}A_i$ be an event unless $I$ is countable.

Condition 3 refers to a countable collection of events. We can prove that the condition also applies to every finite collection of events.

:::{prf:theorem}
:label: thm-1-4-5

The union of a finite number of events $A_1, \ldots, A_n$ is an event.

*Proof*: For each $m = n + 1, n + 2, \ldots$, define $A_m = \varnothing$. Because $\varnothing$ is an event, we now have a countable collection $A_1, A_2, \ldots$ of events. It follows from Condition 3 that $\bigcup_{m=1}^{\infty}A_m$ is an event. But is it easy to see that $\bigcup_{m=1}^{\infty}A_m = \bigcup_{m=1}^nA_m$.

:::

The union of three events $A$, $B$, and $C$ can be constructed either directly from the definition of $A \cup B \cup C$ or by first evaluating the union of any two of the events and then forming the union of this combination of events and the third event. In other words, the following result is true.

:::{prf:theorem} Associative Property
:label: thm-1-4-6

For every three events $A$, $B$, and $C$, the following associative relations are satisfied:

$$
A \cup B \cup C = (A \cup B) \cup C = A \cup (B \cup C).
$$

:::

::: {prf:definition} Intersection of Two Sets
:label: def-1-4-8
:enumerator: 1.4.8

If $A$ and $B$ are any two sets, the **intersection** of $A$ and $B$ is defined to be the set that contains all outcomes that belong **both to $A$ and to $B$**. The notation for the intersection of $A$ and $B$ is $A \cap B$.

:::

The set $A \cap B$ is sketched in a Venn diagram in @fig-1-3. In terms of events, $A \cap B$ is the event that both $A$ and $B$ occur.

The proof of the first part of the next result follows from @exm-1-4-3 in this section. The rest of the proof is straightforward.

```{figure} images/fig-1-3.svg
:label: fig-1-3
:enumerator: 1.3
:align: center
:width: 50%

The set $A \cap B$
```

:::: {prf:theorem}
:label: thm-1-4-7
:enumerator: 1.4.7

If $A$ and $B$ are events, then so is $A \cap B$. For all events $A$ and $B$,

* $A \cap B = B \cap A$,
* $A \cap A = A$,
* $A \cap A^c = \varnothing$,
* $A \cap \varnothing = \varnothing$,
* $A \cap S = A$.

Furthermore, if $A \subseteq B$, then $A \cap B = A$.

::::

The concept of intersection extends to more than two sets.

:::: {prf:definition} Intersection of Many Sets
:label: def-1-4-9
:enumerator: 1.4.9

The **intersection** of n sets A1, . . . ,An is defined to be the set that contains the elements that are common to all these n sets. The notation for
this intersection is A1 ∩ A2 ∩ . . . ∩ An or
 n
i=1 Ai . Similar notations are used for the
intersection of an infinite sequence of sets or for the intersection of an arbitrary
collection of sets.

::::

In terms of events, the intersection of a collection of events is the event that every event in the collection occurs.

The following result concerning the intersection of three events is straightforward to prove.

::: {.callout-tip}
::: {#thm-1-4-8}

## Theorem 1.4.8: Associative Property

For every three events A, B, and C, the following associative
relations are satisfied:
A ∩ B ∩ C = (A ∩ B) ∩ C = A ∩ (B ∩ C).

:::
:::

::: {.callout-tip}
::: {#def-1-4-10}

## Definition 1.4.10: Disjoint/Mutually Exclusive

It is said that two sets A and B are disjoint, or mutually
exclusive, if A and B have no outcomes in common, that is, if A ∩ B = ∅. The sets
A1, . . . , An or the sets A1, A2, . . . are disjoint if for every i  = j , we have that Ai and
Aj are disjoint, that is, Ai
∩ Aj
=∅ for all i  = j . The events in an arbitrary collection
are disjoint if no two events in the collection have any outcomes in common.

:::
:::

In terms of events, $A$ and $B$ are disjoint if they cannot both occur.

As an illustration of these concepts, a Venn diagram for three events $A_1$, $A_2$, and $A_3$ is presented in @fig-1-4. This diagram indicates that the various intersections of $A_1$, $A_2$, and $A_3$ and their complements will partition the sample space $S$ into eight disjoint subsets.

```{figure} images/fig-1-4.svg
:label: fig-1-4
:enumerator: 1.4
:align: center
:width: 50%

Partition of $S$ determined by three events $A_1$, $A_2$, $A_3$
```

:::: {prf:example} Tossing a Coin
:label: exm-1-4-4
:enumerator: 1.4.4

Suppose that a coin is tossed three times. Then the sample space $S$ contains the following eight possible outcomes $s_1, \ldots, s_8$:

s1: HHH,
s2: THH,
s3: HTH,
s4: HHT,
s5: HTT,
s6: THT,
s7: TTH,
s8: TTT.
In this notation, H indicates a head and T indicates a tail. The outcome s3, for
example, is the outcome in which a head is obtained on the first toss, a tail is obtained
on the second toss, and a head is obtained on the third toss.
To apply the concepts introduced in this section, we shall define four events as
follows: Let A be the event that at least one head is obtained in the three tosses; let
B be the event that a head is obtained on the second toss; let C be the event that a
tail is obtained on the third toss; and let D be the event that no heads are obtained.
Accordingly,
A = {s1, s2, s3, s4, s5, s6, s7},
B = {s1, s2, s4, s6},
C = {s4, s5, s6, s8},
D = {s8}.
Various relations among these events can be derived. Some of these relations
are B ⊂ A, Ac = D, B ∩ D = ∅, A ∪ C = S, B ∩ C = {s4, s6}, (B ∪ C)c = {s3, s7}, and
A ∩ (B ∪ C) = {s1, s2, s4, s5, s6}.  


::::

:::{prf:example} Demands for Utilities
:label: exm-1-4-5
:enumerator: 1.4.5

A contractor is building an office complex and needs to plan
for water and electricity demand (sizes of pipes, conduit, and wires). After consulting
with prospective tenants and examining historical data, the contractor decides that
the demand for electricity will range somewhere between 1 million and 150 million
kilowatt-hours per day and water demand will be between 4 and 200 (in thousands
of gallons per day). All combinations of electrical and water demand are considered
possible. The shaded region in @fig-1-5 shows the sample space for the experiment, consisting of learning the actual water and electricity demands for the office complex. We can express the sample space as the set of ordered pairs $\{(x, y) : 4 \leq x \leq 200, 1 \leq y \leq 150\}$, where $x$ stands for water demand in thousands of gallons per day and $y$ stands for the electric demand in millions of kilowatt-hours per day. The types of sets that we want to call events include sets like

$$
\begin{align*}
\{\text{water demand is at least }100\} &= \{(x, y) : x \geq 100\},\text{ and} \\
\{\text{electric demand is no more than }35\} &= \{(x, y) : y \leq 35\},
\end{align*}
$$

along with intersections, unions, and complements of such sets. This sample space has infinitely many points. Indeed, the sample space is uncountable. There are many more sets that are difficult to describe and which we will have no need to consider as events.  

:::

```{figure} images/fig-1-5.svg
:label: fig-1-5
:enumerator: 1.5
:width: 50%

Sample space for water and electric demand in @exm-1-4-5
```

![Partition of $A \cup B$ in @thm-1-4-11](images/fig-1-6.svg){#fig-1-6 width="50%"}

## Additional Properties of Sets

The proof of the following useful result is left to @exr-1-4-3 in this section.

:::{prf:theorem} De Morgan's Laws
:label: thm-1-4-9
:enumerator: 1.4.9

For every two sets $A$ and $B$,

$(A ∪ B)c = Ac ∩ Bc and (A ∩ B)c = Ac ∪ Bc$.

:::

The generalization of @thm-1-4-9 is the subject of @exr-1-4-5 in this section.

The proofs of the following distributive properties are left to @exr-1-4-2 in this section. These properties also extend in natural ways to larger collections of events.

::: {prf:theorem} Distributive Properties
:label: thm-1-4-10
:enumerator: 1.4.10

For every three sets A, B, and C,
A ∩ (B ∪ C) = (A ∩ B) ∪ (A ∩ C) and A ∪ (B ∩ C) = (A ∪ B) ∩ (A ∪ C).

:::

The following result is useful for computing probabilities of events that can be partitioned into smaller pieces. Its proof is left to @exr-1-4-4 in this section, and is illuminated by @fig-1-6.

::: {.callout-tip}
::: {#thm-1-4-11}

## Theorem 1.4.11: Partitioning a Set

For every two sets $A$ and $B$, $A \cap B$ and $A \cap B^c$ are disjoint and

$$
A = (A \cap B) \cup (A \cap B^c).
$$

In addition, $B$ and $A \cap B^c$ are disjoint, and

$$
A \cup B = B \cup (A \cap B^c).
$$

:::
:::

## Proof That the Real Numbers Are Uncountable

We shall show that the real numbers in the interval $[0, 1)$ are uncountable. Every larger set is a fortiori uncountable. For each number $x \in [0, 1)$, define the sequence $\{a_n(x)\}_{n=1}^{\infty}$ as follows. First, $a_1(x) = \lfloor{}10x \rfloor$, where $\lfloor y \rfloor$ stands for the greatest integer less than or equal to $y$ (round non-integers down to the closest integer below). Then set $b_1(x) = 10x − a_1(x)$, which will again be in $[0, 1)$. For $n > 1$, $a_n(x) = \lfloor{}10b_{n−1}(x)\rfloor{}$ and $b_n(x) = 10b_{n−1}(x) − a_n(x)$. It is easy to see that the sequence $\{a_n(x)\}_{n=1}^{\infty}$ gives a
decimal expansion for $x$ in the form

$$
x = \sum_{n=1}^{\infty}a_n(x)10^{-n}.
$$ {#eq-1-4-1}

By construction, each number of the form $x = k/10^m$ for some nonnegative integers $k$ and $m$ will have $a_n(x) = 0$ for $n > m$. The numbers of the form $k/10^m$ are the only ones that have an alternate decimal expansion $x = \sum_{n=1}^{\infty}c_n(x)10^{-n}$. When $k$ is not a multiple of 10, this alternate expansion satisfies $c_n(x) = a_n(x)$ for $n = 1, \ldots, m-1$, $c_m(x) = a_m(x) − 1$, and $c_n(x) = 9$ for $n > m$. Let $C = \{0, 1, \ldots, 9\}^{\infty}$ stand for the set of all infinite sequences of digits. Let $B$ denote the subset of $C$ consisting of those sequences that don’t end in repeating 9's. Then we have just constructed a function a from the interval $[0, 1)$ onto $B$ that is one-to-one and whose inverse is given in @eq-1-4-1. We now show that the set $B$ is uncountable, hence $[0, 1)$ is uncountable. Take any countable subset of $B$ and arrange the sequences into a rectangular array with the $k$th sequence running across the $k$th row of the array for $k = 1, 2, \ldots$. @fig-1-7 gives an example of part of such an array.

In @fig-1-7, we have underlined the $k$th digit in the $k$th sequence for each $k$. This portion of the array is called the **diagonal** of the array. We now show that there must exist a sequence in $B$ that is not part of this array. This will prove that the whole set $B$ cannot be put into such an array, and hence cannot be countable. Construct the sequence $\{d_n\}_{n=1}^{\infty}$ as follows. For each $n$, let $d_n = 2$ if the $n$th digit in the $n$th sequence is 1, and $d_n = 1$ otherwise. This sequence does not end in repeating 9's; hence, it is in $B$. We conclude the proof by showing that $\{d_n\}_{n=1}^{\infty}$ does not appear anywhere in the array. If the sequence did appear in the array, say, in the $k$th row, then its $k$th element would be the $k$th diagonal element of the array. But we constructed the sequence so that for every $n$ (including $n = k$), its $n$th element never matched the $n$th diagonal element. Hence, the sequence can't be in the $k$th row, no matter what $k$ is. The argument given here is essentially that of the nineteenth-century German
mathematician Georg Cantor.

::: {#fig-1-7}

$$
\begin{matrix}
\underline{0} & 2 & 3 & 0 & 7 & 1 & 3 & \cdots \\
1 & \underline{9} & 9 & 2 & 1 & 0 & 0 & \cdots \\
2 & 7 & \underline{3} & 6 & 0 & 1 & 1 & \cdots \\
8 & 0 & 2 & \underline{1} & 2 & 7 & 9 & \cdots \\ 
7 & 0 & 1 & 6 & \underline{0} & 1 & 3 & \cdots \\
1 & 5 & 1 & 5 & 1 & \underline{5} & 1 & \cdots \\
2 & 3 & 4 & 5 & 6 & 7 & \underline{8} & \cdots \\
% 0 & 1 & 7 & 3 & 2 & 9 & 8 & \cdots \\
\vdots & \vdots & \vdots & \vdots & \vdots & \vdots & \vdots & \ddots \\
\end{matrix}
$$

An array of a countable collection of sequences of digits with the diagonal underlined.
:::

(sec-1-4-4)=
# 1.4.4 Summary

We will use set theory for the mathematical model of events. Outcomes of an experiment are elements of some sample space $S$, and each event is a subset of $S$. Two events both occur if the outcome is in the intersection of the two sets. At least one of a collection of events occurs if the outcome is in the union of the sets. Two events cannot both occur if the sets are disjoint. An event fails to occur if the outcome is in the complement of the set. The empty set stands for every event that cannot possibly occur. The collection of events is assumed to contain the sample space, the complement of each event, and the union of each countable collection of events.

(sec-1-4-5)=
# 1.4.5 Exercises

::: {#exr-1-4-1}

## Exercise 1.4.1

Suppose that $A \subset B$. Show that $B^c \subset A^c$.

:::

::: {#exr-1-4-2}

## Exercise 1.4.2

Prove the distributive properties in @thm-1-4-10.

:::

::: {#exr-1-4-3}

## Exercise 1.4.3

Prove De Morgan's laws (@thm-1-4-9).

:::

::: {#exr-1-4-4}

## Exercise 1.4.4

Prove @thm-1-4-11.

:::

::: {#exr-1-4-5}

## Exercise 1.4.5

For every collection of events $A_i (i \in I)$, show that
 
$$
\left(\bigcup_{i \in I}A_i\right)^c = \bigcap_{i \in I}A_i^c \text{ and }\left(\bigcap_{i \in I}A_i\right)^c = \bigcup_{i \in I}A_i^c.
$$

:::

::: {#exr-1-4-6}

## Exercise 1.4.6

Suppose that one card is to be selected from a deck of 20 cards that contains 10 red cards numbered from 1 to 10 and 10 blue cards numbered from 1 to 10. Let $A$ be the event that a card with an even number is selected, let $B$ be the event that a blue card is selected, and let $C$ be the event that a card with a number less than 5 is selected. Describe the sample space $S$ and describe each of the following events both in words and as subsets of $S$:

(a) $A \cap B \cap C$
(b) $B \cap C^c$
(c) $A \cup B \cup C$
(d) $A \cap (B \cup C)$
(e) $A^c \cap B^c \cap C^c$.

:::

::: {#exr-1-4-7}

## Exercise 1.4.7

Suppose that a number $x$ is to be selected from the real line $S$, and let $A$, $B$, and $C$ be the events represented by the following subsets of $S$, where the notation $\{x : p(x)\}$ denotes the set containing every point $x$ for which the property $p$ following the colon is satisfied:

$$
\begin{align*}
A &= \{x : 1 \leq x \leq 5\}, \\
B &= \{x : 3 < x \leq 7\}, \\
C &= \{x : x \leq 0\}.
\end{align*}
$$

Describe each of the following events as a set of real numbers:

(a) $A^c$
(b) $A \cup B$
(c) $B \cap C^c$
(d) $A^c \cap B^c \cap C^c$
(e) $(A \cup B) \cap C$.

:::

::: {#exr-1-4-8}

## Exercise 1.4.8

A simplified model of the human blood-type system
has four blood types: A, B, AB, and O. There are two antigens, anti-A and anti-B, that react with a person's blood in different ways depending on the blood type. Anti-A reacts with blood types A and AB, but not with B and O. Anti-B reacts with blood types B and AB, but not with A and O. Suppose that a person's blood is sampled and tested with the two antigens. Let $A$ be the event that the blood reacts with anti-A, and let $B$ be the event that it reacts with anti-B. Classify the person's blood type using
the events $A$, $B$, and their complements.

:::

::: {#exr-1-4-9}

# Exercise 1.4.9

Let $S$ be a given sample space and let $A_1, A_2, \ldots$ be an infinite sequence of events. For $n = 1, 2, \ldots$, let $B_n = \bigcup_{i=n}^{\infty}A_i$ and let $C_n = \bigcap_{i=n}^{\infty}A_i$.

(a) Show that $B_1 \supset B_2 \supset \cdots$ and that $C_1 \subset C_2 \subset \cdots$.
(b) Show that an outcome in $S$ belongs to the event $\bigcap_{n=1}^{\infty}B_n$ if and only if it belongs to an infinite number of the events $A_1, A_2, \ldots$.
(c) Show that an outcome in $S$ belongs to the event $\bigcup_{n=1}^{\infty}$ if and only if it belongs to all the events $A_1, A_2, \ldots$ except possibly a finite number of those events.

:::

::: {#exr-1-4-10}

# Exercise 1.4.10

Three six-sided dice are rolled. The six sides of each die are numbered 1–6. Let $A$ be the event that the first die shows an even number, let $B$ be the event that the second die shows an even number, and let $C$ be the event that the third die shows an even number. Also, for each $i = 1, \ldots, 6$, let $A_i$ be the event that the first die shows the number $i$, let $B_i$ be the event that the second die shows the number $i$, and let $C_i$ be the event that the third die shows the number $i$. Express each of the following events in terms of the named events described above:

(a) The event that all three dice show even numbers
(b) The event that no die shows an even number
(c) The event that at least one die shows an odd number
(d) The event that at most two dice show odd numbers
(e) The event that the sum of the three dice is no greater than 5

:::

::: {#exr-1-4-11}

# Exercise 1.4.11

A power cell consists of two subcells, each of which can provide from 0 to 5 volts, regardless of what the other subcell provides. The power cell is functional if and only if the sum of the two voltages of the subcells is at least 6 volts. An experiment consists of measuring and recording the voltages of the two subcells. Let $A$ be the event that the power cell is functional, let $B$ be the event that two subcells have the same voltage, let $C$ be the event that the first subcell has a strictly higher voltage than the second subcell, and let $D$ be the event that the power cell is not functional but needs less than one additional volt to become functional.

(a) Define a sample space $S$ for the experiment as a set of ordered pairs that makes it possible for you to express the four sets above as events.
(b) Express each of the events $A$, $B$, $C$, and $D$ as sets of ordered pairs that are subsets of $S$.
(c) Express the following set in terms of $A$, $B$, $C$, and/or $D$: $\{(x, y) : x = y\text{ and }x + y \leq 5\}$.
(d) Express the following event in terms of $A$, $B$, $C$, and/or $D$: the event that the power cell is not functional and the second subcell has a strictly higher voltage than the first subcell.

:::

::: {#exr-1-4-12}

# Exercise 1.4.12

Suppose that the sample space $S$ of some experiment is finite. Show that the collection of all subsets of $S$ satisfies the three conditions required to be called the collection of events.

:::

::: {#exr-1-4-13}

# Exercise 1.4.13

Let $S$ be the sample space for some experiment. Show that the collection of subsets consisting solely of $S$ and $\varnothing$ satisfies the three conditions required in order to be called the collection of events. Explain why this collection would not be very interesting in most real problems.

:::

::: {#exr-1-4-14}

# Exercise 1.4.14

Suppose that the sample space $S$ of some experiment is countable. Suppose also that, for every outcome $s \in S$, the subset $\{s\}$ is an event. Show that every subset of $S$ must be an event. *Hint*: Recall the three conditions required of the collection of subsets of $S$ that we call events.

:::
