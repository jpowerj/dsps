(sec-1-6)=
# 1.6 Finite Sample Spaces

(sec-1-6-0)=
# Overview

*The simplest experiments in which to determine and derive probabilities are those that involve only finitely many possible outcomes. This section gives several examples to illustrate the important concepts from @sec-1-5 in finite sample spaces.*

:::: {prf:example} Current Population Survey
:label: exm-1-6-1
:enumerator: 1.6.1
:::{.head}
## Example 1.6.1: Current Population Survey
:::

Every month, the Census Bureau conducts a survey of the United States population in order to learn about labor-force characteristics. Several pieces of information are collected on each of about 50,000 households. One piece of information is whether or not someone in the household is actively looking for employment but currently not employed. Suppose that our experiment consists of selecting three households at random from the 50,000 that were surveyed in a particular month and obtaining access to the information recorded during the survey. (Due to the confidential nature of information obtained during the Current Population Survey, only researchers in the Census Bureau would be able to perform the experiment just described.) The outcomes that make up the sample space $S$ for this experiment can be described as lists of three three distinct numbers from 1 to 50,000. For example (300, 1, 24602) is one such list where we have kept track of the order in which the three households were selected. Clearly, there are only finitely many such lists. We can assume that each list is equally likely to be chosen, but we need to be able to count how many such lists there are. We shall learn a method for counting the outcomes for this example in @sec-1-7.

::::

(sec-1-6-1)=
# 1.6.1 Requirements of Probabilities

In this section, we shall consider experiments for which there are only a finite number of possible outcomes. In other words, we shall consider experiments for which the sample space $S$ contains only a finite number of points $s_1, \ldots, s_n$. In an experiment of this type, a probability measure on $S$ is specified by assigning a probability $p_i$ to each point $s_i \in S$. The number $p_i$ is the probability that the outcome of the experiment will be $s_i$ ($i = 1, \ldots, n$). In order to satisfy the axioms of probability, the numbers $p_1, \ldots, p_n$ must satisfy the following two conditions:

$$
p_i \geq 0\text{ for }i = 1, \ldots, n
$$

and

$$
\sum_{i=1}^np_i = 1.
$$

The probability of each event $A$ can then be found by adding the probabilities $p_i$ of all outcomes $s_i$ that belong to $A$. This is the general version of @exm-1-5-2.

:::: {prf:example} Fiber Breaks
:label: exm-1-6-2
:enumerator: 1.6.2
:::{.head}
## Example 1.6.2: Fiber Breaks
:::

Consider an experiment in which five fibers having different lengths are subjected to a testing process to learn which fiber will break first. Suppose that the lengths of the five fibers are 1, 2, 3, 4, and 5 inches, respectively. Suppose also that the probability that any given fiber will be the first to break is proportional to the length of that fiber. We shall determine the probability that the length of the fiber that breaks first is not more than 3 inches.

In this example, we shall let $s_i$ be the outcome in which the fiber whose length is $i$ inches breaks first ($i = 1, \ldots, 5$). Then $S = \{s_1, \ldots, s_5\}$ and $p_i = \alpha i$ for $i = 1, \ldots, 5$, where $\alpha$ is a proportionality factor. It must be true that $p_1 + \cdots + p_5 = 1$, and we know that $p_1 + \cdots + p_5 = 15\alpha$, so $\alpha = 1/15$. If $A$ is the event that the length of the fiber that breaks first is not more than 3 inches, then $A = \{s_1, s_2, s_3\}$. Therefore,

$$
\Pr(A) = p_1 + p_2 + p_3 = \frac{1}{15} + \frac{2}{15} + \frac{3}{15} = \frac{2}{5}.
$$

::::

(sec-1-6-2)=
# 1.6.2 Simple Sample Spaces

A sample space $S$ containing $n$ outcomes $s_1, \ldots, s_n$ is called a simple sample space if the probability assigned to each of the outcomes $s_1, \ldots, s_n$ is $1/n$. If an event $A$ in this simple sample space contains exactly $m$ outcomes, then

