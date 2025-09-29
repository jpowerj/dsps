(sec-3-1)=
# Random Variables and Discrete Distributions

*A random variable is a real-valued function defined on a sample space. Random variables are the main tools used for modeling unknown quantities in statistical analyses. For each random variable $X$ and each set $C$ of real numbers, we could calculate the probability that $X$ takes its value in $C$. The collection of all of these probabilities is the distribution of $X$. There are two major classes of distributions and random variables: discrete (this section) and continuous (@sec-3-2). Discrete distributions are those that assign positive probability to at most countably many different values. A discrete distribution can be characterized by its probability mass function (pmf), which specifies the probability that the random variable takes each of the different possible values. A random variable with a discrete distribution will be called a discrete random variable.*

(sec-3-1-1)=
# Definition of a Random Variable

:::: {prf:example} Tossing a Coin
:label: exm-3-1-1
:enumerator: 3.1.1

Consider an experiment in which a fair coin is tossed 10 times. In this experiment, the sample space $S$ can be regarded as the set of outcomes consisting of the 210 different sequences of 10 heads and/or tails that are possible. We might be interested in the number of heads in the observed outcome. We can let $X$ stand for the real-valued function defined on $S$ that counts the number of heads in each outcome. For example, if $s$ is the sequence `HHTTTHTTTH`, then $X(s) = 4$. For each possible sequence $s$ consisting of 10 heads and/or tails, the value $X(s)$ equals the number of heads in the sequence. The possible values for the function $X$ are $0, 1, \ldots, 10$.

::::

:::: {prf:definition} Random Variable
:label: def-3-1-1
:enumerator: 3.1.1

Let $S$ be the sample space for an experiment. A real-valued function that is defined on $S$ is called a **random variable**.

::::

For example, in @exm-3-1-1 the number $X$ of heads in the 10 tosses is a random variable. Another random variable in that example is $Y = 10 − X$, the number of tails.

```{figure} images/fig-3-1.jpeg
:label: fig-3-1
:enumerator: 3.1
:align: center
:width: 50%

The event that at least one utility demand is high in @exm-3-1-3.
```

:::: {prf:example} Measuring a Person's Height
:label: exm-3-1-2
:enumerator: 3.1.2

Consider an experiment in which a person is selected at random from some population and her height in inches is measured. This height is a random variable.  

::::

:::: {prf:example} Demands for Utilities
:label: exm-3-1-3
:enumerator: 3.1.3

Consider the contractor in @exm-1-5-4 who is concerned about the demands for water and electricity in a new office complex. The sample space was pictured in @fig-1-5, and it consists of a collection of points of the form $(x, y)$, where $x$ is the demand for water and $y$ is the demand for electricity. That is, each point $s \in S$ is a pair $s = (x, y)$. One random variable that is of interest in this problem is the demand for water. This can be expressed as $X(s) = x$ when $s = (x, y)$. The possible values of $X$ are the numbers in the interval $[4, 200]$. Another interesting random variable is $Y$, equal to the electricity demand, which can be expressed as $Y(s) = y$ when $s = (x, y)$. The possible values of $Y$ are the numbers in the interval $[1, 150]$. A third possible random variable $Z$ is an indicator of whether or not at least one demand is high. Let $A$ and $B$ be the two events described in @exm-1-5-4. That is, $A$ is the event that water demand is at least 100, and $B$ is the event that electric demand is at least 115. Define

```{math}
:enumerated: false

Z(s) = \begin{cases}
1 &\text{if }s \in A \cup B, \\
0 &\text{if }s \notin A \cup B.
\end{cases}
```

The possible values of $Z$ are the numbers $0$ and $1$. The event $A \cup B$ is indicated in @fig-3-1.  

::::

(sec-3-1-2)=
# The Distribution of a Random Variable

When a probability measure has been specified on the sample space of an experiment, we can determine probabilities associated with the possible values of each random variable $X$. Let $C$ be a subset of the real line such that $\{X \in C\}$ is an event, and let $\Pr(X \in C)$ denote the probability that the value of $X$ will belong to the subset $C$. Then $\Pr(X \in C)$ is equal to the probability that the outcome $s$ of the experiment will be such that $X(s) \in C$. In symbols,

