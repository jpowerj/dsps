(sec-1-8)=
# 1.8 Combinatorial Methods

(sec-1-8-0)=
# Overview

*Many problems of counting the number of outcomes in an event amount to counting how many subsets of a certain size are contained in a fixed set. This section gives examples of how to do such counting and where it can arise.*

(sec-1-8-1)=
# 1.8.1 Combinations

::: {.callout-tip}
::: {#exm-1-8-1}

# Example 1.8.1: Choosing Subsets

Consider the set $\{a, b, c, d\}$ containing the four different letters. We want to count the number of distinct subsets of size two. In this case, we can list all of the subsets of size two:

$$
\{a, b\}, \; \{a, c\}, \; \{a, d\}, \; \{b, c\}, \; \{b, d\}, \text{ and } \{c, d\}.
$$

We see that there are six distinct subsets of size two. This is different from counting permutaions because $\{a, b\}$ and $\{b, a\}$ are the same subset.

:::
:::

For large sets, it would be tedious, if not impossible, to enumerate all of the subsets of a given size and count them as we did in @exm-1-8-1. However, there is a connection between counting subsets and counting permutations that will allow us to derive the general formula for the number of subsets.

Suppose that there is a set of n distinct elements from which it is desired to choose a subset containing $k$ elements ($1 \leq k \leq n$).We shall determine the number of different subsets that can be chosen. In this problem, the arrangement of the elements in a subset is irrelevant and each subset is treated as a unit.

::: {.callout-tip}
::: {#def-1-8-1}

# Definition 1.8.1: Combinations

Consider a set with $n$ elements. Each subset of size $k$ chosen from this set is called a combination of $n$ elements taken $k$ at a time. We denote the number of distinct such combinations by the symbol $C_{n, k}$.

:::
:::

No two combinations will consist of exactly the same elements because two subsets with the same elements are the same subset.

At the end of @exm-1-8-1, we noted that two different permutations $(a, b)$ and $(b, a)$ both correspond to the same combination or subset $\{a, b\}$. We can think of permutations as being constructed in two steps. First, a combination of $k$ elements is chosen out of $n$, and second, those $k$ elements are arranged in a specific order. There are $C_{n, k}$ ways to choose the $k$ elements out of $n$, and for each such choice there are $k!$ ways to arrange those $k$ elements in different orders. Using the multiplication rule from @sec-1-7, we see that the number of permutations of $n$ elements taken $k$ at a time is $P_{n, k} = C_{n, k}k!$; hence, we have the following.

::: {.callout-tip}
::: {#thm-1-8-1}

# Theorem 1.8.1: Combinations

The number of distinct subsets of size $k$ that can be chosen from a set of size $n$ is

$$
C_{n,k} = \frac{P_{n,k}}{k!} = \frac{n!}{k!(n-k)!}.
$$

:::
:::

In @exm-1-8-1, we see that $C_{4,2} = 4!/[2!2!] = 6$.

::: {.callout-tip}
::: {#exm-1-8-2}

# Example 1.8.2: Selecting a Committee

Suppose that a committee composed of eight people is to be selected from a group of 20 people. The number of different groups of people that might be on the committee is

$$
C_{20,8} = \frac{20!}{8!12!} = 125,970.
$$

:::
:::

::: {.callout-tip}
::: {#exm-1-8-3}

# Example 1.8.3: Choosing Jobs

Suppose that, in @exm-1-8-2, the eight people in the committee each get a different job to perform on the committee. The number of ways to choose eight people out of 20 and assign them to the eight different jobs is the number of permutations of 20 elements taken eight at a time, or

$$
P_{20,8} = C_{20,8} \cdot 8! = 125,970 \cdot 8!= 5,078,110,400.
$$

:::
:::

Examples [-@exm-1-8-2] and [-@exm-1-8-3] illustrate the difference and relationship between combinations and permutations. In @exm-1-8-3, we count the same group of people in a different order as a different outcome, while in @exm-1-8-2, we count the same group in different orders as the same outcome. The two numerical values differ by a factor of $8!$, the number of ways to reorder each of the combinations in @exm-1-8-2 to get a permutation in @exm-1-8-3.

(sec-1-8-2)=
# 1.8.2 Binomial Coefficients

::: {.callout-tip}
::: {#def-1-8-2}

# Definition 1.8.2: Binomial Coefficients

The number $C_{n, k}$ is also denoted by the symbol $\binom{n}{k}$. That is, for $k = 0, 1, \ldots, n$,

$$
\binom{n}{k} = \frac{n!}{k!(n-k)!}.
$$ {#eq-1-8-1}

When this notation is used, this number is called a **binomial coefficient**.

:::
:::

The name **binomial coefficient** derives from the appearance of the symbol in the binomial theorem, whose proof is left as @exr-1-8-20 in this section.

::: {.callout-tip}
::: {#thm-1-8-2}

# Theorem 1.8.2: Binomial Theorem

For all numbers $x$ and $y$ and each positive integer $n$,

$$
(x + y)^n = \sum_{k=0}^n \binom{n}{k}x^ky^{n-k}.
$$

:::
:::

There are a couple of useful relations between binomial coefficients.

::: {.callout-tip}
::: {#thm-1-8-3}

# Theorem 1.8.3

For all $n$,

$$
\binom{n}{0} = \binom{n}{n} = 1.
$$

For all $n$ and all $k = 0, 1, \ldots, n$,

$$
\binom{n}{k} = \binom{n}{n-k}.
$$
 

::: {.proof}
The first equation follows from the fact that $0! = 1$. The second equation follows from @eq-1-8-1. The second equation can also be derived from the fact that selecting $k$ elements to form a subset is equivalent to selecting the remaining $n − k$ elements to form the complement of the subset.
:::

:::
:::

It is sometimes convenient to use the expression "$n$ choose $k$" for the value of $C_{n, k}$. Thus, the same quantity is represented by the two different notations $C_{n, k}$ and $\binom{n}{k}$, and we may refer to this quantity in three different ways: as the number of combinations of $n$ elements taken $k$ at a time, as the binomial coefficient of $n$ and $k$, or simply as "$n$ choose $k$."

::: {.callout-tip}
::: {#exm-1-8-4}

# Example 1.8.4: Blood Types.

In @exm-1-6-4, we defined genes, alleles, and genotypes. The gene for human blood type consists of a pair of alleles chosen from the three alleles commonly called O, A, and B. For example, two possible combinations of alleles (called genotypes) to form a blood-type gene would be BB and AO. We will not distinguish the same two alleles in different orders, so OA represents the same genotype as AO. How many genotypes are there for blood type?

The answer could easily be found by counting, but it is an example of a more general calculation. Suppose that a gene consists of a pair chosen from a set of $n$ different alleles. Assuming that we cannot distinguish the same pair in different orders, there are $n$ pairs where both alleles are the same, and there are $\binom{n}{2}$ pairs where the two alleles are different. The total number of genotypes is

$$
n + \binom{n}{2} = n + \frac{n(n-1)}{2} = \frac{n(n+1)}{2} = \binom{n+1}{2}.
$$
 

For the case of blood type, we have $n = 3$, so there are

$$
\binom{4}{2} = \frac{4 \cdot 3}{2} = 6
$$

genotypes, as could easily be verified by counting.

:::
:::

**Note: Sampling with Replacement**. The counting method described in @exm-1-8-4 is a type of sampling with replacement that is different from the type described in @exm-1-7-10. In @exm-1-7-10, we sampled with replacement, but we distinguished between samples having the same balls in different orders. This could be called **ordered sampling with replacement**. In @exm-1-8-4, samples containing the same genes in different orders were considered the same outcome. This could be called unordered sampling with replacement. The general formula for the number of unordered samples of size $k$ with replacement from $n$ elements is $\binom{n+k-1}{k}$, and can be derived in @exr-1-8-19. It is possible to have $k$ larger than $n$ when sampling with replacement.

::: {.callout-tip}
::: {#exm-1-8-5}

# Example 1.8.5: Selecting Baked Goods

You go to a bakery to select some baked goods for a dinner party. You need to choose a total of 12 items. The baker has seven different types of items from which to choose, with lots of each type available. How many different boxfuls of 12 items are possible for you to choose? Here we will not distinguish the same collection of 12 items arranged in different orders in the box. This is an example of unordered sampling with replacement because we can (indeed we must) choose the same type of item more than once, but we are not distinguishing the same items in different orders. There are $\binom{7 + 12 - 1}{12} = 18,564$ different boxfuls.  

:::
:::

@exm-1-8-5 raises an issue that can cause confusion if one does not carefully determine the elements of the sample space and carefully specify which outcomes (if any) are equally likely. The next example illustrates the issue in the context of @exm-1-8-5.

::: {.callout-tip
::: {#exm-1-8-6}

# Example 1.8.6: Selecting Baked Goods

Imagine two different ways of choosing a boxful of 12 baked goods selected from the seven different types available. In the first method, you choose one item at random from the seven available. Then, without regard to what item was chosen first, you choose the second item at random from the seven available. Then you continue in this way choosing the next item at random from the seven available without regard to what has already been chosen until you have chosen 12. For this method of choosing, it is natural to let the outcomes be the possible sequences of the 12 types of items chosen. The sample space would contain $7^{12} = 1.38 \times 10^{10}$ different outcomes that would be equally likely.

In the second method of choosing, the baker tells you that she has available 18,564 different boxfuls freshly packed. You then select one at random. In this case, the sample space would consist of 18,564 different equally likely outcomes.

In spite of the different sample spaces that arise in the two methods of choosing, there are some verbal descriptions that identify an event in both sample spaces. For example, both sample spaces contain an event that could be described as $\{\text{all 12 items are of the same type}\}$ even though the outcomes are different types of mathematical objects in the two sample spaces. The probability that all 12 items are of the same type will actually be different depending on which method you use to choose the boxful.

In the first method, seven of the $7^{12}$ equally likely outcomes contain 12 of the same type of item. Hence, the probability that all 12 items are of the same type is $7/7^{12} = 5.06 \times 10^{−10}$. In the second method, there are seven equally liklely boxes that contain 12 of the same type of item. Hence, the probability that all 12 items are of the same type is $7/18,564 = 3.77 \times 10^{−4}$. Before one can compute the probability for an event such as $\{\text{all 12 items are of the same type}\}$, one must be careful about defining the experiment and its outcomes.  

:::
:::

**Arrangements of Elements of Two Distinct Types**: When a set contains only elements of two distinct types, a binomial coefficient can be used to represent the number of different arrangements of all the elements in the set. Suppose, for example, that $k$ similar red balls and $n − k$ similar green balls are to be arranged in a row. Since the red balls will occupy $k$ positions in the row, each different arrangement of the $n$ balls corresponds to a different choice of the $k$ positions occupied by the red balls. Hence, the number of different arrangements of the $n$ balls will be equal to the number of different ways in which $k$ positions can be selected for the red balls from the $n$ available positions. Since this number of ways is specified by the binomial coefficient $\binom{n}{k}$, the number of different arrangements of the $n$ balls is also $\binom{n}{k}$. In other words, the number of different arrangements of $n$ objects consisting of $k$ similar objects of one type and $n − k$ similar objects of a second type is $\binom{n}{k}$.

::: {.callout-tip}
::: {#exm-1-8-7}

# Example 1.8.7: Tossing a Coin

Suppose that a fair coin is to be tossed 10 times, and it is desired to determine (a) the probability $p$ of obtaining exactly three heads and (b) the
probability $p'$ of obtaining three or fewer heads.

(a) The total possible number of different sequences of 10 heads and tails is $2^{10}$, and it may be assumed that each of these sequences is equally probable. The number of these sequences that contain exactly three heads will be equal to the number of different arrangements that can be formed with three heads and seven tails. Here are some of those arrangements:

    `HHHTTTTTTT`, `HHTHTTTTTT`, `HHTTHTTTTT`, `TTHTHTHTTT`, etc.
    
    Each such arrangement is equivalent to a choice of where to put the 3 heads among the 10 tosses, so there are $\binom{10}{3}$ such arrangements. The probability of obtaining exactly three heads is then

$$
p = \frac{\binom{10}{3}}{2^{10}} = 0.1172.
$$

(b) Using the same reasoning as in part (a), the number of sequences in the sample space that contain exactly $k$ heads ($k = 0, 1, 2, 3$) is

$$
\begin{align*}
p' &= \frac{\binom{10}{0} + \binom{10}{1} + \binom{10}{2} + \binom{10}{3}}{2^{10}} \\
&= \frac{1 + 10 + 45 + 120}{2^{10}} = \frac{176}{2^{10}} = 0.1719.
\end{align*}
$$

:::
:::

## Note: Using Two Different Methods in the Same Problem

Part (a) of @exm-1-8-7 is another example of using two different counting methods in the same problem. Part (b) illustrates another general technique. In this part, we broke the event of interest into several disjoint subsets and counted the numbers of outcomes separately for each subset and then added the counts together to get the total. In many problems, it can require several applications of the same or different counting methods in order to count the number of outcomes in an event. The next example is one in which the elements of an event are formed in two parts (multiplication rule), but we need to perform separate combination calculations to determine the numbers of outcomes for each part.

::: {.callout-tip}
::: {#exm-1-8-8}

# Example 1.8.8: Sampling without Replacement

Suppose that a class contains 15 boys and 30 girls, and that 10 students are to be selected at random for a special assignment. We shall determine the probability $p$ that exactly three boys will be selected.

The number of different combinations of the 45 students that might be obtained in the sample of 10 students is $\binom{45}{10}$, and the statement that the 10 students are selected at random means that each of these $\binom{45}{10}$ possible combinations is equally probable. Therefore, we must find the number of these combinations that contain exactly three boys and seven girls.

When a combination of three boys and seven girls is formed, the number of different combinations in which three boys can be selected from the 15 available boys is $\binom{15}{3}$, and the number of different combinations in which seven girls can be selected from the 30 available girls is $\binom{30}{7}$. Since each of these combinations of three boys can be paired with each of the combinations of seven girls to form a distinct sample, the number of combinations containing exactly three boys is $\binom{15}{3}\binom{30}{7}$. Therefore, the desired probability is

$$
p = \frac{\binom{15}{3}\binom{30}{7}}{\binom{45}{10}} = 0.2904.
$$

:::
:::

::: {.callout-tip}
::: {#exm-1-8-9}

# Example 1.8.9: Playing Cards

Suppose that a deck of 52 cards containing four aces is shuffled thoroughly and the cards are then distributed among four players so that each player receives 13 cards. We shall determine the probability that each player will receive one ace.

The number of possible different combinations of the four positions in the deck occupied by the four aces is $\binom{52}{4}$, and it may be assumed that each of these $\binom{52}{4}$ combinations is equally probable. If each player is to receive one ace, then there must be exactly one ace among the 13 cards that the first player will receive and one ace among each of the remaining three groups of 13 cards that the other three players will receive. In other words, there are 13 possible positions for the ace that the first player is to receive, 13 other possible positions for the ace that the second player is to receive, and so on. Therefore, among the $\binom{52}{4}$ possible combinations of the positions for the four aces, exactly $13^4$ of these combinations will lead to the desired result. Hence, the probability $p$ that each player will receive one ace is

$$
p = \frac{13^4}{\binom{52}{4}} = 0.1055.
$$

:::
:::

**Ordered versus Unordered Samples**: Several of the examples in this section and the previous section involved counting the numbers of possible samples that could arise using various sampling schemes. Sometimes we treated the same collection of elements in different orders as different samples, and sometimes we treated the same elements in different orders as the same sample. In general, how can one tell which is the correct way to count in a given problem? Sometimes, the problem description will make it clear which is needed. For example, if we are asked to find the probability that the items in a sample arrive in a specified order, then we cannot even specify the event of interest unless we treat different arrangements of the same items as different outcomes. Examples [-@exm-1-8-5] and [-@exm-1-8-6] illustrate how different problem descriptions can lead to very different calculations.

However, there are cases in which the problem description does not make it clear whether or not one must count the same elements in different orders as different outcomes. Indeed, there are some problems that can be solved correctly both ways. @exm-1-8-9 is one such problem. In that problem, we needed to decide what we would call an outcome, and then we needed to count how many outcomes were in the whole sample space $S$ and how many were in the event $E$ of interest. In the solution presented in @exm-1-8-9, we chose as our outcomes the positions in the 52-card deck that were occupied by the four aces. We did not count different arrangements of the four aces in those four positions as different outcomes when we counted the number of outcomes in $S$. Hence, when we calculated the number of outcomes in $E$, we also did not count the different arrangements of the four aces in the four possible positions as different outcomes. In general, this is the principle that should guide the choice of counting method. If we have the choice between whether or not to count the same elements in different orders as different outcomes, then we need to make our choice and be consistent throughout the problem. If we count the same elements in different orders as different outcomes when counting the outcomes in $S$, we must do the same when counting the elements of $E$. If we do not count them as different outcomes when counting $S$, we should not count them as different when counting $E$.

::: {.callout-tip}
::: {#exm-1-8-10}

# Example 1.8.10: Playing Cards, Revisited.

We shall solve the problem in @exm-1-8-9 again, but this time, we shall distinguish outcomes with the same cards in different orders. To go to the extreme, let each outcome be a complete ordering of the 52 cards. So, there are $52!$ possible outcomes. How many of these have one ace in each of the four sets of 13 cards received by the four players? As before, there are $13^4$ ways to choose the four positions for the four aces, one among each of the four sets of 13 cards. No matter which of these sets of positions we choose, there are $4!$ ways to arrange the four aces in these four positions. No matter how the aces are arranged, there are $48!$ ways to arrange the remaining 48 cards in the 48 remaining positions. So, there are $13^4 \cdot 4! \cdot 48!$ outcomes in the event of interest. We then calculate

$$
p = \frac{13^4 \cdot 4! \cdot 48!}{52!} = 0.1055.
$$

:::
:::

In the following example, whether one counts the same items in different orders as different outcomes is allowed to depend on which events one wishes to use.

::: {.callout-tip}
::: {#exm-1-8-11}

## Example 1.8.11: Lottery Tickets

In a lottery game, six numbers from 1 to 30 are drawn at random from a bin without replacement, and each player buys a ticket with six different numbers from 1 to 30. If all six numbers drawn match those on the player's ticket, the player wins. We assume that all possible draws are equally likely. One way to construct a sample space for the experiment of drawing the winning combination is to consider the possible sequences of draws. That is, each outcome consists of an ordered subset of six numbers chosen from the 30 available numbers. There are $P_{30,6} = 30!/24!$ such outcomes. With this sample space $S$, we can calculate probabilities for events such as

$$
\begin{align*}
A &= \{\text{the draw contains the numbers 1, 14, 15, 20, 23, and 27}\}, \\
B &= \{\text{one of the numbers drawn is }15\},\text{ and} \\
C &= \{\text{the first number drawn is less than }10\}.
\end{align*}
$$

There is another natural sample space, which we shall denote $S'$, for this experiment. It consists solely of the different combinations of six numbers drawn from the 30 available. There are $\binom{30}{6} = 30!/(6!24!)$ such outcomes. It also seems natural to consider all of these outcomes equally likely. With this sample space, we can calculate the probabilities of the events $A$ and $B$ above, but $C$ is not a subset of the sample space $S'$, so we cannot calculate its probability using this smaller sample space. When the sample space for an experiment could naturally be constructed in more than one way, one needs to choose based on for which events one wants to compute probabilities.

:::
:::

@exm-1-8-11 raises the question of whether one will compute the same probabilities using two different sample spaces when the event, such as $A$ or $B$, exists in both sample spaces. In the example, each outcome in the smaller sample space $S'$ corresponds to an event in the larger sample space $S$. Indeed, each outcome $s'$ in $S'$ corresponds to the event in $S$ containing the $6!$ permutations of the single combination $s'$. For example, the event $A$ in the example has only one outcome $s' = (1, 14, 15, 20, 23, 27)$ in the sample space $S$, while the corresponding event in the sample space $S$ has $6!$ permutations including

$$
(1, 14, 15, 20, 23, 27), \; (14, 20, 27, 15, 23, 1), \; (27, 23, 20, 15, 14, 1), \; \text{etc.}
$$

In the sample space $S$, the probability of the event $A$ is

$$
\Pr(A) = \frac{6!}{P_{30,6}} = \frac{6!24!}{30!} = \frac{1}{\binom{30}{6}}.
$$

In the sample space $S'$, the event $A$ has this same probability because it has only one of the $\binom{30}{6}$ equally likely outcomes. The same reasoning applies to every outcome in $S'$. Hence, if the same event can be expressed in both sample spaces $S$ and $S'$, we will compute the same probability using either sample space. This is a special feature of examples like @exm-1-8-11 in which each outcome in the smaller sample space corresponds to an event in the larger sample space with the same number of elements. There are examples in which this feature is not present, and one cannot treat both sample spaces as simple sample spaces.

::: {.callout-tip}
::: {#exm-1-8-12}

## Example 1.8.12: Tossing Coins

An experiment consists of tossing a coin two times. If we want to distinguish $H$ followed by $T$ from $T$ followed by $H$, we should use the sample space $S = \{HH, HT, TH, TT\}$, which might naturally be assumed a simple sample space. On the other hand, we might be interested solely in the number of $H$'s tossed. In this case, we might consider the smaller sample space $S' = \{0, 1, 2\}$ where each outcome
merely counts the number of $H$'s. The outcomes 0 and 2 in $S'$ each correspond to a single outcome in $S$, but $1 \in S'$ corresponds to the event $\{HT, TH\} \subset S$ with two outcomes. If we think of $S$ as a simple sample space, then $S'$ will not be a simple sample space, because the outcome 1 will have probability $1/2$ while the other two outcomes each have probability $1/4$.

There are situations in which one would be justified in treating $S'$ as a simple sample space and assigning each of its outcomes probability $1/3$. One might do this if one believed that the coin was not fair, but one had no idea how unfair it was or which side were more likely to land up. In this case, $S$ would not be a simple sample space, because two of its outcomes would have probability $1/3$ and the other two would have probabilities that add up to $1/3$.  

:::
:::

@exm-1-8-6 is another case of two different sample spaces in which each outcome in one sample space corresponds to a different number of outcomes in the other space. See @exr-1-9-12 in @sec-1-9 for a more complete analysis of @exm-1-8-6.

## The Tennis Tournament

We shall now present a difficult problem that has a simple and elegant solution. Suppose that $n$ tennis players are entered in a tournament. In the first round, the players are paired one against another at random. The loser in each pair is eliminated from the tournament, and the winner in each pair continues into the second round. If the number of players $n$ is odd, then one player is chosen at random before the pairings are made for the first round, and that player automatically continues into the second round. All the players in the second round are then paired at random. Again, the loser in each pair is eliminated, and the winner in each pair continues into the third round. If the number of players in the second round is odd, then one of these players is chosen at random before the others are paired, and that player automatically continues into the third round. The tournament continues in this way until only two players remain in the final round. They then play against each other, and the winner of this match is the winner of the tournament. We shall assume that all $n$ players have equal ability, and we shall determine the probability $p$ that two specific players $A$ and $B$ will ever play against each other during the tournament.

We shall first determine the total number of matches that will be played during the tournament. After each match has been played, one player—--the loser of that match—--is eliminated from the tournament. The tournament ends when everyone has been eliminated from the tournament except the winner of the final match. Since exactly $n − 1$ players must be eliminated, it follows that exactly $n − 1$ matches must be played during the tournament.

The number of possible pairs of players is $\binom{n}{2}$. Each of the two players in every match is equally likely to win that match, and all initial pairings are made in a random manner. Therefore, before the tournament begins, every possible pair of players is equally likely to appear in each particular one of the $n − 1$ matches to be played during the tournament. Accordingly, the probability that players $A$ and $B$ will meet in some particular match that is specified in advance is $1/\binom{n}{2}$. If $A$ and $B$ do meet in that particular match, one of them will lose and be eliminated. Therefore, these same two players cannot meet in more than one match.

It follows from the preceding explanation that the probability $p$ that players $A$ and $B$ will meet at some time during the tournament is equal to the product of the probability $1/\binom{n}{2}$ that they will meet in any particular specified match and the total number $n − 1$ of different matches in which they might possibly meet. Hence,

$$
p = \frac{n-1}{\binom{n}{2}} = \frac{2}{n}.
$$

(sec-1-8-3)=
# 1.8.3 Summary

We showed that the number of size $k$ subsets of a set of size $n$ is $\binom{n}{k} = n!/[k!(n-k)!]$. This turns out to be the number of possible samples of size $k$ drawn without replacement from a population of size $n$ as well as the number of arrangements of $n$ items of two types with $k$ of one type and $n − k$ of the other type. We also saw several examples in which more than one counting technique was required at different points in the same problem. Sometimes, more than one technique is required to count the elements of a single set.

(sec-1-8-4)=
# 1.8.4 Exercises

::: {#exr-1-8-1}

## Exercise 1.8.1

Two pollsters will canvas a neighborhood with 20
houses. Each pollster will visit 10 of the houses.How many different assignments of pollsters to houses are possible?

:::

::: {#exr-1-8-2}

# Exercise 1.8.2

Which of the following two numbers is larger: $\binom{93}{30}$ or $\binom{93}{31}$?

:::

::: {#exr-1-8-3}

# Exercise 1.8.3

Which of the following two numbers is larger: $\binom{93}{30}$ or $\binom{93}{63}$?

:::

::: {#exr-1-8-4}

# Exercise 1.8.4

4. A box contains 24 light bulbs, of which four are defective. If a person selects four bulbs from the box at random, without replacement, what is the probability that all four bulbs will be defective?

:::

::: {#exr-1-8-5}

# Exercise 1.8.5

Prove that the following number is an integer:

$$
\frac{4155 \cdot 4156 \cdot \cdots \cdot 4250 \cdot 4251}{2 \cdot 3 \cdot \cdots \cdot 96 \cdot 97}.
$$

:::

::: {#exr-1-8-6}

# Exercise 1.8.6

Suppose that $n$ people are seated in a random manner in a row of $n$ theater seats. What is the probability that two particular people $A$ and $B$ will be seated next to each other?

:::

::: {#exr-1-8-7}

# Exercise 1.8.7

If $k$ people are seated in a random manner in a row containing $n$ seats ($n > k$), what is the probability that the people will occupy $k$ adjacent seats in the row?

:::

::: {#exr-1-8-8}

# Exercise 1.8.8

If $k$ people are seated in a random manner in a circle containing $n$ chairs ($n > k$), what is the probability that the people will occupy $k$ adjacent chairs in the circle?

:::

::: {#exr-1-8-9}

# Exercise 1.8.9

If $n$ people are seated in a random manner in a row containing $2n$ seats, what is the probability that no two people will occupy adjacent seats?

:::

::: {#exr-1-8-10}

# Exercise 1.8.10

A box contains 24 light bulbs, of which two are defective. If a person selects 10 bulbs at random, without replacement, what is the probability that both defective bulbs will be selected?

:::

::: {#exr-1-8-11}

# Exercise 1.8.11

Suppose that a committee of 12 people is selected in a random manner from a group of 100 people. Determine the probability that two particular people $A$ and $B$ will both be selected.

:::

::: {#exr-1-8-12}

# Exercise 1.8.12

Suppose that 35 people are divided in a random manner into two teams in such a way that one team contains 10 people and the other team contains 25 people. What is the probability that two particular people $A$ and $B$ will be on the same team?

:::

::: {#exr-1-8-13}

# Exercise 1.8.13

A box contains 24 light bulbs of which four are defective. If one person selects 10 bulbs from the box in a random manner, and a second person then takes the remaining 14 bulbs, what is the probability that all four defective bulbs will be obtained by the same person?

:::

::: {#exr-1-8-14}

# Exercise 1.8.14

Prove that, for all positive integers $n$ and $k$ ($n \geq k$),

$$
\binom{n}{k} + \binom{n}{k-1} = \binom{n+1}{k}.
$$

:::

::: {#exr-1-8-15}

# Exercise 1.8.15

(a) Prove that

$$
\binom{n}{0} + \binom{n}{1} + \binom{n}{2} + \cdots + \binom{n}{n} = 2^n.
$$

(b) Prove that

$$
\binom{n}{0} - \binom{n}{1} + \binom{n}{2} - \binom{n}{3} + \cdots + (-1)^n\binom{n}{n} = 0.
$$

*Hint*: Use the binomial theorem.

:::

::: {#exr-1-8-16}

# Exercise 1.8.16

The United States Senate contains two senators from each of the 50 states. **(a)** If a committee of eight senators is selected at random, what is the probability that it will contain at least one of the two senators from a certain specified state? **(b)** What is the probability that a group of 50 senators selected at random will contain one senator from each state?

:::

::: {#exr-1-8-17}

# Exerise 1.8.17

A deck of 52 cards contains four aces. If the cards are shuffled and distributed in a random manner to four players so that each player receives 13 cards, what is the probability that all four aces will be received by the same player?

:::

::: {#exr-1-8-18}

# Exercise 1.8.18

Suppose that 100 mathematics students are divided
into five classes, each containing 20 students, and that awards are to be given to 10 of these students. If each student is equally likely to receive an award, what is the probability that exactly two students in each class will receive awards?

:::

::: {#exr-1-8-19}

# Exercise 1.8.19

A restaurant has $n$ items on its menu. During a particular day, $k$ customers will arrive and each one will choose one item. The manager wants to count how many different collections of customer choices are possible without regard to the order in which the choices are made. (For example, if $k = 3$ and $a_1, \ldots, a_n$ are the menu items, then $a_1a_3a_1$ is not distinguished from $a_1a_1a_3$.) Prove that the number of different collections of customer choices is $\binom{n+k-1}{k}$. *Hint*: Assume that the menu items are $a_1, \ldots, a_n$. Show that each collection of customer choices, arranged with the $a_1$'s first, the $a_2$'s second, etc., can be identified with a sequence of $k$ zeros and $n − 1$ ones, where each 0 stands for a customer choice and each 1 indicates a point in the sequence where the menu item number increases by 1. For example, if $k = 3$ and $n = 5$, then $a_1a_1a_3$ becomes `0011011`.

:::

::: {#exr-1-8-20}

# Exercise 1.8.20

Prove the binomial theorem, @thm-1-8-2. *Hint*: You may use an induction argument. That is, first prove that the result is true if $n = 1$. Then, under the assumption that there is $n_0$ such that the result is true for all $n \leq n_0$, prove that it is also true for $n = n_0 + 1$.

:::

::: {#exr-1-8-21}

# Exercise 1.8.21

Return to the birthday problem (@sec-bday-problem). How many different sets of birthdays are available with $k$ people and 365 days when we don't distinguish the same birthdays in different orders? For example, if $k = 3$, we would count (Jan. 1, Mar. 3, Jan.1) the same as (Jan. 1, Jan. 1, Mar. 3).

:::

::: {#exr-1-8-22}

# Exercise 1.8.22

Let $n$ be a large even integer. Use Stirlings' formula (@thm-1-7-5) to find an approximation to the binomial coefficient $\binom{n}{n/2}$. Compute the approximation with $n = 500$.

:::
