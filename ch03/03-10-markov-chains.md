(sec-3-10)=
# 3.10 Markov Chains

(sec-3-10-0)=
# Overview

*A popular model for systems that change over time in a random manner is the Markov chain model. A Markov chain is a sequence of random variables, one for each time. At each time, the corresponding random variable gives the state of the system. Also, the conditional distribution of each future state given the past states and the present state depends only on the present state.*

(sec-3-10-1)=
# 3.10.1 Stochastic Processes

:::: {prf:example} Occupied Telephone Lines
:label: exm-3-10-1
:enumerator: 3.10.1

Suppose that a certain business office has five telephone lines and that any number of these lines may be in use at any given time. During a certain period of time, the telephone lines are observed at regular intervals of 2 minutes and the number of lines that are being used at each time is noted. Let $X_1$ denote the number of lines that are being used when the lines are first observed at the beginning of the period; let $X_2$ denote the number of lines that are being used when they are observed the second time, 2 minutes later; and in general, for $n = 1, 2, \ldots$, let $X_n$ denote the number of lines that are being used when they are observed for the $n$th time.

::::

::: {#def-3-10-1}

# Definition 3.10.1: Stochastic Process

A sequence of random variables $X_1, X_2, \ldots$ is called a **stochastic process** or **random process** with discrete time parameter. The first random variable $X_1$ is called the **initial state** of the process; and for $n = 2, 3, \ldots$, the random variable $X_n$ is called the **state of the process at time $n$**.

:::

In @exm-3-10-1, the state of the process at any time is the number of lines being used at that time. Therefore, each state must be an integer between 0 and 5. Each of the random variables in a stochastic process has a marginal distribution, and the entire process has a joint distribution. For convenience, in this text, we will discuss only joint distributions for finitely many of $X_1, X_2, \ldots$ at a time. The meaning of the phrase "discrete time parameter" is that the process, such as the numbers of occupied phone lines, is observed only at discrete or separated points in time, rather than continuously in time. In @sec-5-4, we will introduce a different stochastic process (called the Poisson process) with a continuous time parameter.

In a stochastic process with a discrete time parameter, the state of the process varies in a random manner from time to time. To describe a complete probability model for a particular process, it is necessary to specify the distribution for the initial state $X_1$ and also to specify for each $n = 1, 2, \ldots$ the conditional distribution of the subsequent state $X_{n+1}$ given $X_1, \ldots, X_n$. These conditional distributions are equivalent to the collection of conditional CDFs of the following form:

$$
\Pr(X_{n+1} \leq b \mid X_1 = x_1, X_2 = x_2, \ldots, X_n = x_n).
$$

### Markov Chains

A Markov chain is a special type of stochastic process, defined in terms of the
conditional distributions of future states given the present and past states.

::: {#def-3-10-2}

<!-- appearance="default" icon="false" title="Definition 3.10.2: Markov Chain (DeGroot and Schervish, pp. 188-189)" -->

# Definition 3.10.2: Markov Chain

A stochastic process with discrete time parameter is a *Markov chain* if, for each time $n$, the conditional distributions of all $X_{n+j}$ for $j \geq 1$ given $X_1, \ldots, X_n$ depend only on $X_n$ and not on the earlier states $X_1, \ldots X_{n-1}$. In symbols, for $n = 1, 2, \ldots$ and for each $b$ and each possible sequence of states $x_1, x_2, \ldots, x_n$,

$$
Pr(X_{n+1} \leq b \mid X_1 = x_1, X_2 = x_2, \ldots, X_n = x_n) = Pr(X_{n+1} \leq b \mid X_n = x_n).
$$

A Markov chain is called *finite* if there are only finitely many possible states.

:::

In the remainder of this section, we shall consider only finite Markov chains. This assumption could be relaxed at the cost of more complicated theory and calculation. For convenience, we shall reserve the symbol $k$ to stand for the number of possible states of a general finite Markov chain for the remainder of the section. It will also be convenient, when discussing a general finite Markov chain, to name the $k$ states using the integers $1, \ldots, k$. That is, for each $n$ and $j$, $X_n = j$ will mean that the chain is in state $j$ at time $n$. In specific examples, it may prove more convenient to label the states in a more informative fashion. For example, if the states are the numbers of phone lines in use at given times (as in the example that introduced this section), we would label the states $0, \ldots, 5$ even though $k = 6$.

The following result follows from the multiplication rule for conditional probabilities, @thm-2-1-2.

::: {#thm-3-10-1}

# Theorem 3.10.1

For a finite Markov chain, the joint pmf for the first $n$ states equals

$$
\begin{align*}
&\Pr(X_1 = x_1, X_2 = x_2, \ldots, X_n = x_n) \\
= &\Pr(X_1 = x_1)\Pr(X_2 = x_2 \mid X_1 = x_1)\Pr(X_3 = x_3 \mid X_2 = x_2) \cdots \\
&\Pr(X_n = x_n \mid X_{n-1} = x_{n-1}).
\end{align*}
$$ {#eq-3-10-1}

Also, for each $n$ and each $m > 0$,

$$
\begin{align*}
&\Pr(X_{n+1} = x_{n+1}, X_{n+2} = x_{n+2}, \ldots, X_{n+m} = x_{n+m} \mid X_n = x_n) \\
= &\Pr(X_{n+1} = x_{n+1} \mid X_n = x_n)\Pr(X_{n+2} = x_{n+2} \mid X_{n+1} = x_{n+1}) \\
&\Pr(X_{n+m} = x_{n + m} \mid X_{n + m - 1} = x_{n + m - 1}).
\end{align*}
$$ {#eq-3-10-2}

:::

@eq-3-10-1 is a discrete version of a generalization of conditioning in sequence that was illustrated in @exm-3-7-18 with continuous random variables. @eq-3-10-2 is a conditional version of @eq-3-10-1 shifted forward in time.

::: {#exm-3-10-2}

<!-- {.callout-tip title="Example 3.10.2: Shopping for Toothpaste (DeGroot and Schervish)"} -->

# Example 3.10.2: Shopping for Toothpaste

In @exr-2-1-4, we considered a shopper who chooses between two brands of toothpaste on several occasions. Let $X_i = 1$ if the shopper chooses brand $A$ on the $i$th purchase, and let $X_i = 2$ if the shopper chooses brand $B$ on the $i$th purchase. Then the sequence of states $X_1, X_2, \ldots$ is a stochastic process with two possible states at each time. The probabilities of purchase were specified by saying that the shopper will choose the same brand as on the previous purchase with probability $1/3$ and will switch with probability $2/3$. Since this happens regardless of purchases that are older than the previous one, we see that this stochastic process is a Markov chain with

$$
\begin{align*}
Pr(X_{n+1} = 1 \mid X_n = 1) &= \frac{1}{3}, \; \Pr(X_{n+1} = 2 \mid X_n = 1) = \frac{2}{3}, \\
\Pr(X_{n+1} = 1 \mid X_n = 2) &= \frac{2}{3}, \; \Pr(X_{n+1} = 2 \mid X_n = 2) = \frac{1}{3}.
\end{align*}
$$

:::

@exm-3-10-2 has an additional feature that puts it in a special class of Markov chains. The probability of moving from one state at time $n$ to another state at time $n + 1$ does not depend on $n$.

::: {#def-3-10-3}

# Definition 3.10.3: Transition Distributions/Stationary Transition Distributions

Consider a finite Markov chain with $k$ possible states. The conditional distributions of the state at time $n + 1$ given the state at time $n$, that is, $\Pr(X_{n+1} = j \mid X_n = i)$ for $i, j = 1, \ldots, k$ and $n = 1, 2, \ldots$, are called the **transition distributions** of the Markov chain. If the transition distribution is the same for every time $n$ ($n = 1, 2, \ldots$), then the Markov chain has **stationary** transition distributions.

:::

When a Markov chain with $k$ possible states has stationary transition distributions, there exist probabilities $p_{ij}$ for $i, j = 1, \ldots, k$ such that, for all $n$,

$$
\Pr(X_{n+1} = j \mid X_n = i) = p_{ij} \; \text{ for }n = 1, 2, \ldots
$$ {#eq-3-10-3}

The Markov chain in @exm-3-10-2 has stationary transition distributions. For example, $p_{11} = 1/3$.

In the language of multivariate distributions, when a Markov chain has stationary transition distributions, specified by @eq-3-10-3, we can write the conditional pmf of $X_{n+1}$ given $X_n$ as

$$
g(j \mid i) = p_{ij},
$$ {#eq-3-10-4}

for all $n$, $i$, $j$.

::: {#exm-3-10-3}

# Example 3.10.3: Occupied Telephone Lines

<!-- {.callout-tip title="Example 3.10.3: Occupied Telephone Lines (DeGroot and Schervish, p. 190)"} -->

To illustrate the application of these concepts, we shall consider again the example involving the office with five telephone lines. In order for this stochastic process to be a Markov chain, the specified distribution for the number of lines that may be in use at each time must depend only on the number of lines that were in use when the process was observed most recently 2 minutes earlier and must not depend on any other observed values previously obtained. For example, if three lines were in use at time $n$, then the distribution for time $n + 1$ must be the same regardless of whether 0, 1, 2, 3, 4, or 5 lines were in use at time $n − 1$.

In reality, however, the observation at time $n − 1$ might provide some information in regard to the length of time for which each of the three lines in use at time $n$ had been occupied, and this information might be helpful in determining the distribution for time $n + 1$. Nevertheless, we shall suppose now that this process is a Markov chain.

If this Markov chain is to have stationary transition distributions, it must be true that the rates at which incoming and outgoing telephone calls are made and the average duration of these telephone calls do not change during the entire period covered by the process. This requirement means that the overall period cannot include busy times when more calls are expected or quiet times when fewer calls are expected. For example, if only one line is in use at a particular observation time, regardless of when this time occurs during the entire period covered by the process, then there must be a specific probability $p_{1j}$ that exactly $j$ lines will be in use 2 minutes later.  

:::

### The Transition Matrix

::: {#exm-3-10-4}

<!-- {.callout-tip title="Example 3.10.4: Shopping for Toothpaste (DeGroot and Schervish, p. 190)"} -->

# Example 3.10.4: Shopping for Toothpaste

The notation for stationary transition distributions, $p_{ij}$, suggests that they could be arranged in a matrix. The transition probabilities for @exm-3-10-2 can be arranged into the following matrix:

$$
\mathbf{P} = \begin{bmatrix}
\frac{1}{3} & \frac{2}{3} \\
\frac{2}{3} & \frac{1}{3}
\end{bmatrix}.
$$

:::


Every finite Markov chain with stationary transition distributions has a matrix like the one constructed in @exm-3-10-4.

::: {#def-3-10-4}

<!-- {.callout-tip title="Definition 3.10.4: Transition Matrix (DeGroot and Schervish, p. 191)"} -->

Consider a finite Markov chain with stationary transition distributions given by $p_{ij} = \Pr(X_{n+1} = j \mid X_n = i)$ for all $n$, $i$, $j$. The **transition matrix** of the Markov chain is defined to be the $k \times k$ matrix $\mathbf{P}$ with elements $p_{ij}$. That is,

$$
\mathbf{P} = \begin{bmatrix}
p_{11} & \cdots & p_{1k} \\
p_{21} & \cdots & p_{2k} \\
\vdots & \ddots & \vdots \\
p_{k1} & \cdots & p_{kk}
\end{bmatrix}.
$$

:::

A transition matrix has several properties that are apparent from its defintion. For example, each element is nonnegative because all elements are probabilities. Since each row of a transition matrix is a conditional pmf for the next state given
some value of the current state, we have $\sum_{j=1}^{k}p_{ij} = 1$ for $i = 1, \ldots, k$. Indeed, row $i$ of the transition matrix specifies the conditional pmf $g(\cdot \mid i)$ defined in @eq-3-10-4.

::: {#def-3-10-5}

# Definition 3.10.5: Stochastic Matrix

A square matrix for which all elements are nonnegative and the sum of the elements in each row is 1 is called a **stochastic matrix**.

:::

It is clear that the transition matrix $\mathbf{P}$ for every finite Markov chain with stationary transition probabilities must be a stochastic matrix. Conversely, every $k \times k$ stochastic matrix can serve as the transition matrix of a finite Markov chain with $k$ possible states and stationary transition distributions.

::: {#exm-3-10-5}

# Example 3.10.5: A Transition Matrix for the Number of Occupied Telephone Lines

Suppose that in the example involving the office with five telephone lines, the numbers of lines being used at times $1, 2, \ldots$ form a Markov chain with stationary transition distributions. This chain has six possible states $0, 1, \ldots, 5$, where $i$ is the state in which exactly $i$ lines are being used at a given time ($i = 0, 1, \ldots, 5$). Suppose that the transition matrix $\mathbf{P}$ is as follows:

$$
\mathbf{P} = \begin{bmatrix}
0.1 & 0.4 & 0.2 & 0.1 & 0.1 & 0.1 \\
0.2 & 0.3 & 0.2 & 0.1 & 0.1 & 0.1 \\
0.1 & 0.2 & 0.3 & 0.2 & 0.1 & 0.1 \\
0.1 & 0.1 & 0.2 & 0.3 & 0.2 & 0.1 \\
0.1 & 0.1 & 0.1 & 0.2 & 0.3 & 0.2 \\
0.1 & 0.1 & 0.1 & 0.1 & 0.4 & 0.2
\end{bmatrix}
$$

(a) Assuming that all five lines are in use at a certain observation time, we shall determine the probability that exactly four lines will be in use at the next observation time. (b) Assuming that no lines are in use at a certain time, we shall determine the probability that at least one line will be in use at the next observation time.

(a) This probability is the element in the matrix $\mathbf{P}$ in the row corresponding to the state 5 and the column corresponding to the state 4. Its value is seen to be 0.4.
(b) If no lines are in use at a certain time, then the element in the upper left corner of the matrix $\mathbf{P}$ gives the probability that no lines will be in use at the next observation time. Its value is seen to be 0.1. Therefore, the probability that at least one line will be in use at the next observation time is $1 − 0.1 = 0.9$.

:::

```{figure} images/fig-3-28.svg
:label: fig-3-28
:enumerator: 3.28
:align: center
:width: 60%

The generation following $\{Aa, Aa\}$
```

::: {#exm-3-10-6}

# Example 3.10.6: Plant Breeding Experiment

A botanist is studying a certain variety of plant that is monoecious (has male and female organs in separate flowers on a single plant). She begins with two plants I and II and cross-pollinates them by crossing male I with female II and female I with male II to produce two offspring for the next generation. The original plants are destroyed and the process is repeated as soon as the new generation of two plants is mature. Several replications of the study are run simultaneously. The botanist might be interested in the proportion of plants in any generation that have each of several possible genotypes for a particular gene. (See @exm-1-6-4.)

Suppose that the gene has two alleles, $A$ and $a$. The genotype of an individual will be one of the three combinations $AA$, $Aa$, or $aa$. When a new individual is born, it gets one of the two alleles (with probability $1/2$ each) from one of the parents, and it independently gets one of the two alleles from the other parent. The two offspring get their genotypes independently of each other.

For example, if the parents have genotypes $AA$ and $Aa$, then an offspring will get $A$ for sure from the first parent and will get either $A$ or $a$ from the second parent with probability $1/2$ each. Let the states of this population be the set of genotypes of the two members of the current population. We will not distinguish the set $\{AA, Aa\}$ from $\{Aa, AA\}$. There are then six states: $\{AA, AA\}$, $\{AA, Aa\}$, $\{AA, aa\}$, $\{Aa, Aa\}$, $\{Aa, aa\}$, and $\{aa, aa\}$. For each state, we can calculate the probability that the next generation will be in each of the six states. For example, if the state is either $\{AA, AA\}$ or $\{aa, aa\}$, the next generation will be in the same state with probability 1. If the state is $\{AA, aa\}$, the next generation will be in state $\{Aa, Aa\}$ with probability 1. The other three states have more complicated transitions.

If the current state is $\{Aa, Aa\}$, then all six states are possible for the next generation. In order to compute the transition distribution, it helps to first compute the probability that a given offspring will have each of the three genotypes. @fig-3-28 illustrates the possible offspring in this state. Each arrow going down in @fig-3-28 is a possible inheritance of an allele, and each combination of arrows terminating in a genotype has probability $1/4$.

It follows that the probability of $AA$ and $aa$ are both $1/4$, while the probability of $Aa$ is $1/2$, because two different combinations of arrows lead to this offspring. In order for the next state to be $\{AA, AA\}$, both offspring must be $AA$ independently, so the probability of this transition is $1/16$. The same argument implies that the probability of a transition to $\{aa, aa\}$ is $1/16$. A transition to $\{AA, Aa\}$ requires one offspring to be $AA$ (probability $1/4$) and the other to be $Aa$ (probabilty $1/2$). But the two different genotypes could occur in either order, so the whole probability of such a transition is $2 \times (1/4) \times (1/2) = 1/4$. A similar argument shows that a transition to $\{Aa, aa\}$ also has probability $1/4$. A transition to $\{AA, aa\}$ requires one offspring to be $AA$ (probability $1/4$) and the other to be $aa$ (probability 1/4). Once again, these can occur in two orders, so the whole probability is $2 \times 1/4 \times 1/4 = 1/8$. By subtraction, the probability of a transition to $\{Aa, Aa\}$ must be $1 − 1/16 − 1/16 − 1/4 − 1/4 − 1/8 = 1/4$. Here is the entire transition matrix, which can be verified in a manner similar to what has just been done:

$$
\begin{bmatrix}
1.0000 & 0.0000 & 0.0000 & 0.0000 & 0.0000 & 0.0000 \\
0.2500 & 0.5000 & 0.0000 & 0.2500 & 0.0000 & 0.0000 \\
0.0000 & 0.0000 & 0.0000 & 1.0000 & 0.0000 & 0.0000 \\
0.0625 & 0.2500 & 0.1250 & 0.2500 & 0.2500 & 0.0625 \\
0.0000 & 0.0000 & 0.0000 & 0.2500 & 0.5000 & 0.2500 \\
0.0000 & 0.0000 & 0.0000 & 0.0000 & 0.0000 & 1.0000
\end{bmatrix}
$$

:::

### The Transition Matrix for Several Steps

::: {#exm-3-10-7}

# Example 3.10.7: Single Server Queue

A manager usually checks the server at her store every 5 minutes to see whether the server is busy or not. She models the state of the server (1 = busy or 2 = not busy) as a Markov chain with two possible states and stationary transition distributions given by the following matrix:

$$
\mathbf{P} = \begin{bmatrix}
0.9 & 0.1 \\
0.6 & 0.4
\end{bmatrix}.
$$

The manager realizes that, later in the day, she will have to be away for 10 minutes and will miss one server check. She wants to compute the conditional distribution of the state two time periods in the future given each of the possible states. She reasons as follows: If $X_n = 1$ for example, then the state will have to be either 1 or 2 at time $n + 1$ even though she does not care now about the state at time $n + 1$. But, if she computes the joint conditional distribution of $X_{n+1}$ and $X_{n+2}$ given $X_n = 1$, she can sum over the possible values of $X_{n+1}$ to get the conditional distribution of $X_{n+2}$ given $X_n = 1$. In symbols,

$$
\begin{align*}
\Pr(X_{n+2} = 1 \mid X_n = 1) = &\Pr(X_{n+1} = 1, X_{n+2} = 1 \mid X_n = 1) \\
&+ \Pr(X_{n+1} = 2, X_{n+2} = 1 \mid X_n = 1).
\end{align*}
$$

By the second part of @thm-3-10-1,

$$
\begin{align*}
Pr(X_{n+1} = 1, X_{n+2} = 1 \mid X_n = 1) &= \Pr(X_{n+1} = 1 \mid X_n = 1)\Pr(X_{n+2} = 1 \mid X_{n+1} = 1) \\
&= 0.9 \times 0.9 = 0.81.
\end{align*}
$$

Similarly,

$$
\begin{align*}
\Pr(X_{n+1} = 2, X_{n+2} = 1 \mid X_n = 1) &= \Pr(X_{n+1} = 2 \mid X_n = 1)\Pr(X_{n+2} = 1 \mid X_{n+1} = 2) \\
&= 0.1 \times 0.6 = 0.06.
\end{align*}
$$

It follows that $\Pr(X_{n+2} = 1 \mid X_n = 1) = 0.81 + 0.06 = 0.87$, and hence $\Pr(X_{n+2} = 2 \mid X_n = 1) = 1 − 0.87 = 0.13$. By similar reasoning, if $X_n = 2$,

$$
\Pr(X_{n+2} = 1 \mid X_n = 2) = 0.6 \times 0.9 + 0.4 \times 0.6 = 0.78,
$$

and $\Pr(X_{n+2} = 2 \mid X_n = 2) = 1 - 0.78 = 0.22$.

:::
 
Generalizing the calculations in @exm-3-10-7 to three or more transitions might seem tedious. However, if one examines the calculations carefully, one sees a pattern that will allow a compact calculation of transition distributions for several steps.

Consider a general Markov chain with $k$ possible states $1, \ldots, k$ and the transition matrix $\mathbf{P}$ given by @eq-3-10-5. Assuming that the chain is in state $i$ at a given time $n$, we shall now determine the probability that the chain will be in state $j$ at time $n + 2$. In other words, we shall determine the conditional probability of $X_{n+2} = j$ given $X_n = i$. The notation for this probability is $p^{(2)}_{ij}$.

We argue as the manager did in @exm-3-10-7. Let $r$ denote the value of $X_{n+1}$ that is not of primary interest but is helpful to the calculation. Then

$$
\begin{align*}
p^{(2)}_{ij} &= \Pr(X_{n+2} = j \mid X_n = i) \\
&= \sum_{r=1}^{k}\Pr(X_{n+1} = r, X_{n+2} = j \mid X_n = i) \\
&= \sum_{r=1}^{k}\Pr(X_{n+1} = r \mid X_n = i)Pr(X_{n+2} = j \mid X_{n+1} = r, X_n = i) \\
&= \sum_{r=1}^{k}\Pr(X_{n+1} = r \mid X_n = i)\Pr(X_{n+2} = j \mid X_{n+1} = r) \\
&= \sum_{r=1}^{k}p_{ir}p_{rj},
\end{align*}
$$

where the third equality follows from @thm-2-1-3 and the fourth equality follows from the definition of a Markov chain.

The value of $p^{(2)}_{ij}$ can be determined in the following manner: If the transition matrix $\mathbf{P}$ is squared, that is, if the matrix $\mathbf{P}^2 = \mathbf{P}\mathbf{P}$ is constructed, then the element in the $i$th row and the $j$th column of the matrix $\mathbf{P}^2$ will be $\sum_{r=1}^{k}p_{ir}p_{rj}$. Therefore, $p^{(2)}_{ij}$ will be the element in the $i$th row and the $j$th column of $\mathbf{P}^2$.

By a similar argument, the probability that the chain will move from the state $i$ to the state $j$ in three steps, or $p^{(3)}_{ij} = \Pr(X_{n+3} = j \mid X_n = i)$, can be found by constructing the matrix $\mathbf{P}^3 = \mathbf{P}^2\mathbf{P}$. Then the probability $p^{(3)}_{ij}$ will be the element in the $i$th row and the $j$th column of the matrix $\mathbf{P}^3$.

In general, we have the following result.

::: {#thm-3-10-2}

# Theorem 3.10.2: Multiple Step Transitions

Let $\mathbf{P}$ be the transition matrix of a finite Markov chain with stationary transition distributions. For each $m = 2, 3, \ldots$, the $m$th power $\mathbf{P}^m$ of the matrix $\mathbf{P}$ has in row $i$ and column $j$ the probability $p^{(m)}_{ij}$ that the chain will move from state $i$ to state $j$ in $m$ steps.

:::

::: {#def-3-10-6}

# Definition 3.10.6: Multiple Step Transition Matrix

Under the conditions of @thm-3-10-2, the matrix $\mathbf{P}^m$ is called the **$m$-step transition matrix** of the Markov chain.

:::

In summary, the $i$th row of the $m$-step transition matrix gives the conditional distribution of $X_{n+m}$ given $X_n = i$ for all $i = 1, \ldots, k$ and all $n, m = 1, 2, \ldots$.

::: {#exm-3-10-8}

# Example 3.10.8: The Two-Step and Three-Step Transition Matrices for the Number of Occupied Telephone Lines

Consider again the transition matrix $\mathbf{P}$ given by @eq-3-10-6 for the Markov chain based on five telephone lines. We shall assume first that $i$ lines are in use at a certain time, and we shall determine the probability that exactly $j$ lines will be in use two time periods later.

If we multiply the matrix $\mathbf{P}$ by itself, we obtain the following two-step transition matrix:

$$
\mathbf{P}^2 = \begin{bmatrix}
0.14 & 0.23 & 0.20 & 0.15 & 0.16 & 0.12 \\
0.13 & 0.24 & 0.20 & 0.15 & 0.16 & 0.12 \\
0.12 & 0.20 & 0.21 & 0.18 & 0.17 & 0.12 \\
0.11 & 0.17 & 0.19 & 0.20 & 0.20 & 0.13 \\
0.11 & 0.16 & 0.16 & 0.18 & 0.24 & 0.15 \\
0.11 & 0.16 & 0.15 & 0.17 & 0.25 & 0.16
\end{bmatrix}
$$ {#eq-3-10-7}

From this matrix we can find any two-step transition probability for the chain, such as the following:

i. If two lines are in use at a certain time, then the probability that four lines will be in use two time periods later is 0.17.
ii. If three lines are in use at a certain time, then the probability that three lines will again be in use two time periods later is 0.20.

We shall now assume that $i$ lines are in use at a certain time, and we shall determine the probability that exactly $j$ lines will be in use three time periods later.

If we construct the matrix $\mathbf{P}^3 = \mathbf{P}^2\mathbf{P}$, we obtain the following three-step transition matrix:

$$
\mathbf{P}^3 = \begin{bmatrix}
0.123 & 0.208 & 0.192 & 0.166 & 0.183 & 0.128 \\
0.124 & 0.207 & 0.192 & 0.166 & 0.183 & 0.128 \\
0.120 & 0.197 & 0.192 & 0.174 & 0.188 & 0.129 \\
0.117 & 0.186 & 0.186 & 0.179 & 0.199 & 0.133 \\
0.116 & 0.181 & 0.177 & 0.176 & 0.211 & 0.139 \\
0.116 & 0.180 & 0.174 & 0.174 & 0.215 & 0.141
\end{bmatrix}
$$ {#eq-3-10-8}

From this matrix we can find any three-step transition probability for the chain, such as the following:

i. If all five lines are in use at a certain time, then the probability that no lines will be in use three time periods later is 0.116.
ii. If one line is in use at a certain time, then the probability that exactly one line will again be in use three time periods later is 0.207.

:::

::: {#exm-3-10-9}

# Example 3.10.9: Plant Breeding Experiment

In @exm-3-10-6, the transition matrix has many zeros, since many of the transitions will not occur. However, if we are willing to wait two steps, we will find that the only transitions that cannot occur in two steps are those from the first state to anything else and those from the last state to anything else.

Here is the two-step transition matrix:

$$
\begin{bmatrix}
1.0000 & 0.0000 & 0.0000 & 0.0000 & 0.0000 & 0.0000 \\
0.3906 & 0.3125 & 0.0313 & 0.1875 & 0.0625 & 0.0156 \\
0.0625 & 0.2500 & 0.1250 & 0.2500 & 0.2500 & 0.0625 \\
0.1406 & 0.1875 & 0.0313 & 0.3125 & 0.1875 & 0.1406 \\
0.0156 & 0.0625 & 0.0313 & 0.1875 & 0.3125 & 0.3906 \\
0.0000 & 0.0000 & 0.0000 & 0.0000 & 0.0000 & 1.0000
\end{bmatrix}
$$

Indeed, if we look at the three-step or the four-step or the general $m$-step transition matrix, the first and last rows will always be the same.

:::

The first and last states in @exm-3-10-9 have the property that, once the chain gets into one of those states, it can't get out. Such states occur in many Markov chains and have a special name.

::: {#def-3-10-7}

# Definition 3.10.7: Absorbing State

In a Markov chain, if $p_{ii} = 1$ for some state $i$, then that state is called an **absorbing state**.

:::

In @exm-3-10-9, there is positive probability of getting into each absorbing state in two steps no matter where the chain starts. Hence, the probability is 1 that the chain will eventually be absorbed into one of the absorbing states if it is allowed to run long enough.

### The Initial Distribution

::: {#exm-3-10-10}

# Example 3.10.10: Single Server Queue

The manager in @exm-3-10-7 enters the store thinking that the probability is 0.3 that the server will be busy the first time that she checks. Hence, the probability is 0.7 that the server will be not busy. These values specify the marginal distribution of the state at time 1, $X_1$. We can represent this distribution by the vector $\mathbf{v} = (0.3, 0.7)$ that gives the probabilities of the two states at time 1 in the same order that they appear in the transition matrix.

:::

The vector giving the marginal distribution of $X_1$ in @exm-3-10-10 has a special name.

::: {#def-3-10-8}

# Definition 3.10.8: Probability Vector/Initial Distribution

A vector consisting of nonnegative numbers that add to 1 is called a **probability vector**. A probability vector whose coordinates specify the probabilities that a Markov chain will be in each of its states at time 1 is called the **initial distribution** of the chain or the **intial probability vector**.

:::

For @exm-3-10-2, the initial distribution was given in @exr-2-1-4 as $\mathbf{v} = (0.5, 0.5)$.

The initial distribution and the transition matrix together determine the entire joint distribution of the Markov chain. Indeed, @thm-3-10-1 shows how to construct the joint distribution of the chain from the initial probability vector and the transition matrix. Letting $\mathbf{v} = (v_1, \ldots, v_k)$ denote the initial distribution, @eq-3-10-1 can be rewritten as

$$
\Pr(X_1 = x_1, X_2 = x_2, \ldots, X_n = x_n) = v_{x_1}p_{x_1x_2}\cdots p_{x_{n-1}x_n}.
$$ {#eq-3-10-9}

The marginal distributions of states at times later than 1 can be found from the joint distribution.

::: {#thm-3-10-3}

# Theorem 3.10.3: Marginal Distributions at Times Other Than 1

Consider a finite Markov chain with stationary transition distributions having initial distribution $\mathbf{v}$ and transition matrix $\mathbf{P}$. The marginal distribution of $X_n$, the state at time $n$, is given by the probability vector $\mathbf{v}\mathbf{P}^{n−1}$.

::: {.proof}

The marginal distribution of $X_n$ can be found from @eq-3-10-9 by summing over the possible values of $x_1, \ldots, x_{n-1}$. That is,

$$
\Pr(X_n = x_n) = \sum_{x_{n-1}=1}^{k}\cdots \sum_{x_2=1}^{k}\sum_{x_1=1}^{k}v_{x_1}p_{x_1x_2}p_{x_2x_3}\cdots p_{x_{n-1}x_n}.
$$ {#eq-3-10-10}

The innermost sum in @eq-3-10-10 for $x_1= 1, \ldots, k$ involves only the first two factors $v_{x_1}p_{x_1x_2}$ and produces the $x_2$ coordinate of $\mathbf{v}\mathbf{P}$. Similarly, the next innermost sum over $x_2 = 1, \ldots, k$ involves only the $x_2$ coordinate of $\mathbf{v}\mathbf{P}$ and $p_{x_2x_3}$ and produces the $x_3$ coordinate of $\mathbf{v}\mathbf{P}\mathbf{P}$ = $\mathbf{v}\mathbf{P}^2$. Proceeding in this way through all $n − 1$ summations produces the $x_n$ coordinate of $\mathbf{v}\mathbf{P}^{n−1}$.

:::
:::

::: {#exm-3-10-11}

# Example 3.10.11: Probabilities for the Number of Occupied Telephone Lines

Consider again the office with five telephone lines and the Markov chain for which the transition matrix $\mathbf{P}$ is given by @eq-3-10-6. Suppose that at the beginning of the observation process at time $n = 1$, the probability that no lines will be in use is 0.5, the probability that one line will be in use is 0.3, and the probability that two lines will be in use is 0.2. Then the initial probability vector is $\mathbf{v} = (0.5, 0.3, 0.2, 0, 0, 0)$. We shall first determine the distribution of the number of lines in use at time 2, one period later.

By an elementary computation it will be found that

$$
\mathbf{v}\mathbf{P} = (0.13, 0.33, 0.22, 0.12, 0.10, 0.10).
$$

Since the first component of this probability vector is 0.13, the probability that no lines will be in use at time 2 is 0.13; since the second component is 0.33, the probability that exactly one line will be in use at time 2 is 0.33; and so on.

Next, we shall determine the distribution of the number of lines that will be in use at time 3.

By use of @eq-3-10-7, it can be found that

$$
\mathbf{v}\mathbf{P}^2 = (0.133, 0.227, 0.202, 0.156, 0.162, 0.120).
$$

Since the first component of this probability vector is 0.133, the probability that no lines will be in use at time 3 is 0.133; since the second component is 0.227, the probability that exactly one line will be in use at time 3 is 0.227; and so on.

:::

### Stationary Distributions

::: {#exm-3-10-12}

# Example 3.10.12: A Special Initial Distribution for Telephone Lines

<!-- {.callout-tip title="Example 3.10.12: A Special Initial Distribution for Telephone Lines (DeGroot and Schervish, p. 197)"} -->

Suppose that the initial distribution for the number of occupied telephone lines is

$$
\mathbf{v} = (0.119, 0.193, 0.186, 0.173, 0.196, 0.133).
$$

It can be shown, by matrix multiplication, that $\mathbf{v}\mathbf{P} = \mathbf{v}$. This means that if $\mathbf{v}$ is the initial distribution, then it is also the distribution after one transition. Hence, it will also be the distribution after two or more transitions as well.

:::

::: {#def-3-10-9}

# Definition 3.10.9: Stationary Distribution

<!-- {.callout-tip title="Definition 3.10.9: Stationary Distribution (DeGroot and Schervish, p. 198)"} -->

Let $\mathbf{P}$ be the transition matrix for a Markov chain. A probability vector $\mathbf{v}$ that satisfies $\mathbf{v}\mathbf{P} = \mathbf{v}$ is called a **stationary distribution** for the Markov
chain.

:::

The initial distribution in @exm-3-10-12 is a stationary distribution for the telephone lines Markov chain. If the chain starts in this distribution, the distribution stays the same at all times. Every finite Markov chain with stationary transition distributions has at least one stationary distribution. Some chains have a unique stationary distribution.

**Note: A Stationary Distribution Does Not Mean That the Chain is Not Moving.** It is important to note that $\mathbf{v}\mathbf{P}^n$ gives the probabilities that the chain is in each of its states after $n$ transitions, calculated before the initial state of the chain or any transitions are observed. These are different from the probabilities of being in the various states after observing the initial state or after observing any of the intervening transitions. In addition, a stationary distribution does not imply that the Markov chain is staying put. If a Markov chain starts in a stationary distribution, then for each state $i$, the probability that the chain is in state $i$ after $n$ transitions is the same as the probability that it is state i at the start. But the Markov chain can still move around from one state to the next at each transition. The one case in which a Markov chain does stay put is after it moves into an absorbing state. A distribution that is concentrated solely on absorbing states will necessarily be stationary because the Markov chain will never move if it starts in such a distribution. In such cases, all of the uncertainty surrounds the initial state, which will also be the state after every transition.

::: {#exm-3-10-13}

# Example 3.10.13: Stationary Distributions for the Plant Breeding Experiment

Consider again the experiment described in @exm-3-10-6. The first and sixth states, $\{AA, AA\}$ and $\{aa, aa\}$, respectively, are absorbing states. It is easy to see that every initial distribution of the form $\mathbf{v} = (p, 0, 0, 0, 0, 1 − p)$ for $0 \leq p \leq 1$ has the property that $\mathbf{v}\mathbf{P} = \mathbf{v}$. Suppose that the chain is in state 1 with probability $p$ and in state 6 with probability $1 − p$ at time 1. Because these two states are absorbing states, the chain will never move and the event $X_1 = 1$ is the same as the event that $X_n = 1$ for all $n$. Similarly, $X_1 = 6$ is the same as $X_n = 6$. So, thinking ahead to where the chain is likely to be after $n$ transitions, we would also say that it will be in state 1 with probability $p$ and in state
6 with probability $1 − p$.

:::

**Method for Finding Stationary Distributions**: We can rewrite the equation $\mathbf{v}\mathbf{P} = \mathbf{v}$ that defines stationary distributions as $\mathbf{v}[\mathbf{P} − \mathbf{I}] = \mathbf{0}$, where $\mathbf{I}$ is a $k \times k$ identity matrix and $\mathbf{0}$ is a $k$-dimensional vector of all zeros. Unfortunately, this system of equations has lots of solutions even if there is a unique stationary distribution. The reason is that whenever $\mathbf{v}$ solves the system, so does $c\mathbf{v}$ for all real $c$ (including $c = 0$). Even though the system has $k$ equations for $k$ variables, there is at least one redundant equation. However, there is also one missing equation. We need to require that the solution vector $\mathbf{v}$ has coordinates that sum to 1. We can fix both of these problems by replacing one of the equations in the original system by the equation that says that the coordinates of $\mathbf{v}$ sum to 1.

To be specific, define the matrix $\mathbf{G}$ to be $\mathbf{P} − \mathbf{I}$ with its last column replaced by a column of all ones. Then, solve the equation

$$
\mathbf{v}\mathbf{G} = (0, \ldots, 0, 1).
$$ {#eq-3-10-11}

If there is a unique stationary distribution, we will find it by solving @eq-3-10-11. In this case, the matrix $\mathbf{G}$ will have an inverse $\mathbf{G}^{−1}$ that satisfies

$$
\mathbf{G}\mathbf{G}^{-1} = \mathbf{G}^{-1}\mathbf{G} = \mathbf{I}.
$$

The solution of @eq-3-10-11 will then be

$$
\mathbf{v} = (0, \ldots, 0, 1)\mathbf{G}^{-1},
$$

which is easily seen to be the bottom row of the matrix $\mathbf{G}^{−1}$. This was the method used to find the stationary distribution in @exm-3-10-12. If the Markov chain has multiple stationary distributions, then the matrix $\mathbf{G}$ will be singular, and this method will not find any of the stationary distributions. That is what would happen in @exm-3-10-13 if one were to apply the method.

::: {#exm-3-10-14}

# Example 3.10.14: Stationary Distribution for Toothpaste Shopping

Consider the transition matrix $\mathbf{P}$ given in @exm-3-10-4. We can construct the matrix $\mathbf{G}$ as follows:

$$
\mathbf{P} - \mathbf{I} = \begin{bmatrix}
-\frac{2}{3} & \frac{2}{3} \\
\frac{2}{3} & -\frac{2}{3}
\end{bmatrix}; \; \text{ hence }
\mathbf{G} = \begin{bmatrix}
-\frac{2}{3} & 1 \\
\frac{2}{3} & 1
\end{bmatrix}.
$$

The inverse of $\mathbf{G}$ is

$$
\mathbf{G}^{-1} = \begin{bmatrix}
-\frac{3}{4} & \frac{3}{4} \\
\frac{1}{2} & \frac{1}{2}
\end{bmatrix}.
$$

We now see that the stationary distribution is the bottom row of $\mathbf{G}^{-1}$, $\mathbf{v} = (1/2, 1/2)$.

:::
 
There is a special case in which it is known that a unique stationary distribution exists and it has special properties.

::: {#thm-3-10-4}

# Theorem 3.10.4

If there exists $m$ such that every element of $\mathbf{P}^m$ is strictly positive, then

* The Markov chain has a unique stationary distribution $\mathbf{v}$,
* $\lim_{n \rightarrow \infty}\mathbf{P}^n$ is a matrix with all rows equal to $\mathbf{v}$, and
* No matter with what distribution the Markov chain starts, its distribution after $n$ steps converges to $\mathbf{v}$ as $n \rightarrow \infty$.

We shall not prove @thm-3-10-4, although some evidence for the second claim can be seen in @eq-3-10-8, where the six rows of $\mathbf{P}^3$ are much more alike than the rows of $\mathbf{P}$ and they are very similar to the stationary distribution given in @exm-3-10-12. The third claim in @thm-3-10-4 actually follows easily from the second claim. In @sec-12-5, we shall introduce a method that makes use of the third claim in @thm-3-10-4 in order to approximate distributions of random variables when those distributions are difficult to calculate exactly.

The transition matrices in Examples [-@thm-3-10-2], [-@thm-3-10-5], and [-@thm-3-10-7] satisfy the conditions of @thm-3-10-4. The following example has a unique stationary distribution but does not satisfy the conditions of @thm-3-10-4.

::: {#exm-3-10-15}

# Example 3.10.15: Alternating Chain

Let the transition matrix for a two-state Markov chain be

$$
\mathbf{P} = \begin{bmatrix}
0 & 1 \\
1 & 0
\end{bmatrix}.
$$

The matrix $\mathbf{G}$ is easy to construct and invert, and we find that the unique stationary distribution is $\mathbf{v} = (0.5, 0.5)$. However, as $m$ increases, $\mathbf{P}^m$ alternates between $\mathbf{P}$ and the $2 \times 2$ identity matrix. It does not converge and never does it have all elements strictly positive. If the initial distribution is $(v_1, v_2)$, the distribution after $n$ steps alternates between $(v_1, v_2)$ and $(v_2, v_1)$.

:::

Another example that fails to satisfy the conditions of @thm-3-10-4 is the gambler's ruin problem from @sec-2-4.

::: {#exm-3-10-16}

# Example 3.10.16: Gambler's Ruin

In @sec-2-4, we described the gambler's ruin problem, in which a gambler wins one dollar with probability $p$ and loses one dollar with probability $1 − p$ on each play of a game. The sequence of amounts held by the gambler through the course of those plays forms a Markov chain with two absorbing states, namely, 0 and $k$. There are $k − 1$ other states, namely, $1, \ldots, k-1$. (This notation violates our use of $k$ to stand for the number of states, which is $k + 1$ in this example. We felt this was less confusing than switching from the original notation of @sec-2-4.)

The transition matrix has first and last row being $(1, 0, \ldots, 0)$ and $(0, \ldots, 1)$, respectively. The $i$th row (for $i = 1, \ldots, k-1$) has 0 everywhere except in coordinate $i − 1$ where it has $1 − p$ and in coordinate $i + 1$ where it has $p$. Unlike @exm-3-10-15, this time the sequence of matrices $\mathbf{P}^m$ converges but there is no unique stationary distribution. The limit of $\mathbf{P}^m$ has as its last column the numbers $a_0, \ldots, a_k$, where $a_i$ is the probability that the fortune of a gambler who starts with $i$ dollars reaches $k$ dollars before it reaches 0 dollars.

The first column of the limit has the numbers $1 − a_0, \ldots, 1 - a_k$ and the rest of the limit matrix is all zeros. The stationary distributions have the same form as those in @exm-3-10-13, namely, all probability is in the absorbing states.

:::

### Summary

A Markov chain is a stochastic process, a sequence of random variables giving the states of the process, in which the conditional distribution of the state at the next time given all of the past states depends on the past states only through the most recent state. For Markov chains with finitely many states and stationary transition distributions, the transitions over time can be described by a matrix giving the probabilities of transition from the state indexing the row to the state indexing the column (the transition matrix $\mathbf{P}$). The initial probability vector $\mathbf{v}$ gives the distribution of the state at time 1. The transition matrix and initial probability vector together allow calculation of all probabilities associated with the Markov chain. In particular, $\mathbf{P}^n$ gives the probabilities of transitions over $n$ time periods, and $\mathbf{v}\mathbf{P}^n$ gives the distribution of the state at time $n + 1$. A stationary distribution is a probability vector $\mathbf{v}$ such that $\mathbf{v}\mathbf{P} = \mathbf{v}$. Every finite Markov chain with stationary transition distributions has at least one stationary distribution. For many Markov chains, there is a unique stationary distribution and the distribution of the chain after $n$ transitions converges to the stationary distribution as $n$ goes to $\infty$.

### Exercises

::: {#exr-3-10-1}

# Exercise 3.10.1

Consider the Markov chain in @exm-3-10-2 with initial
probability vector $\mathbf{v} = (1/2, 1/2)$.

a. Find the probability vector specifying the probabilities of the states at time $n = 2$.
b. Find the two-step transition matrix.

:::

:::: {exercise}
:label: exr-3-10-2
:enumerator: 3.10.2
::: {.exr-head}
## Exercise 3.10.2
:::

Suppose that the weather can be only sunny or cloudy and the weather conditions on successive mornings form a Markov chain with stationary transition probabilities. Suppose also that the transition matrix is as follows:

<table>
<thead>
<tr>
    <th></th>
    <th>Sunny</th>
    <th>Cloudy</th>
</tr>
</thead>
<tbody>
<tr>
    <td><b>Sunny</b></td>
    <td align="center">0.7</td>
    <td align="center">0.3</td>
</tr>
<tr>
    <td><b>Cloudy</b></td>
    <td>0.6</td>
    <td>0.4</td>
</tr>
</tbody>
</table>

* a. If it is cloudy on a given day, what is the probability that it will also be cloudy the next day?
* b. If it is sunny on a given day, what is the probability that it will be sunny on the next two days?
* c. If it is cloudy on a given day, what is the probability that it will be sunny on at least one of the next three days?

::::

:::: {exercise}
:label: exr-3-10-3
:enumerator: 3.10.3
::: {.exr-head}
## Exercise 3.10.3
:::

Consider again the Markov chain described in @exr-3-10-2.

* a. If it is sunny on a certain Wednesday, what is the probability that it will be sunny on the following Saturday?
* b. If it is cloudy on a certain Wednesday, what is the probability that it will be sunny on the following Saturday?

::::

::: {#exr-3-10-4}

# Exercise 3.10.4

Consider again the conditions of Exercises [-@exr-3-10-2] and [-@exr-3-10-3].

a. If it is sunny on a certain Wednesday, what is the probability that it will be sunny on both the following Saturday and Sunday?
b. If it is cloudy on a certain Wednesday, what is the probability that it will be sunny on both the following Saturday and Sunday?

:::

::: {#exr-3-10-5}

# Exercise 3.10.5

Consider again the Markov chain described in @exr-3-10-2. Suppose that the probability that it will be sunny on a certain Wednesday is 0.2 and the probability that it will be cloudy is 0.8.

a. Determine the probability that it will be cloudy on the next day, Thursday.
b. Determine the probability that it will be cloudy on Friday.
c. Determine the probability that it will be cloudy on Saturday.

:::

::: {#exr-3-10-6}

# Exercise 3.10.6

Suppose that a student will be either on time or late for a particular class and that the events that he is on time or late for the class on successive days form a Markov chain with stationary transition probabilities. Suppose also that if he is late on a given day, then the probability that he will be on time the next day is 0.8. Furthermore, if he is on time on a given day, then the probability that he will be late the next day is 0.5.

a. If the student is late on a certain day, what is the probability that he will be on time on each of the next three days?
b. If the student is on time on a given day, what is the probability that he will be late on each of the next three days?

:::

::: {#exr-3-10-7}

# Exercise 3.10.7

Consider again the Markov chain described in @exr-3-10-6.

a. If the student is late on the first day of class, what is the probability that he will be on time on the fourth day of class?
b. If the student is on time on the first day of class, what is the probability that he will be on time on the fourth day of class?

:::

::: {#exr-3-10-8}

# Exercise 3.10.8

Consider again the conditions of Exercises [-@exr-3-10-6] and [-@exr-3-10-7]. Suppose that the probability that the student will be late on the first day of class is 0.7 and that the probability that he will be on time is 0.3.

a. Determine the probability that he will be late on the second day of class.
b. Determine the probability that he will be on time on the fourth day of class.

:::

::: {#exr-3-10-9}

# Exercise 3.10.9

Suppose that a Markov chain has four states 1, 2, 3, 4 and stationary transition probabilities as specified by the following transition matrix:

$$
\begin{bmatrix}
1/4 & 1/4 & 0 & 1/2 \\
0 & 1 & 0 & 0 \\
1/2 & 0 & 1/2 & 0 \\
1/4 & 1/4 & 1/4 & 1/4
\end{bmatrix}
$$

a. If the chain is in state 3 at a given time $n$, what is the probability that it will be in state 2 at time $n + 2$?
b. If the chain is in state 1 at a given time $n$, what is the probability that it will be in state 3 at time $n + 3$?

:::

::: {#exr-3-10-10}

# Exercise 3.10.10

Let $X_1$ denote the initial state at time 1 of the Markov chain for which the transition matrix is as specified in @exr-3-10-5, and suppose that the initial probabilities are as follows:

$$
\begin{align*}
\Pr(X_1 = 1) &= 1/8, \; \Pr(X_1 = 2) = 1/4, \\
\Pr(X_1 = 3) &= 3/8, \; \Pr(X_1 = 4) = 1/4.
\end{align*}
$$

Determine the probabilities that the chain will be in states 1, 2, 3, and 4 at time $n$ for each of the following values of $n$:

(a) $n = 2$
(b) $n = 3$
(c) $n = 4$

:::

::: {#exr-3-10-11}

# Exercise 3.10.11

Each time that a shopper purchases a tube of toothpaste, she chooses either brand $A$ or brand $B$. Suppose that the probability is 1/3 that she will choose the same brand chosen on her previous purchase, and the probability is 2/3 that she will switch brands.

a. If her first purchase is brand $A$, what is the probability that her fifth purchase will be brand $B$?
b. If her first purchase is brand $B$, what is the probability that her fifth purchase will be brand $B$?

:::

::: {#exr-3-10-12}

# Exercise 3.10.12

Suppose that three boys $A$, $B$, and $C$ are throwing a ball from one to another. Whenever $A$ has the ball, he throws it to $B$ with a probability of 0.2 and to $C$ with a probability of 0.8. Whenever $B$ has the ball, he throws it to $A$ with a probability of 0.6 and to $C$ with a probability of 0.4. Whenever $C$ has the ball, he is equally likely to throw it to either $A$ or $B$.

a. Consider this process to be a Markov chain and construct the transition matrix.
b. If each of the three boys is equally likely to have the ball at a certain time $n$, which boy is most likely to have the ball at time $n + 2$?

:::

::: {#exr-3-10-13}

# Exercise 3.10.13

Suppose that a coin is tossed repeatedly in such a way that heads and tails are equally likely to appear on any given toss and that all tosses are independent, with the following exception: Whenever either three heads or three tails have been obtained on three successive tosses, then the outcome of the next toss is always of the opposite type.

At time $n$ ($n \geq 3$), let the state of this process be specified by the outcomes on tosses $n − 2$, $n − 1$, and $n$. Show that this process is a Markov chain with stationary transition probabilities and construct the transition matrix.

:::

::: {#exr-3-10-14}

# Exercise 3.10.14

There are two boxes $A$ and $B$, each containing red and green balls. Suppose that box $A$ contains one red ball and two green balls and box $B$ contains eight red balls and two green balls. Consider the following process:

One ball is selected at random from box $A$, and one ball is selected at random from box $B$. The ball selected from box $A$ is then placed in box $B$ and the ball selected from box $B$ is placed in box $A$ These operations are then repeated indefinitely.

Show that the numbers of red balls in box $A$ form a Markov chain with stationary transition probabilities, and construct the transition matrix of the Markov chain.

:::

::: {#exr-3-10-15}

# Exercise 3.10.15

Verify the rows of the transition matrix in @exm-3-10-6 that correspond to current states $\{AA, Aa\}$ and $\{Aa, aa\}$.

:::

::: {#exr-3-10-16}

# Exercise 3.10.16

Let the initial probability vector in @exm-3-10-6 be $\mathbf{v} = (1/16, 1/4, 1/8, 1/4, 1/4, 1/16)$. Find the probabilities of the six states after one generation.

:::

::: {#exr-3-10-17}

# Exercise 3.10.17

Return to @exm-3-10-6. Assume that the state at time $n − 1$ is $\{Aa, aa\}$.

a. Suppose that we learn that $X_{n+1}$ is $\{AA, aa\}$. Find the conditional distribution of $X_n$. (That is, find all the probabilities for the possible states at time $n$ given that the state at time $n + 1$ is $\{AA, aa\}$.)
b. Suppose that we learn that $X_{n+1}$ is $\{aa, aa\}$. Find the conditional distribution of $X_n$.

:::

::: {#exr-3-10-18}

# Exercise 3.10.18

Return to @exm-3-10-13. Prove that the stationary distributions described there are the only stationary distributions for that Markov chain.

:::

::: {#exr-3-10-19}

# Exercise 3.10.19

Find the unique stationary distribution for the Markov chain in @exr-3-10-2.

:::

::: {#exr-3-10-20}

# Exercise 3.10.20

The unique stationary distribution in @exr-3-10-9 is $\mathbf{v} = (0, 1, 0, 0)$. This is an instance of the following general result:

Suppose that a Markov chain has exactly one absorbing state. Suppose further that, for each non-absorbing state $k$, there is $n$ such that the probability is positive of moving from state $k$ to the absorbing state in $n$ steps. Then the unique stationary distribution has probability 1 in the absorbing state. Prove this result.

:::