```{math}
:label: eq-3-1-1
:enumerator: 3.1.1

\Pr(X \in C) = \Pr(\{s: X(s) \in C\}).
```

:::: {prf:definition} Distribution
:label: def-3-1-2
:enumerator: 3.1.2

Let $X$ be a random variable. The distribution of $X$ is the collection of all probabilities of the form $\Pr(X \in C)$ for all sets $C$ of real numbers such that $\{X \in C\}$ is an event.

::::

It is a straightforward consequence of the definition of the distribution of $X$ that this distribution is itself a probability measure on the set of real numbers. The set $\{X \in C\}$ will be an event for every set $C$ of real numbers that most readers will be able to imagine.

```{figure} images/fig-3-2.jpeg
:label: fig-3-2
:enumerator: 3.2
:align: center
:width: 50%

The event that water demand is between 50 and 175 in @exm-3-1-5
```

:::: {prf:example} Tossing a Coin
:label: exm-3-1-4
:enumerator: 3.1.4

Consider again an experiment in which a fair coin is tossed 10 times, and let $X$ be the number of heads that are obtained. In this experiment, the possible values of $X$ are $0, 1, 2, \ldots, 10$. For each $x$, $\Pr(X = x)$ is the sum of the probabilities of all of the outcomes in the event $\{X = x\}$. Because the coin is fair, each outcome has the same probability $1/2^{10}$, and we need only count how many outcomes $s$ have $X(s) = x$. We know that $X(s) = x$ if and only if exactly $x$ of the 10 tosses are $H$. Hence, the number of outcomes $s$ with $X(s) = x$ is the same as the number of subsets of size $x$ (to be the heads) that can be chosen from the 10 tosses, namely, $\binom{10}{x}$, according to Definitions [-@def-1-8-1] and [-@def-1-8-2]. Hence,

```{math}
:enumerated: false

\Pr(X = x) = \binom{10}{x}\frac{1}{2^{10}} \; \text{ for }x = 0, 1, 2, \ldots, 10.
```

::::

:::: {prf:example} Demands for Utilities
:label: exm-3-1-5
:enumerator: 3.1.5

In @exm-1-5-4, we actually calculated some features of the distributions of the three random variables $X$, $Y$, and $Z$ defined in @exm-3-1-3. For example, the event $A$, defined as the event that water demand is at least 100, can be expressed as $A = \{X \geq 100\}$, and $\Pr(A) = 0.5102$. This means that $\Pr(X \geq 100) = 0.5102$. The distribution of $X$ consists of all probabilities of the form $\Pr(X \in C)$ for all sets $C$ such that $\{X \in C\}$ is an event. These can all be calculated in a manner similar to the calculation of $\Pr(A)$ in @exm-1-5-4. In particular, if $C$ is a subinterval of the interval $[4, 200]$, then

```{math}
:label: eq-3-1-2
:enumerator: 3.1.2

\Pr(X \in C) = \frac{
    (150-1) \times (\text{length of interval }C)
}{
    29,204
}.
```

For example, if $C$ is the interval $[50,175]$, then its length is 125, and $\Pr(X \in C) = 149 \times 125/29,204 = 0.6378$. The subset of the sample space whose probability was just calculated is drawn in @fig-3-2.

::::

The general definition of distribution in @def-3-1-2 is awkward, and it will be useful to find alternative ways to specify the distributions of random variables. In the remainder of this section, we shall introduce a few such alternatives.

(sec-3-1-3)=
# Discrete Distributions

:::: {prf:definition} Discrete Distribution / Random Variable
:label: def-3-1-3
:enumerator: 3.1.3

We say that a random variable $X$ has a **discrete distribution** or that $X$ is a **discrete random variable** if $X$ can take only a finite number $k$ of different values $x_1, \ldots, x_k$ or, at most, an infinite sequence of different values $x_1, x_2, \ldots$.