$$
\Pr(A) = \frac{m}{n}.
$$

::: {#exm-1-6-3}

## Example 1.6.3: Tossing Coins

Suppose that three fair coins are tossed simultaneously. We shall determine the probability of obtaining exactly two heads.

Regardless of whether or not the three coins can be distinguished from each other by the experimenter, it is convenient for the purpose of describing the sample space to assume that the coins can be distinguished. We can then speak of the result for the first coin, the result for the second coin, and the result for the third coin; and the sample space will comprise the eight possible outcomes listed in @exm-1-4-4.

Furthermore, because of the assumption that the coins are fair, it is reasonable to assume that this sample space is simple and that the probability assigned to each of the eight outcomes is $1/8$. As can be seen from the listing in @exm-1-4-4, exactly two heads will be obtained in three of these outcomes. Therefore, the probability of obtaining exactly two heads is $3/8$.

:::
  
It should be noted that if we had considered the only possible outcomes to be no heads, one head, two heads, and three heads, it would have been reasonable to assume that the sample space contained just these four outcomes. This sample space would not be simple because the outcomes **would not be equally probable**.

:::: {prf:example} Genetics
:label: exm-1-6-4
:enumerator: 1.6.4

Inherited traits in humans are determined by material in specific locations on chromosomes. Each normal human receives 23 chromosomes from each parent, and these chromosomes are naturally paired, with one chromosome in each pair coming from each parent. For the purposes of this text, it is safe to think of a gene as a portion of each chromosome in a pair. The genes, either one at a time or in combination, determine the inherited traits, such as blood type and hair color. The material in the two locations that make up a gene on the pair of chromosomes comes in forms called alleles. Each distinct combination of alleles (one on each chromosome) is called a genotype.

Consider a gene with only two different alleles $A$ and $a$. Suppose that both parents have genotype $Aa$, that is, each parent has allele $A$ on one chromosome and allele $a$ on the other. (We do not distinguish the same alleles in a different order as a different genotype. For example, $aA$ would be the same genotype as $Aa$. But it can be convenient to distinguish the two chromosomes during intermediate steps in probability calculations, just as we distinguished the three coins in @exm-1-6-3.) What are the possible genotypes of an offspring of these two parents? If all possible results of the parents contributing pairs of alleles are equally likely, what are the probabilities of the different genotypes?

To begin, we shall distinguish which allele the offspring receives from each parent, since we are assuming that pairs of contributed alleles are equally likely. Afterward, we shall combine those results that produce the same genotype. The possible contributions from the parents are:

<table>
<thead>
<tr>
    <th></th>
    <th span="2" align="center">Mother</th>
</tr>
</thead>
<tbody>
<tr>
    <td><span data-qmd="**Father**"></span></td>
    <td><span data-qmd="$A$"></span></td>
    <td><span data-qmd="$a$"></span></td>
</tr>
<tr>
    <td><span data-qmd="$A$"></span></td>
    <td><span data-qmd="$AA$"></span></td>
    <td><span data-qmd="$Aa$"></span></td>
</tr>
<tr>
    <td><span data-qmd="$a$"></span></td>
    <td><span data-qmd="$aA$"></span></td>
    <td><span data-qmd="$aa$"></span></td>
</tr>
</tbody>
</table>

So, there are three possible genotypes $AA$, $Aa$, and $aa$ for the offspring. Since we assumed that every combination was equally likely, the four cells in the table all have probability $1/4$. Since two of the cells in the table combined into genotype $Aa$, that genotype has probability $1/2$. The other two genotypes each have probability $1/4$, since they each correspond to only one cell in the table.

::::

:::: {prf:example} Rolling Two Dice
:label: exm-1-6-5
:enumerator: 1.6.5

We shall now consider an experiment in which two balanced dice are rolled, and we shall calculate the probability of each of the possible values of the sum of the two numbers that may appear.

Although the experimenter need not be able to distinguish the two dice from one another in order to observe the value of their sum, the specification of a simple sample space in this example will be facilitated if we assume that the two dice are distinguishable. If this assumption is made, each outcome in the sample space $S$ can be represented as a pair of numbers $(x, y)$, where $x$ is the number that appears on the first die and $y$ is the number that appears on the second die. Therefore, $S$ comprises the following 36 outcomes:

| | | | | | |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| (1, 1) | (1, 2) | (1, 3) | (1, 4) | (1, 5) | (1, 6) |
| (2, 1) | (2, 2) | (2, 3) | (2, 4) | (2, 5) | (2, 6) |
| (3, 1) | (3, 2) | (3, 3) | (3, 4) | (3, 5) | (3, 6) |
| (4, 1) | (4, 2) | (4, 3) | (4, 4) | (4, 5) | (4, 6) |
| (5, 1) | (5, 2) | (5, 3) | (5, 4) | (5, 5) | (5, 6) |
| (6, 1) | (6, 2) | (6, 3) | (6, 4) | (6, 5) | (6, 6) |

It is natural to assume that $S$ is a simple sample space and that the probability of each of these outcomes is $1/36$.

Let $P_i$ denote the probability that the sum of the two numbers is $i$ for $i = 2, 3, \ldots, 12$. The only outcome in $S$ for which the sum is 2 is the outcome $(1, 1)$. Therefore, $P_2 = 1/36$. The sum will be 3 for either of the two outcomes (1, 2) and (2, 1). Therefore, $P_3 = 2/36 = 1/18$. By continuing in this manner, we obtain the following probability for each of the possible values of the sum:

$$
\begin{align*}
P_2 = P_{12} &= \frac{1}{36}, \; P_5 = P_9 = \frac{4}{36}, \\
P_3 = P_{11} &= \frac{2}{36}, \; P_6 = P_8 = \frac{5}{36}, \\
P_4 = P_{10} &= \frac{3}{36}, \; P_7 = \frac{6}{36}.
\end{align*}
$$

::::

(sec-1-6-3)=
# 1.6.3 Summary

A simple sample space is a finite sample space $S$ such that every outcome in $S$ has the same probability. If there are $n$ outcomes in a simple sample space $S$, then each one must have probability $1/n$. The probability of an event $E$ in a simple sample space is the number of outcomes in $E$ divided by $n$. In the next three sections, we will present some useful methods for counting numbers of outcomes in various events.

(sec-1-6-4)=
# 1.6.4 Exercises

::: {#exr-1-6-1}

## Exercise 1.6.1

If two balanced dice are rolled, what is the probability that the sum of the two numbers that appear will be odd?

:::

::: {#exr-1-6-2}

# Exercise 1.6.2

If two balanced dice are rolled, what is the probability that the sum of the two numbers that appear will be even?

:::

::: {#exr-1-6-3}

# Exercise 1.6.3

If two balanced dice are rolled, what is the probability that the difference between the two numbers that appear will be less than 3?

:::

::: {#exr-1-6-4}

# Exercise 1.6.4

A school contains students in grades 1, 2, 3, 4, 5, and 6. Grades 2, 3, 4, 5, and 6 all contain the same number of students, but there are twice this number in grade 1. If a student is selected at random from a list of all the students in the school, what is the probability that she will be in grade 3?

:::

::: {#exr-1-6-5}

# Exercise 1.6.5

For the conditions of @exr-1-6-4, what is the probability that the selected student will be in an odd-numbered
grade?

:::

::: {#exr-1-6-6}

# Exercise 1.6.6

If three fair coins are tossed, what is the probability that all three faces will be the same?

:::

::: {#exr-1-6-7}

# Exercise 1.6.7

Consider the setup of @exm-1-6-4. This time, assume that two parents have genotypes $Aa$ and $aa$. Find the possible genotypes for an offspring and find the probabilities for each genotype. Assume that all possible results of the parents contributing pairs of alleles are equally likely.

:::

::: {#exr-1-6-8}

# Exercise 1.6.8

Consider an experiment in which a fair coin is tossed once and a balanced die is rolled once.

(a) Describe the sample space for this experiment.
(b) What is the probability that a head will be obtained on the coin and an odd number will be obtained on the die?

:::
