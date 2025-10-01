(sec-2-2)=
# 2.2 Independent Events

(sec-2-2-0)=
# Overview

*If learning that $B$ has occurred does not change the probability of $A$, then we say that $A$ and $B$ are independent. There are many cases in which events $A$ and $B$ are not independent, but they would be independent if we learned that some other event $C$ had occurred. In this case, $A$ and $B$ are conditionally independent given $C$.*

:::: {prf:example} Tossing Coins
:label: exm-2-2-1
:enumerator: 2.2.1
:::{.head}
## Example 2.2.1: Tossing Coins
:::

Suppose that a fair coin is tossed twice. The experiment has four outcomes, $HH$, $HT$, $TH$, and $TT$, that tell us how the coin landed on each of the two tosses. We can assume that this sample space is simple so that each outcome has probability $1/4$. Suppose that we are interested in the second toss. In particular, we want to calculate the probability of the event $A = \{H\text{ on second toss}\}$. We see that $A = \{HH, TH\}$, so that $\Pr(A) = 2/4 = 1/2$. If we learn that the first coin landed $T$, we might wish to compute the conditional probability $\Pr(A \mid B)$ where $B = \{T\text{ on first toss}\}$. Using the definition of conditional probability, we easily compute

$$
\Pr(A \mid B) = \frac{\Pr(A \cap B)}{\Pr(B)} = \frac{1/4}{1/2} = \frac{1}{2},
$$

because $A \cap B = \{TH\}$ has probability $1/4$. We see that $\Pr(A \mid B) = \Pr(A)$; hence, we don't change the probability of $A$ even after we learn that $B$ has occurred.

::::

(sec-2-2-1)=
# 2.2.1 Definition of Independence

The conditional probability of the event $A$ given that the event $B$ has occurred is the revised probability of $A$ after we learn that $B$ has occurred. It might be the case, however, that no revision is necessary to the probability of $A$ even after we learn that $B$ occurs. This is precisely what happened in @exm-2-2-1. In this case, we say that $A$ and $B$ are **independent events**. As another example, if we toss a coin and then roll a die, we could let $A$ be the event that the die shows 3 and let $B$ be the event that the coin lands with heads up. If the tossing of the coin is done in isolation of the rolling of the die, we might be quite comfortable assigning $\Pr(A \mid B) = \Pr(A) = 1/6$. In this case, we say that $A$ and $B$ are independent events.

In general, if $\Pr(B) > 0$, the equation $\Pr(A \mid B) = \Pr(A)$ can be rewritten as $\Pr(A \cap B) / \Pr(B) = \Pr(A)$. If we multiply both sides of this last equation by $\Pr(B)$, we obtain the equation $\Pr(A \cap B) = \Pr(A)\Pr(B)$. In order to avoid the condition $\Pr(B) > 0$, the mathematical definition of the independence of two events is stated as follows:

::: {.callout-note}
::: {#def-2-2-1}

# Definition 2.2.1: Independent Events

Two events $A$ and $B$ are **independent** if

$$
\Pr(A \cap B) = \Pr(A)\Pr(B).
$$

:::
:::

Suppose that $\Pr(A) > 0$ and $\Pr(B) > 0$. Then it follows easily from the definitions of independence and conditional probability that $A$ and $B$ are independent if and only if $\Pr(A \mid B) = \Pr(A)$ and $\Pr(B \mid A) = \Pr(B)$.

### Independence of Two Events

If two events $A$ and $B$ are considered to be independent because the events are physically unrelated, and if the probabilities $\Pr(A)$ and $\Pr(B)$ are known, then the definition can be used to assign a value to $\Pr(A \cap B)$.

::: {.callout-tip}
::: {#exm-2-2-2}

# Example 2.2.2: Machine Operation

Suppose that two machines 1 and 2 in a factory are operated independently of each other. Let $A$ be the event that machine 1 will become inoperative during a given 8-hour period, let $B$ be the event that machine 2 will become inoperative during the same period, and suppose that $\Pr(A) = 1/3$ and $\Pr(B) = 1/4$. We shall determine the probability that at least one of the machines will become inoperative during the given period.

The probability $\Pr(A \cap B)$ that both machines will become inoperative during the period is

$$
\Pr(A \cap B) = \Pr(A)\Pr(B) = \left(\frac{1}{3}\right)\left(\frac{1}{4}\right) = \frac{1}{12}.
$$

Therefore, the probability $\Pr(A \cup B)$ that at least one of the machines will become inoperative during the period is

$$
\begin{align*}
\Pr(A \cup B) &= \Pr(A) + \Pr(B) − \Pr(A \cap B) \\
&= \frac{1}{3} + \frac{1}{4} - \frac{1}{12} = \frac{1}{2}.
\end{align*}
$$

:::
:::

The next example shows that two events $A$ and $B$, which are physically related, can, nevertheless, satisfy the definition of independence.

::: {.callout-tip}
::: {#exm-2-2-3}

# Example 2.2.3: Rolling a Die

Suppose that a balanced die is rolled. Let $A$ be the event that an even number is obtained, and let $B$ be the event that one of the numbers 1, 2, 3, or 4 is obtained. We shall show that the events $A$ and $B$ are independent.

In this example, $\Pr(A) = 1/2$ and $\Pr(B) = 2/3$. Furthermore, since $A \cap B$ is the event that either the number 2 or the number 4 is obtained, $\Pr(A \cap B) = 1/3$. Hence, $\Pr(A \cap B) = \Pr(A)\Pr(B)$. It follows that the events $A$ and $B$ are independent events, even though the occurrence of each event depends on the same roll of a die.  

:::
:::

The independence of the events $A$ and $B$ in @exm-2-2-3 can also be interpreted as follows: Suppose that a person must bet on whether the number obtained on the die will be even or odd, that is, on whether or not the event $A$ will occur. Since three of the possible outcomes of the roll are even and the other three are odd, the person will typically have no preference between betting on an even number and betting on an odd number.

Suppose also that after the die has been rolled, but before the person has learned the outcome and before she has decided whether to bet on an even outcome or on an odd outcome, she is informed that the actual outcome was one of the numbers 1, 2, 3, or 4, i.e., that the event $B$ has occurred. The person now knows that the outcome was 1, 2, 3, or 4. However, since two of these numbers are even and two are odd, the person will typically still have no preference between betting on an even number and betting on an odd number. In other words, the information that the event $B$ has occurred is of no help to the person who is trying to decide whether or not the event $A$ has occurred.

**Independence of Complements**: In the foregoing discussion of independent events, we stated that if $A$ and $B$ are independent, then the occurrence or nonoccurrence of $A$ should not be related to the occurrence or nonoccurrence of $B$. Hence, if $A$ and $B$ satisfy the mathematical definition of independent events, then it should also be true that $A$ and $B^c$ are independent events, that $A^c$ and $B$ are independent events, and that $A^c$ and $B^c$ are independent events. One of these results is established in the next theorem.

::: {#thm-2-2-1 .thm}

# Theorem 2.2.1

If two events $A$ and $B$ are independent, then the events $A$ and $B^c$ are also independent.

::: {.proof}
@thm-1-5-6 says that

$$
\Pr(A \cap B^c) = \Pr(A) − \Pr(A \cap B).
$$

Furthermore, since $A$ and $B$ are independent events, $\Pr(A \cap B) = \Pr(A)\Pr(B)$. It now follows that

$$
\begin{align*}
\Pr(A \cap B^c) &= \Pr(A) − \Pr(A)\Pr(B) = \Pr(A)[1 − \Pr(B)] \\
&= \Pr(A)\Pr(B^c).
\end{align*}
$$

Therefore, the events $A$ and $B^c$ are independent.
:::

:::

The proof of the analogous result for the events $A^c$ and $B$ is similar, and the proof for the events $A^c$ and $B^c$ is required in @exr-2-2-2 at the end of this section.

### Independence of Several Events

The definition of independent events can be extended to any number of events, $A_1, \ldots, A_k$. Intuitively, if learning that some of these events do or do not occur does not change our probabilities for any events that depend only on the remaining events, we would say that all $k$ events are independent. The mathematical definition is the following analog to @def-2-2-1.

::: {.callout-tip}
::: {#def-2-2-2}

# Definition 2.2.2: (Mutually) Independent Events

The $k$ events $A_1, \ldots, A_k$ are **independent** (or **mutually independent**) if, for every subset $A_{i_1}, \ldots, A_{i_j}$ of $j$ of these events ($j = 2, 3, \ldots, k$),

$$
\Pr(A_{i_1} \cap \cdots \cap A_{i_j}) = \Pr(A_{i_1}) \cdots \Pr(A_{i_j}).
$$

:::
:::

As an example, in order for three events $A$, $B$, and $C$ to be independent, the following four relations must be satisfied:

$$
\begin{align*}
\Pr(A \cap B) = \Pr(A)\Pr(B), \\
\Pr(A \cap C) = \Pr(A)\Pr(C), \\
\Pr(B \cap C) = \Pr(B)\Pr(C),
\end{align*}
$$ {#eq-2-2-1}

and

$$
\Pr(A \cap B \cap C) = \Pr(A)\Pr(B)\Pr(C).
$$ {#eq-2-2-2}

It is possible that @eq-2-2-2 will be satisfied, but one or more of the three relations @eq-2-2-1 will not be satisfied. On the other hand, as is shown in the next example, it is also possible that each of the three relations @eq-2-2-1 will be satisfied but @eq-2-2-2 will not be satisfied.

::: {.callout-tip}
::: {#exm-2-2-4}

# Example 2.2.4: Pairwise Independence

Suppose that a fair coin is tossed twice so that the sample space $S = \{HH, HT, TH, TT\}$ is simple. Define the following three events:

$$
\begin{align*}
A &= \{H\text{ on first toss}\} = \{HH, HT\}, \\
B &= \{H\text{ on second toss}\} = \{HH, TH\},\text{ and} \\
C &= \{\text{Both tosses the same}\} = \{HH, TT\}.
\end{align*}
$$

Then $A \cap B = A \cap C = B \cap C = A \cap B \cap C = \{HH\}$. Hence,

$$
\Pr(A) = \Pr(B) = \Pr(C) = 1/2
$$

and

$$
\Pr(A \cap B) = \Pr(A \cap C) = \Pr(B \cap C) = \Pr(A \cap B \cap C) = 1/4.
$$

It follows that each of the three relations of @eq-2-2-1 is satisfied but @eq-2-2-2 is not satisfied. These results can be summarized by saying that the events $A$, $B$, and $C$ are **pairwise independent**, but all three events are not independent.

:::
:::

We shall now present some examples that will illustrate the power and scope of the concept of independence in the solution of probability problems.

::: {.callout-tip}
::: {#exm-2-2-5}

# Example 2.2.5: Inspecting Items

Suppose that a machine produces a defective item with probability $p$ ($0 < p < 1$) and produces a nondefective item with probability $1 − p$. Suppose further that six items produced by the machine are selected at random and inspected, and that the results (defective or nondefective) for these six items are independent. We shall determine the probability that exactly two of the six items are defective.

It can be assumed that the sample space $S$ contains all possible arrangements of six items, each one of which might be either defective or nondefective. For $j = 1, \ldots, 6$, we shall let $D_j$ denote the event that the $j$th item in the sample is defective so that $D_j^c$ is the event that this item is nondefective. Since the outcomes for the six different items are independent, the probability of obtaining any particular sequence of defective and nondefective items will simply be the product of the individual probabilities for the items. For example,

$$
\begin{align*}
\Pr(D_1^c \cap D_2 \cap D_3^c \cap D_4^c \cap D_5 \cap D_6^c) &= \Pr(D_1^c)\Pr(D_2)\Pr(D_3^c)\Pr(D_4^c)\Pr(D_5)\Pr(D_6^c) \\
&= (1-p)p(1-p)(1-p)p(1-p) = p^2(1-p)^4.
\end{align*}
$$

It can be seen that the probability of any other particular sequence in $S$ containing two defective items and four nondefective items will also be $p^2(1− p)^4$. Hence, the probability that there will be exactly two defectives in the sample of six items can be found by multiplying the probability $p^2(1− p)^4$ of any particular sequence containing two defectives by the possible number of such sequences. Since there are $\binom{6}{2}$ distinct arrangements of two defective items and four nondefective items, the probability of obtaining exactly two defectives is $\binom{6}{2}p^2(1-p)^4$.

:::
:::

::: {.callout-tip}
::: {#exm-2-2-6}

# Example 2.2.6: Obtaining a Defective Item

For the conditions of @exm-2-2-5, we shall now determine the probability that at least one of the six items in the sample will be defective.

Since the outcomes for the different items are independent, the probability that all six items will be nondefective is $(1−p)^6$. Therefore, the probability that at least one item will be defective is $1 − (1 − p)^6$.

:::
:::

::: {.callout-tip}
::: {#exm-2-2-7}

# Example 2.2.7: Tossing a Coin Until a Head Appears

Suppose that a fair coin is tossed until a head appears for the first time, and assume that the outcomes of the tosses are independent. We shall determine the probability $p_n$ that exactly $n$ tosses will be required.

The desired probability is equal to the probability of obtaining $n − 1$ tails in succession and then obtaining a head on the next toss. Since the outcomes of the tosses are independent, the probability of this particular sequence of $n$ outcomes is $p_n = (1/2)^n$.

The probability that a head will be obtained sooner or later (or, equivalently, that tails will not be obtained forever) is

$$
\sum_{n=1}^{\infty}p_n = \frac{1}{2} + \frac{1}{4} + \frac{1}{8} + \cdots = 1.
$$

Since the sum of the probabilities $p_n$ is 1, it follows that the probability of obtaining an infinite sequence of tails without ever obtaining a head must be 0.

:::
:::

::: {.callout-tip}
::: {#exm-2-2-8}

# Example 2.2.8: Inspecting Items One at a Time

Consider again a machine that produces a defective item with probability $p$ and produces a nondefective item with probability $1 − p$. Suppose that items produced by the machine are selected at random and inspected one at a time until exactly five defective items have been obtained. We shall determine the probability $p_n$ that exactly $n$ items ($n \geq 5$) must be selected to obtain the five defectives.

The fifth defective item will be the $n$th item that is inspected if and only if there are exactly four defectives among the first $n − 1$ items and then the $n$th item is defective. By reasoning similar to that given in @exm-2-2-5, it can be shown that the probability of obtaining exactly four defectives and $n − 5$ nondefectives among the first $n − 1$ items is $\binom{n-1}{4}p^4(1-p)^{n-5}$. The probability that the $n$th item will be defective is $p$. Since the first event refers to outcomes for only the first $n − 1$ items and the second event refers to the outcome for only the $n$th item, these two events are independent. Therefore, the probability that both events will occur is equal to the product of their probabilities. It follows that

$$
p_n = \binom{n-1}{4}p^5(1-p)^{n-5}
$$

:::
:::

::: {.callout-tip}
::: {#exm-2-2-9}

# Example 2.2.9: People v. Collins.

@finkelstein_statistics_1990 describe a criminal case whose verdict was overturned by the Supreme Court of California in part due to a probability calculation involving both conditional probability and independence. The case, *People v. Collins*, 68 Cal. 2d 319, 438 P.2d 33 (1968), involved a purse snatching in which witnesses claimed to see a young woman with blond hair in a ponytail fleeing from the scene in a yellow car driven by a black man with a beard. A couple meeting the description was arrested a few days after the crime, but no physical evidence was found. A mathematician calculated the probability that a randomly selected couple would possess the described characteristics as about $8.3 \times 10^{−8}$, or 1 in 12 million. Faced with such overwhelming odds and no physical evidence, the jury decided that the defendants must have been the only such couple and convicted them. The Supreme Court thought that a more useful probability should have been calculated. Based on the testimony of the witnesses, there was a couple that met the above description. Given that there was already one couple who met the description, what is the conditional probability that there was also a second couple such as the defendants?

Let $p$ be the probability that a randomly selected couple from a population of $n$ couples has certain characteristics. Let $A$ be the event that at least one couple in the population has the characteristics, and let $B$ be the event that at least two couples have the characteristics. What we seek is $\Pr(B \mid A)$. Since $B \subset A$, it follows that

$$
\Pr(B \mid A) = \frac{B \cap A}{\Pr(A)} = \frac{\Pr(B)}{\Pr(A)}.
$$

We shall calculate $\Pr(B)$ and $\Pr(A)$ by breaking each event into more manageable pieces. Suppose that we number the $n$ couples in the population from 1 to $n$. Let $A_i$ be the event that couple number $i$ has the characteristics in question for $i = 1, \ldots, n$, and let $C$ be the event that exactly one couple has the characteristics. Then

$$
\begin{align*}
A &= (A_1^c \cap A_2^c \cap \cdots \cap A_n^c)^c, \\
C &= (A_1 \cap A_2^c \cap \cdots \cap A_n^c) \cup (A_1^c \cap A_2 \cap A_3^c \cap \cdots \cap A_n^c) \cup \cdots \cup (A_1^c \cap \cdots \cap A_{n-1}^c \cap A_n), \\
B &= A \cap C^c.
\end{align*}
$$

Assuming that the $n$ couples are mutually independent, $\Pr(A^c) = (1 − p)^n$, and $\Pr(A) = 1− (1 − p)^n$. The $n$ events whose union is $C$ are disjoint and each one has probability $p(1− p)^{n−1}$, so $\Pr(C) = np(1 − p)^{n−1}$. Since $A = B \cup C$ with $B$ and $C$ disjoint, we have

$$
\Pr(B) = \Pr(A) − \Pr(C) = 1− (1 − p)^n − np(1− p)^{n−1}.
$$

So,

$$
\Pr(B \mid A) = \frac{1 - (1-p)^n - np(1-p)^{n-1}}{1 - (1-p)^n}.
$$ {#eq-2-2-3}

The Supreme Court of California reasoned that, since the crime occurred in a heavily populated area, $n$ would be in the millions. For example, with $p = 8.3 \times 10^{−8}$ and $n = 8,000,000$, the value of @eq-2-2-3 is 0.2966. Such a probability suggests that there is a reasonable chance that there was another couple meeting the same description as the witnesses provided. Of course, the court did not know how large $n$ was, but the fact that @eq-2-2-3 could easily be so large was grounds enough to rule that reasonable doubt remained as to the guilt of the defendants.

:::
:::

**Independence and Conditional Probability**: Two events $A$ and $B$ with positive probability are independent if and only if $\Pr(A \mid B) = \Pr(A)$. Similar results hold for larger collections of independent events. The following theorem, for example, is straightforward to prove based on the definition of independence.

::: {.callout-caution}
::: {#thm-2-2-2}

# Theorem 2.2.2

Let $A_1, \ldots, A_k$ be events such that $\Pr(A_1 \cap \cdots \cap A_k) > 0$. Then $A_1, \ldots, A_k$ are independent if and only if, for every two disjoint subsets $\{i_1, \ldots, i_m\}$ and $\{j_1, \ldots, j_\ell\}$ of $\{1, \ldots, k\}$, we have

$$
\Pr(A_{i_1} \cap \cdots \cap A_{i_m} \mid A_{j_1} \cap \cdots \cap A_{j_\ell}) = \Pr(A_{i_1} \cap \cdots \cap A_{i_m}).
$$

:::
:::

@thm-2-2-2 says that $k$ events are independent if and only if learning that some of the events occur does not change the probability that any combination of the other events occurs.

**The Meaning of Independence**: We have given a mathematical definition of independent events in @def-2-2-1. We have also given some interpretations for what it means for events to be independent. The most instructive interpretation is the one based on conditional probability. If learning that $B$ occurs does not change the probability of $A$, then $A$ and $B$ are independent. In simple examples such as tossing what we believe to be a fair coin, we would generally not expect to change our minds about what is likely to happen on later flips after we observe earlier flips; hence, we declare the events that concern different flips to be independent. However, consider a situation similar to @exm-2-2-5 in which items produced by a machine are inspected to see whether or not they are defective. In @exm-2-2-5, we declared that the different items were independent and that each item had probability $p$ of being defective. This might make sense if we were confident that we knew how well the machine was performing. But if we were unsure of how the machine were performing, we could easily imagine changing our mind about the probability that the 10th item is defective depending on how many of the first nine items are defective. To be specific, suppose that we begin by thinking that the probability is 0.08 that an item will be defective. If we observe one or zero defective items in the first nine, we might not make much revision to the probability that the 10th item is defective. On the other hand, if we observe eight or nine defectives in the first nine items, we might be uncomfortable keeping the probability at 0.08 that the 10th item will be defective. In summary, when deciding whether to model events as independent, try to answer the following question: **"If I were to learn that some of these events occurred, would I change the probabilities of any of the others?"** If we feel that we already know everything that we could learn from these events about how likely the others should be, we can safely model them as independent. If, on the other hand, we feel that learning some of these events could change our minds about how likely some of the others are, then we should be more careful about determining the conditional probabilities and not model the events as independent.

**Mutually Exclusive Events and Mutually Independent Events**: Two similar-sounding definitions have appeared earlier in this text. @def-1-4-10 defines mutually exclusive events, and @def-2-2-2 defines mutually independent events. It is almost never the case that the same set of events satisfies both definitions. The reason is that if events are disjoint (mutually exclusive), then learning that one occurs means that the others definitely did not occur. Hence, learning that one occurs would change the probabilities for all the others to 0, unless the others already had probability 0. Indeed, this suggests the only condition in which the two definitions would both apply to the same collection of events. The proof of the following result is left to @exr-2-2-24 in this section.

::: {.callout-caution}
::: {#thm-2-2-3}

# Theorem 2.2.3

Let $n > 1$ and let $A_1, \ldots, A_n$ be events that are mutually exclusive. The events are also mutually independent if and only if all the events except possibly one of them has probability 0.

:::
:::

### Conditionally Independent Events

Conditional probability and independence combine into one of the most versatile models of data collection. The idea is that, in many circumstances, we are unwilling to say that certain events are independent because we believe that learning some of them will provide information about how likely the others are to occur. But if we knew the frequency with which such events would occur, we might then be willing to assume that they are independent. This model can be illustrated using one of the examples from earlier in this section.

::: {#exm-2-2-10}

# Example 2.2.10: Inspecting Items

Consider again the situation in @exm-2-2-5. This time, however, suppose that we believe that we would change our minds about the probabilities of later items being defective were we to learn that certain numbers of early items were defective. Suppose that we think of the number $p$ from @exm-2-2-5 as the proportion of defective items that we would expect to see if we were to inspect a very large sample of items. If we knew this proportion $p$, and if we were to sample only a few, say, six or 10 items now, we might feel confident maintaining that the probability of a later item being defective remains $p$ even after we inspect some of the earlier items. On the other hand, if we are not sure what would be the proportion of defective items in a large sample, we might not feel confident keeping the probability the same as we continue to inspect.

To be precise, suppose that we treat the proportion $p$ of defective items as unknown and that we are dealing with an augmented experiment as described in @def-2-1-3. For simplicity, suppose that $p$ can take one of two values, either 0.01 or 0.4, the first corresponding to normal operation and the second corresponding to a need for maintenance. Let $B_1$ be the event that $p = 0.01$, and let $B_2$ be the event that $p = 0.4$. If we knew that $B_1$ had occurred, then we would proceed under the assumption that the events $D_1, D_2, \ldots$ were independent with $\Pr(D_i \mid B_1) = 0.01$ for all $i$. For example, we could do the same calculations as in Examples [-@exm-2-2-5] and [-@exm-2-2-8] with $p = 0.01$. Let $A$ be the event that we observe exactly two defectives in a random sample of six items. Then $\Pr(A \mid B_1) = \binom{6}{2}(0.01)^2(0.99)^4 = 1.44 \times 10^{-3}$. Similarly, if we knew that $B_2$ had occurred, then we would assume that $D_1, D_2, \ldots$ were independent with $\Pr(D_i \mid B_2) = 0.4$. In this case, $\Pr(A \mid B_2) = \binom{6}{2}(0.4)^2(0.6)^4 = 0.311$. 

:::

In @exm-2-2-10, there is no reason that $p$ must be required to assume at most two different values. We could easily allow $p$ to take a third value or a fourth value, etc. Indeed, in @sec-3 we shall learn how to handle the case in which every number between 0 and 1 is a possible value of $p$. The point of the simple example is to illustrate the concept of assuming that events are independent conditional on another event, such as $B_1$ or $B_2$ in the example.

The formal concept illustrated in @exm-2-2-10 is the following:

::: {.callout-note}
::: {#def-2-2-3}

# Definition 2.2.3: Conditional Independence

We say that events $A_1, \ldots, A_k$ are **conditionally independent** given $B$ if, for every subcollection $A_{i_1}, \ldots, A_{i_j}$ of $j$ of these events ($j = 2, 3, \ldots, k$),

$$
\Pr\left( A_{i_1} \cap \cdots \cap A_{i_j} \mid B \right) = \Pr(A_{i_1} \mid B)\cdots \Pr(A_{i_j} \mid B).
$$


:::
:::

@def-2-2-3 is identical to @def-2-2-2 for independent events with the modification that **all** probabilities in the definition are now conditional on $B$. As a note, even if we assume that events $A_1, \ldots, A_k$ are conditionally independent given $B$, it is not necessary that they be conditionally independent given $B^c$. In @exm-2-2-10, the events $D_1, D_2, \ldots$ were conditionally independent given both $B_1$ and $B_2 = B_1^c$, which is the typical situation. @exr-2-3-16 in @sec-2-3 is an example in which events are conditionally independent given one event $B$ but are not conditionally independent given the complement $B^c$.

Recall that two events $A_1$ and $A_2$ (with $\Pr(A_1) > 0$) are independent if and only if $\Pr(A_2 \mid A_1) = \Pr(A_2)$. A similar result holds for conditionally independent events.

::: {.callout-caution}
::: {#thm-2-2-4}

# Theorem 2.2.4

Suppose that $A_1$, $A_2$, and $B$ are events such that $\Pr(A_1 \cap B) > 0$. Then $A_1$ and $A_2$ are conditionally independent given $B$ if and only if $\Pr(A_2 \mid A_1 \cap B) = \Pr(A_2 \mid B)$.

:::
:::

This is another example of the claim we made earlier that every result we can prove has an analog conditional on an event $B$. The reader can prove this theorem in @exr-2-2-22.

### The Collector's Problem

Suppose that $n$ balls are thrown in a random manner into $r$ boxes ($r \leq n$). We shall assume that the $n$ throws are independent and that each of the $r$ boxes is equally likely to receive any given ball. The problem is to determine the probability $p$ that every box will receive at least one ball. This problem can be reformulated in terms of a collector's problem as follows: Suppose that each package of bubble gum contains the picture of a baseball player, that the pictures of $r$ different players are used, that the picture of each player is equally likely to be placed in any given package of gum, and that pictures are placed in different packages independently of each other. The problem now is to determine the probability $p$ that a person who buys $n$ packages of gum ($n \geq r$) will obtain a complete set of $r$ different pictures.

For $i = 1, \ldots, r$, let $A_i$ denote the event that the picture of player $i$ is missing from all $n$ packages. Then $\bigcup_{i=1}^r A_i$ is the event that the picture of at least one player is missing. We shall find $\Pr(\bigcup_{i=1}^r A_i) by applying @eq-1-10-6.

Since the picture of each of the $r$ players is equally likely to be placed in any particular package, the probability that the picture of player $i$ will not be obtained in any particular package is $(r − 1)/r$. Since the packages are filled independently, the probability that the picture of player $i$ will not be obtained in any of the $n$ packages is $[(r − 1)/r]n$. Hence,

$$
\Pr(A_i) = \left(\frac{r-1}{r}\right)^n \; \text{ for }i = 1, \ldots, r.
$$

Now consider any two players $i$ and $j$. The probability that neither the picture of player $i$ nor the picture of player $j$ will be obtained in any particular package is $(r − 2)/r$. Therefore, the probability that neither picture will be obtained in any of the $n$ packages is $[(r − 2)/r]n$. Thus,

$$
\Pr(A_i \cap A_j) = \left(\frac{r-2}{r}\right)^n.
$$

If we next consider any three players $i$, $j$, and $k$, we find that

$$
\Pr(A_i \cap A_j \cap A_k) = \left(\frac{r - 3}{r}\right)^3.
$$

By continuing in this way, we finally arrive at the probability $\Pr(A_1 \cap A_2 \cap \cdots \cap A_r)$ that the pictures of all $r$ players are missing from the $n$ packages. Of course, this probability is 0. Therefore, by @eq-1-10-6 of @sec-1-10, 

$$
\begin{align*}
\Pr\left( \bigcup_{i=1}^r A_i \right) &= r \left(\frac{r-1}{r}\right)^n - \binom{r}{2}\left(\frac{r-2}{r}\right)^n + \cdots + (-1)^r\binom{r}{r-1}\left(\frac{1}{r}\right)^n \\
&= \sum_{j=1}^{r-1}(-1)^{j+1}\binom{r}{j}\left(1 - \frac{j}{r}\right)^n.
\end{align*}
$$

Since the probability $p$ of obtaining a complete set of $r$ different pictures is equal to $1 - \Pr(\bigcup_{i=1}^r A_i)$, it follows from the foregoing derivation that $p$ can be written in the form

$$
p = \sum_{j=0}^{r-1}(-1)^j \binom{r}{j}\left(1 - \frac{j}{r}\right)^n.
$$

:::
:::

### Summary

A collection of events is independent if and only if learning that some of them occur does not change the probabilities that any combination of the rest of them occurs. Equivalently, a collection of events is independent if and only if the probability of the intersection of every subcollection is the product of the individual probabilities. The concept of independence has a version conditional on another event. A collection of events is independent conditional on $B$ if and only if the conditional probability of the intersection of every subcollection given $B$ is the product of the individual conditional probabilities given $B$. Equivalently, a collection of events is conditionally independent given $B$ if and only if learning that some of them (and $B$) occur does not change the conditional probabilities given $B$ that any combination of the rest of them occur. The full power of conditional independence will become more apparent after we introduce Bayes' theorem in the next section.

### Exercises

::: {#exr-2-2-1}

# Exercise 2.2.1

If $A$ and $B$ are independent events and $\Pr(B) < 1$, what is the value of $\Pr(A^c \mid B^c)$?

:::

::: {#exr-2-2-2}

# Exercise 2.2.2

Assuming that $A$ and $B$ are independent events, prove that the events $A^c$ and $B^c$ are also independent.

:::

::: {#exr-2-2-3}

# Exercise 2.2.3

Suppose that $A$ is an event such that $\Pr(A) = 0$ and that $B$ is any other event. Prove that $A$ and $B$ are independent events.

:::

::: {#exr-2-2-4}

# Exercise 2.2.4

Suppose that a person rolls two balanced dice three times in succession. Determine the probability that on each of the three rolls, the sum of the two numbers that appear will be 7.

:::

::: {#exr-2-2-5}

# Exercise 2.2.5

Suppose that the probability that the control system
used in a spaceship will malfunction on a given flight is 0.001. Suppose further that a duplicate, but completely independent, control system is also installed in the spaceship to take control in case the first system malfunctions. Determine the probability that the spaceship will be under the control of either the original system or the duplicate system on a given flight.

:::

::: {#exr-2-2-6}

# Exercise 2.2.6

Suppose that 10,000 tickets are sold in one lottery and 5000 tickets are sold in another lottery. If a person owns 100 tickets in each lottery, what is the probability that she will win at least one first prize?

:::

::: {#exr-2-2-7}

# Exercise 2.2.7

Two students $A$ and $B$ are both registered for a certain course. Assume that student $A$ attends class 80 percent of the time, student $B$ attends class 60 percent of the time, and the absences of the two students are independent.

(a) What is the probability that at least one of the two students will be in class on a given day?
(b) If at least one of the two students is in class on a given day, what is the probability that $A$ is in class that day?

:::

::: {#exr-2-2-8}

# Exercise 2.2.8

If three balanced dice are rolled, what is the probability that all three numbers will be the same?

:::

::: {#exr-2-2-9}

# Exercise 2.2.9

Consider an experiment in which a fair coin is tossed until a head is obtained for the first time. If this experiment is performed three times, what is the probability that exactly the same number of tosses will be required for each of the three performances?

:::

::: {#exr-2-2-10}

# Exercise 2.2.10

The probability that any child in a certain family will have blue eyes is $1/4$, and this feature is inherited independently by different children in the family. If there are five children in the family and it is known that at least one of these children has blue eyes, what is the probability that at least three of the children have blue eyes?

:::

::: {#exr-2-2-11}

# Exercise 2.2.11

Consider the family with five children described in @exr-2-2-10.

(a) If it is known that the youngest child in the family has blue eyes, what is the probability that at least three of the children have blue eyes?
(b) Explain why the answer in part (a) is different from the answer in @exr-2-2-10.

:::

::: {#exr-2-2-12}

# Exercise 2.2.12

Suppose that $A$, $B$, and $C$ are three independent events such that $\Pr(A) = 1/4$, $\Pr(B) = 1/3$, and $\Pr(C) = 1/2$.

(a) Determine the probability that none of these three events will occur.
(b) Determine the probability that exactly one of these three events will occur.

:::

::: {#exr-2-2-13}

# Exercise 2.2.13

Suppose that the probability that any particle emitted by a radioactive material will penetrate a certain shield is 0.01. If 10 particles are emitted, what is the probability that exactly one of the particles will penetrate the shield?

:::

::: {#exr-2-2-14}

# Exercise 2.2.14

Consider again the conditions of @exr-2-2-13. If 10
particles are emitted, what is the probability that at least one of the particles will penetrate the shield?

:::

::: {#exr-2-2-15}

# Exercise 2.2.15

Consider again the conditions of @exr-2-2-13. How
many particles must be emitted in order for the probability to be at least 0.8 that at least one particle will penetrate the shield?

:::

::: {#exr-2-2-16}

# Exercise 2.2.16

In the World Series of baseball, two teams $A$ and $B$ play a sequence of games against each other, and the first team that wins a total of four games becomes the winner of the World Series. If the probability that team $A$ will win any particular game against team $B$ is $1/3$, what is the probability that team $A$ will win the World Series?

:::

::: {#exr-2-2-17}

# Exercise 2.2.17

Two boys $A$ and $B$ throw a ball at a target. Suppose that the probability that boy $A$ will hit the target on any throw is $1/3$ and the probability that boy $B$ will hit the target on any throw is $1/4$. Suppose also that boy $A$ throws first and the two boys take turns throwing. Determine the probability that the target will be hit for the first time on the third throw of boy $A$.

:::

::: {#exr-2-2-18}

# Exercise 2.2.18

For the conditions of @exr-2-2-17, determine the probability that boy $A$ will hit the target before boy $B$ does.

:::

::: {#exr-2-2-19}

# Exercise 2.2.19

A box contains 20 red balls, 30 white balls, and 50 blue balls. Suppose that 10 balls are selected at random one at a time, with replacement; that is, each selected ball is replaced in the box before the next selection is made. Determine the probability that at least one color will be missing from the 10 selected balls.

:::

::: {#exr-2-2-20}

# Exercise 2.2.20

Suppose that $A_1, \ldots, A_k$ form a sequence of $k$ independent events. Let $B_1, \ldots, B_k$ be another sequence of $k$ events such that for each value of $j$ ($j = 1, \ldots, k$), either $B_j = A_j$ or $B_j = A_j^c$. Prove that $B_1, \ldots, B_k$ are also independent events. *Hint*: Use an induction argument based on the number of events $B_j$ for which $B_j = A_j^c$.

:::

::: {#exr-2-2-21}

# Exercise 2.2.21

Prove @thm-2-2-2. *Hint*: The "only if" direction is direct from @def-2-2-2. For the "if" direction, use induction on the value of $j$ in the definition of independence. Let $m = j − 1$ and let $\ell = 1$ with $j_1 = i_j$.

:::

::: {#exr-2-2-22}

# Exercise 2.2.22

Prove @thm-2-2-4.

:::

::: {#exr-2-2-23}

# Exercise 2.2.23

A programmer is about to attempt to compile a series of 11 similar programs. Let $A_i$ be the event that the $i$th program compiles successfully for $i = 1, \ldots, 11$. When the programming task is easy, the programmer expects that 80 percent of programs should compile. When the programming task is difficult, she expects that only 40 percent of the programs will compile. Let $B$ be the event that the programming task was easy. The programmer believes that the events $A_1, \ldots, A_{11}$ are conditionally independent given $B$ and given $B^c$.

(a) Compute the probability that exactly 8 out of 11
programs will compile given $B$.
(b) Compute the probability that exactly 8 out of 11
programs will compile given $B^c$.

:::

::: {#exr-2-2-24}

# Exercise 2.2.24

Prove @thm-2-2-3.

:::