::::

Random variables that can take every value in an interval are said to have **continuous distributions** and are discussed in @sec-3-2.

:::: {prf:definition} Probability Mass Function / pmf / Support
:label: def-3-1-4
:enumerator: 3.1.4

If a random variable $X$ has a discrete distribution, the **probability mass function** (abbreviated **pmf**) of $X$ is defined as the function $f$ such that for every real number $x$,

```{math}
:enumerated: false

f(x) = \Pr(X = x).
```

The closure of the set $\{x \mid f(x) > 0\}$ is called the **support of (the distribution of) $X$**.

::::

:::: {prf:example} Demands for Utilities
:label: exm-3-1-6
:enumerator: 3.1.6

The random variable $Z$ in @exm-3-1-3 equals 1 if at least one of the utility demands is high, and $Z = 0$ if neither demand is high. Since $Z$ takes only two different values, it has a discrete distribution. Note that $\{s \mid Z(s) = 1\} = A \cup B$, where $A$ and $B$ are defined in @exm-1-5-4. We calculated $\Pr(A \cup B) = 0.65253$ in @exm-1-5-4. If $Z$ has pmf $f$, then

```{math}
:enumerated: false

f(z) = \begin{cases}
0.65253 &\text{if }z = 1, \\
0.34747 &\text{if }z = 0, \\
0 &\text{otherwise.}
\end{cases}
```

The support of $Z$ is the set $\{0, 1\}$, which has only two elements.

::::

:::: {prf:example} Tossing a Coin
:label: exm-3-1-7
:enumerator: 3.1.7

The random variable $X$ in @exm-3-1-4 has only 11 different possible values. Its pmf $f$ is given at the end of that example for the values $x = 0, \ldots, 10$ that constitute the support of $X$; $f(x) = 0$ for all other values of $x$.  

::::

Here are some simple facts about probability mass functions.

:::: {prf:theorem}
:label: thm-3-1-1
:enumerator: 3.1.1

Let $X$ be a discrete random variable with pmf $f$. If $x$ is not one of the possible values of $X$, then $f(x) = 0$. Also, if the sequence $x_1, x_2, \ldots$ includes all the possible values of $X$, then $\sum_{i=1}^{\infty}f(x_i) = 1$.

::::

A typical pmf is sketched in @fig-3-3, in which each vertical segment represents the value of $f(x)$ corresponding to a possible value $x$. The sum of the heights of the vertical segments in @fig-3-3 must be 1.

```{figure} images/fig-3-3.jpeg
:label: fig-3-3
:enumerator: 3.3
:align: center
:width: 50%

An example of a pmf
```

@thm-3-1-2 shows that the pmf of a discrete random variable characterizes its distribution, and it allows us to dispense with the general definition of distribution when we are discussing discrete random variables.

:::: {prf:theorem}
:label: thm-3-1-2
:enumerator: 3.1.2

If $X$ has a discrete distribution, the probability of each subset $C$ of the real line can be determined from the relation

$$
\Pr(X \in C) = \sum_{x_i \in C}f(x_i).
$$

::::

Some random variables have distributions that appear so frequently that the distributions are given names. The random variable $Z$ in @exm-3-1-6 is one such example.

:::: {prf:definition} Bernoulli Distribution / Random Variable
:label: def-3-1-5
:enumerator: 3.1.5

A random variable $Z$ that takes only two values $0$ and $1$ with $\Pr(Z = 1) = p$ has the **Bernoulli distribution** with parameter $p$. We also say that $Z$ is a **Bernoulli random variable** with parameter $p$.

::::

The $Z$ in @exm-3-1-6 has the Bernoulli distribution with parameter 0.65252. It is easy to see that the name of each Bernoulli distribution is enough to allow us to compute the pmf, which, in turn, allows us to characterize its distribution.

We conclude this section with illustrations of two additional families of discrete distributions that arise often enough to have names.

(sec-3-1-4)=
# Uniform Distributions on Integers

:::: {prf:example} Daily Numbers
:label: exm-3-1-8
:enumerator: 3.1.8

A popular state lottery game requires participants to select a three-digit number (leading $0$s allowed). Then three balls, each with one digit, are chosen at random from well-mixed bowls. The sample space here consists of all triples $(i_1, i_2, i_3)$ where $i_j \in \{0, \ldots, 9\}$ for $j = 1, 2, 3$. If $s = (i_1, i_2, i_3)$, define $X(s) = 100i_1 + 10i_2 + i_3$. For example, $X(0, 1, 5) = 15$. It is easy to check that $\Pr(X = x) = 0.001$ for each integer $x \in \{0, 1, \ldots, 999\}$.

::::

:::: {prf:definition} Uniform Distribution on Integers
:label: def-3-1-6
:enumerator: 3.1.6

Let $a \leq b$ be integers. Suppose that the value of a random variable $X$ is equally likely to be each of the integers $a, \ldots, b$. Then we say that $X$ has the **uniform distribution on the integers $a, \ldots, b$**.

::::

The $X$ in @exm-3-1-8 has the uniform distribution on the integers $0, 1, \ldots, 999$. A uniform distribution on a set of $k$ integers has probability $1/k$ on each integer. If $b > a$, there are $b − a + 1$ integers from $a$ to $b$ including $a$ and $b$. The next result follows immediately from what we have just seen, and it illustrates how the name of the distribution characterizes the distribution.

::: {#thm-3-1-3}

# Theorem 3.1.3

If $X$ has the uniform distribution on the integers $a, \ldots, b$, the pmf of $X$ is

$$
f(x) = \begin{cases}
\frac{1}{b-a+1} &\text{for }x = a, \ldots, b, \\
0 &\text{otherwise.}
\end{cases}
$$

:::

The uniform distribution on the integers $a, \ldots, b$ represents the outcome of an experiment that is often described by saying that one of the integers $a, \ldots, b$ is **chosen at random**. In this context, the phrase "at random" means that each of the $b − a + 1$ integers is equally likely to be chosen. In this same sense, it is not possible to choose an integer at random from the set of all positive integers, because it is not possible to assign the same probability to every one of the positive integers and still make the sum of these probabilities equal to 1. In other words, a uniform distribution cannot be assigned to an infinite sequence of possible values, but such a distribution can be assigned to any finite sequence.

**Note: Random Variables Can Have the Same Distribution without Being the Same Random Variable**. Consider two consecutive daily number draws as in @exm-3-1-8. The sample space consists of all 6-tuples $(i_1, \ldots, i_6)$, where the first three coordinates are the numbers drawn on the first day and the last three are the numbers drawn on the second day (all in the order drawn). If $s = (i_1, \ldots, i_6)$, let $X_1(s) = 100i_1 + 10i_2 + i_3$ and let $X_2(s) = 100i_4 + 10i_5 + i_6$. It is easy to see that $X_1$ and $X_2$ are different functions of $s$ and are not the same random variable. Indeed, there is only a small probability that they will take the same value. But they have the same distribution because they assume the same values with the same probabilities. If a businessman has 1000 customers numbered $0, \ldots, 999$, and he selects one at random and records the number $Y$, the distribution of $Y$ will be the same as the distribution of $X_1$ and of $X_2$, but $Y$ is not like $X_1$ or $X_2$ in any other way.

### Binomial Distributions

::: {#exm-3-1-9}

# Example 3.1.9: Defective Parts (p. 98)

Consider again @exm-2-2-5. In that example, a machine
produces a defective item with probability $p$ ($0 < p < 1$) and produces a nondefective item with probability $1 − p$. We assumed that the events that the different items were defective were mutually independent. Suppose that the experiment consists of examining $n$ of these items. Each outcome of this experiment will consist of a list of which items are defective and which are not, in the order examined. For example, we can let 0 stand for a nondefective item and 1 stand for a defective item. Then each outcome is a string of $n$ digits, each of which is 0 or 1. To be specific, if, say, $n = 6$, then some of the possible outcomes are

$$
\texttt{010010}, \texttt{100100}, \texttt{000011}, \texttt{110000}, \texttt{100001}, \texttt{000000}, \text{etc.}
$$ {#eq-3-1-3}

We will let $X$ denote the number of these items that are defective. Then the random variable $X$ will have a discrete distribution, and the possible values of $X$ will be $0, 1, 2, \ldots, n$. For example, the first four outcomes listed in @eq-3-1-3 all have $X(s) = 2$. The last outcome listed has $X(s) = 0$.

:::

@exm-3-1-9 is a generalization of @exm-2-2-5 with $n$ items inspected rather than just six, and rewritten in the notation of random variables. For $x = 0, 1, \ldots, n$, the probability of obtaining each particular ordered sequence of $n$ items containing exactly $x$ defectives and $n − x$ nondefectives is $p^x(1 − p)^{n−x}$, just as it was in @exm-2-2-5. Since there are $\binom{n}{x}$ different ordered sequences of this type, it follows that

$$
\Pr(X = x) = \binom{n}{x}p^x(1-p)^{n-x}.
$$

Therefore, the pmf of $X$ will be as follows:

$$
f(x) = \begin{cases}
\binom{n}{x}p^x(1-p)^{n-x} &\text{ for }x = 0, 1, \ldots, n, \\
0 &\text{otherwise.}
\end{cases}
$$ {#eq-3-1-4}

<!-- Stopping point 2023-09-22 -->

::: {#def-3-1-7}

# Definition 3.1.7: Binomial Distribution/Random Variable

The discrete distribution represented by the pmf in @eq-3-1-4 is called the **binomial distribution with parameters $n$ and $p$**. A random variable with this distribution is said to be a **binomial random variable with parameters $n$ and $p$**.

:::

The reader should be able to verify that the random variable $X$ in @exm-3-1-4, the number of heads in a sequence of 10 independent tosses of a fair coin, has the binomial distribution with parameters $10$ and $1/2$.

Since the name of each binomial distribution is sufficient to construct its pmf, it follows that the name is enough to identify the distribution. The name of each distribution includes the two parameters. The binomial distributions are very important in probability and statistics and will be discussed further in later chapters of this book.

A short table of values of certain binomial distributions is given at the end of this book. It can be found from this table, for example, that if $X$ has the binomial distribution with parameters $n = 10$ and $p = 0.2$, then $\Pr(X = 5) = 0.0264$ and $\Pr(X \geq 5) = 0.0328$.

As another example, suppose that a clinical trial is being run. Suppose that the probability that a patient recovers from her symptoms during the trial is $p$ and that the probability is $1 − p$ that the patient does not recover. Let $Y$ denote the number of patients who recover out of $n$ independent patients in the trial. Then the distribution of $Y$ is also binomial with parameters $n$ and $p$. Indeed, consider a general experiment that consists of observing $n$ independent repititions (trials) with only two possible results for each trial. For convenience, call the two possible results "success" and "failure." Then the distribution of the number of trials that result in success will be binomial with parameters $n$ and $p$, where $p$ is the probability of success on each trial.

**Note: Names of Distributions**. In this section, we gave names to several families of distributions. The name of each distribution includes any numerical parameters that are part of the definition. For example, the random variable $X$ in @exm-3-1-4 has the binomial distribution with parameters $10$ and $1/2$. It is a correct statement to say that $X$ has a binomial distribution or that $X$ has a discrete distribution, but such statements are only partial descriptions of the distribution of $X$. Such statements are not sufficient to name the distribution of $X$, and hence they are not sufficient as answers to the question "What is the distribution of $X$?" The same considerations apply to all of the named distributions that we introduce elsewhere in the book. When attempting to specify the distribution of a random variable by giving its name, one must give the full name, including the values of any parameters. Only the full name is sufficient for determining the distribution.

### Summary

A random variable is a real-valued function defined on a sample space. The distribution of a random variable $X$ is the collection of all probabilities $\Pr(X \in C)$ for all subsets $C$ of the real numbers such that $\{X \in C\}$ is an event. A random variable $X$ is discrete if there are at most countably many possible values for $X$. In this case, the distribution of $X$ can be characterized by the probability mass function pmf of $X$, namely, $f(x) = \Pr(X = x)$ for $x$ in the set of possible values. Some distributions are so famous that they have names. One collection of such named distributions is the collection of uniform distributions on finite sets of integers. A more famous collection is the collection of binomial distributions whose parameters are $n$ and $p$, where $n$ is a positive integer and $0 < p < 1$, having pmf @eq-3-1-4. The binomial distribution with parameters $n = 1$ and $p$ is also called the Bernoulli distribution with parameter $p$. The names of these distributions also characterize the distributions.

### Exercises

::: {#exr-3-1-1}

# Exercise 3.1.1

Suppose that a random variable $X$ has the uniform distribution on the integers $10, \ldots, 20$. Find the probability that $X$ is even.

:::

::: {#exr-3-1-2}

# Exercise 3.1.2

Suppose that a random variable $X$ has a discrete distribution with the following pmf:

$$
f(x) = \begin{cases}
cx &\text{for }x = 1, \ldots, 5, \\
0 &\text{otherwise.}
\end{cases}
$$

Determine the value of the constant $c$.

:::

::: {#exr-3-1-3}

# Exercise 3.1.3

Suppose that two balanced dice are rolled, and let $X$ denote the absolute value of the difference between the two numbers that appear. Determine and sketch the pmf of $X$.

:::

::: {#exr-3-1-4}

# Exercise 3.1.4

Suppose that a fair coin is tossed 10 times independently. Determine the pmf of the number of heads that will be obtained.

:::

::: {#exr-3-1-5}

# Exercise 3.1.5

Suppose that a box contains seven red balls and three
blue balls. If five balls are selected at random, without replacement, determine the pmf of the number of red balls that will be obtained.

:::

::: {#exr-3-1-6}

# Exercise 3.1.6

Suppose that a random variable $X$ has the binomial distribution with parameters $n = 15$ and $p = 0.5$. Find $\Pr(X < 6)$.

:::

::: {#exr-3-1-7}

# Exercise 3.1.7

Suppose that a random variable $X$ has the binomial distribution with parameters $n = 8$ and $p = 0.7$. Find $\Pr(X \geq 5)$ by using the table given at the end of this book. *Hint*: Use the fact that $\Pr(X \geq 5) = \Pr(Y \leq 3)$, where $Y$ has the binomial distribution with parameters $n = 8$ and $p = 0.3$.

:::

::: {#exr-3-1-8}

# Exercise 3.1.8

If 10 percent of the balls in a certain box are red, and if 20 balls are selected from the box at random, with replacement, what is the probability that more than three red balls will be obtained?

:::

::: {#exr-3-1-9}

# Exercise 3.1.9

Suppose that a random variable $X$ has a discrete distribution with the following pmf:

$$
f(x) = \begin{cases}
\frac{c}{2^x} &\text{for }x = 0, 1, 2, \ldots, \\
0 &\text{otherwise.}
\end{cases}
$$

Find the value of the constant $c$.

:::

::: {#exr-3-1-10}

# Exercise 3.1.10

A civil engineer is studying a left-turn lane that is long enough to hold seven cars. Let $X$ be the number of cars in the lane at the end of a randomly chosen red light. The engineer believes that the probability that $X = v$ is proportional to $(v + 1)(8 − v)$ for $v = 0, \ldots, 7$ (the possible values of $X$).

a. Find the pmf of $X$.
b. Find the probability that $X$ will be at least 5.

:::

::: {#exr-3-1-11}

# Exercise 3.1.11

Show that there does not exist any number $c$ such that the following function would be a pmf:

$$
f(v) = \begin{cases}
\frac{c}{v} &\text{for }v = 1, 2, \ldots, \\
0 &\text{otherwise.}
\end{cases}
$$

:::
