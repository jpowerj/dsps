(sec-3-4)=
# Bivariate Distributions

*We generalize the concept of distribution of a random variable to the joint distribution of two random variables. In doing so, we introduce the joint pmf for two discrete random variables, the joint pdf for two continuous random variables, and the joint CDF for any two random variables. We also introduce a joint hybrid of pmf and pdf for the case of one discrete random variable and one continuous random variable.*

:::: {prf:example} Demands for Utilities
:label: exm-3-4-1
:enumerator: 3.4.1

In @exm-3-1-5, we found the distribution of the random variable $X$ that represented the demand for water. But there is another random variable, $Y$, the demand for electricity, that is also of interest. When discussing two random variables at once, it is often convenient to put them together into an ordered pair, $(X, Y)$. As early as @exm-1-5-4, we actually calculated some probabilities associated with the pair $(X, Y)$. In that example, we defined two events $A$ and $B$ that we now can express as $A = \{X \geq 115\}$ and $B = \{Y \geq 110\}$. In @exm-1-5-4, we computed $\Pr(A \cap B)$ and $\Pr(A \cup B)$. We can express $A \cap B$ and $A \cup B$ as events involving the pair $(X, Y)$. For example, define the set of ordered pairs $C = \{(x, y) \mid x \geq 115\text{ and }y \geq 110\}$ so that that the event $\{(X, Y) \in C\} = A \cap B$. That is, the event that the pair of random variables lies in the set $C$ is the same as the intersection of the two events $A$ and $B$. In @exm-1-5-4, we computed $\Pr(A \cap B) = 0.1198$. So, we can now assert that $\Pr((X, Y) \in C) = 0.1198$.

::::

:::: {prf:definition} Joint / Bivariate Distribution
:label: def-3-4-1
:enumerator: 3.4.1

Let $X$ and $Y$ be random variables. The **joint distribution** or **bivariate distribution** of $X$ and $Y$ is the collection of all probabilities of the form $\Pr\left( (X, Y) \in C\right)$ for all sets $C$ of pairs of real numbers such that $\{ (X, Y) \in C\}$ is an event.

::::

It is a straightforward consequence of the definition of the joint distribution of $X$ and $Y$ that this joint distribution is itself a probability measure on the set of ordered pairs of real numbers. The set $\{ (X, Y) \in C\}$ will be an event for every set $C$ of pairs of real numbers that most readers will be able to imagine.

In this section and the next two sections, we shall discuss convenient ways to characterize and do computations with bivariate distributions. In @sec-3-7, these considerations will be extended to the joint distribution of an arbitrary finite number of random variables.

(sec-3-4-1)=
# Discrete Joint Distributions

:::: {prf:example} Theater Patrons
:label: exm-3-4-2
:enumerator: 3.4.2

Suppose that a sample of 10 people is selected at random from a theater with 200 patrons. One random variable of interest might be the number $X$ of people in the sample who are over 60 years of age, and another random variable might be the number $Y$ of people in the sample who live more than 25 miles from the theater. For each ordered pair $(x, y)$ with $x = 0, \ldots, 10$ and $y = 0, \ldots, 10$, we might wish to compute $\Pr( (X, Y) = (x, y))$, the probability that there are $x$ people in the sample who are over 60 years of age and there are $y$ people in the sample who live more than 25 miles away.

::::

:::: {prf:definition} Discrete Joint Distribution
:label: def-3-4-2
:enumerator: 3.4.2

Let $X$ and $Y$ be random variables, and consider the ordered pair $(X, Y)$. If there are only finitely or at most countably many different possible values $(x, y)$ for the pair $(X, Y)$, then we say that $X$ and $Y$ have a **discrete joint distribution**.

::::

The two random variables in @exm-3-4-2 have a discrete joint distribution.

:::: {prf:theorem}
:label: thm-3-4-1
:enumerator: 3.4.1

Suppose that two random variables $X$ and $Y$ each have a discrete distribution. Then $X$ and $Y$ have a discrete joint distribution.

::: {.proof}
If both $X$ and $Y$ have only finitely many possible values, then there will be only a finite number of different possible values $(x, y)$ for the pair $(X, Y)$. On the other hand, if either $X$ or $Y$ or both can take a countably infinite number of possible values, then there will also be a countably infinite number of possible values for the pair $(X, Y)$. In all of these cases, the pair $(X, Y)$ has a discrete joint distribution.
:::

::::

When we define continuous joint distribution shortly, we shall see that the obvious analog of @thm-3-4-1 is not true.

:::: {prf:definition} Joint Probability Mass Function (pmf)
:label: def-3-4-3
:enumerator: 3.4.3

The **joint probability mass function**, or the **joint pmf**, of $X$ and $Y$ is defined as the function $f$ such that for every point $(x, y)$ in the $xy$-plane,

$$
f(x, y) = \Pr(X = x\text{ and }Y = y).
$$

::::

The following result is easy to prove because there are at most countably many pairs $(x, y)$ that must account for all of the probability a discrete joint distribution.

:::: {prf:theorem}
:label: thm-3-4-2
:enumerator: 3.4.2

Let $X$ and $Y$ have a discrete joint distribution,
<!-- Added, jpj, 2023-09-28 -->
and let $\mathcal{R}_{(X,Y)} = \mathcal{R}_X \times \mathcal{R}_Y$, that is, all possible ordered pairs of values where the first element in the pair is in $\mathcal{R}_X$ and the second element in the pair is in $\mathcal{R}_Y$.

If $(x, y)$ is not one of the possible values of the pair $(X, Y)$, then $f(x, y) = 0$. Also,

$$
\sum_{(x,y) \in \mathcal{R}_{(X,Y)}}f(x,y) = 1.
$$

Finally, for each set $C$ of ordered pairs,

$$
\Pr\left( (X,Y) \in C \right) = \sum_{(x,y) \in C}f(x,y).
$$

::::

:::: {prf:example} Specifying a Discrete Joint Distribution by a Table of Probabilities
:label: exm-3-4-3
:enumerator: 3.4.3

In a certain suburban area, each household reported the number of cars and the number of television sets that they owned. Let $X$ stand for the number of cars owned by a randomly selected household in this area. Let $Y$ stand for the number of television sets owned by that same randomly selected household. In this case, $X$ takes only the values 1, 2, and 3; $Y$ takes only the values 1, 2, 3, and 4; and the joint pmf $f$ of $X$ and $Y$ is as specified in @tbl-3-2

```{list-table}
:header-rows: 1
:label: tbl-3-2
:enumerator: 3.2

* - 
  - 
  - 
  - $y$
  - 
* - $x$
  - **1**
  - **2**
  - **3**
  - **4**
* - **1**
  - 0.1
  - 0.0
  - 0.1
  - 0.0
* - **2**
  - 0.3
  - 0.0
  - 0.1
  - 0.2
* - **3**
  - 0.0
  - 0.2
  - 0.0
  - 0.0
```

This joint pmf is sketched in @fig-3-10. We shall determine the probability that the randomly selected household owns at least two of both cars and televisions. In symbols, this is $\Pr(X \geq 2\text{ and }Y \geq 2)$.

By summing $f(x, y)$ over all values of $x \geq 2$ and $y \geq 2$, we obtain the value

$$
\begin{align*}
Pr(X \geq 2\text{ and }Y \geq 2) &= f(2, 2) + f (2, 3) + f (2, 4) + f (3, 2) \\
&\phantom{=} + f(3, 3) + f (3, 4) \\
&= 0.5.
\end{align*}
$$

Next, we shall determine the probability that the randomly selected household owns exactly one car, namely $\Pr(X = 1)$. By summing the probabilities in the first row of the table, we obtain the value

$$
\Pr(X = 1) = \sum_{y = 1}^{4}f(1,y) = 0.2.
$$

::::

```{figure} images/fig-3-10.jpeg
:label: fig-3-10
:enumerator: 3.10
:align: center
:width: 50%

The joint pmf of $X$ and $Y$ in @exm-3-4-3
```

(sec-3-4-2)=
# Continuous Joint Distributions

:::: {prf:example} Demands for Utilities
:label: exm-3-4-4
:enumerator: 3.4.4

Consider again the joint distribution of $X$ and $Y$ in @exm-3-4-1. When we first calculated probabilities for these two random variables back in @exm-1-5-4 (even before we named them or called them random variables), we assumed that the probability of each subset of the sample space was proportional to the area of the subset. Since the area of the sample space is 29,204, the probability that the pair $(X, Y)$ lies in a region $C$ is the area of $C$ divided by 29,204. We can also write this relation as

```{math}
:label: eq-3-4-1
:enumerator: 3.4.1

\Pr((X,Y) \in C) = \int_C\int \frac{1}{29204}~dx~dy,
```

assuming that the integral exists.

::::

If one looks carefully at @eq-3-4-1, one will notice the similarity to @eq-3-2-2 and @eq-3-2-1. We formalize this connection as follows.

:::: {prf:definition} Continuous Joint Distribution / Joint pdf / Support
:label: def-3-4-4
:enumerator: 3.4.4

Two random variables $X$ and $Y$ have a **continuous joint distribution** if there exists a nonnegative function $f$ defined over the entire $xy$-plane such that for every subset $C$ of the plane,

$$
\Pr\left[(X,Y) \in C\right] = \int_C\int f(x,y)~dx~dy,
$$

if the integral exists. The function $f$ is called the **joint probability density function** (abbreviated **joint pdf**) of $X$ and $Y$. The closure of the set $\{(x, y) \mid f(x, y) > 0\}$ is called the **support of (the distribution of)** $(X, Y)$.

::::

:::: {prf:example} Demands for Utilities
:label: exm-3-4-5

In @exm-3-4-4, it is clear from @eq-3-4-1 that the joint pdf of $X$ and $Y$ is the function

$$
f(x,y) = \begin{cases}
\frac{1}{29204} &\text{for }4 \leq x \leq 200 \text{ and }1 \leq y \leq 150, \\
0 &\text{otherwise.}
\end{cases}
$$

::::

It is clear from @def-3-4-4 that the joint pdf of two random variables characterizes their joint distribution. The following result is also straightforward.

:::: {prf:theorem}
:label: thm-3-4-3
:enumerator: 3.4.3

A joint PDF must satisfy the following two conditions:

$$
f(x,y) \geq 0\text{ for }-\infty < x < \infty\text{ and }-\infty < y < \infty,
$$

and

$$
\int_{-\infty}^{\infty}\int_{-\infty}^{\infty}f(x,y)\, dx \, dy = 1.
$$

::::

Any function that satisfies the two displayed formulas in @thm-3-4-3 is the joint pdf for some probability distribution.

An example of the graph of a joint pdf is presented in @fig-3-11.

The total volume beneath the surface $z = f(x, y)$ and above the $xy$-plane must be 1. The probability that the pair $(X, Y)$ will belong to the rectangle $C$ is equal to the volume of the solid figure with base $A$ shown in @fig-3-11. The top of this solid figure is formed by the surface $z = f(x, y)$.

In @sec-3-5, we will show that if $X$ and $Y$ have a continuous joint distribution, then $X$ and $Y$ each have a continuous distribution when considered separately. This seems reasonable intutively. However, the converse of this statement is not true, and the following result helps to show why.

```{figure} images/fig-3-11.jpeg
:label: fig-3-11
:enumerator: 3.11
:align: center
:width: 50%

An example of a joint pdf
```

::: {.callout-caution title="Theorem 3.4.4"}
::: {#thm-3-4-4}

# Theorem 3.4.4

For every continuous joint distribution on the $xy$-plane, the following two statements hold:

i. Every individual point, and every infinite sequence of points, in the $xy$-plane has probability 0.
ii. Let $f$ be a continuous function of one real variable defined on a (possibly unbounded) interval $(a, b)$. The sets $\{(x, y) \mid y = f(x), a < x < b\}$ and $\{(x, y) \mid x = f(y), a < y < b\}$ have probability 0.

::: {.proof}
According to @def-3-4-4, the probability that a continuous joint distribution assigns to a specified region of the $xy$-plane can be found by integrating the joint pdf $f(x, y)$ over that region, if the integral exists. If the region is a single point, the integral will be 0. By Axiom 3 of probability, the probability for any countable collection of points must also be 0. The integral of a function of two variables over the graph of a continuous function in the $xy$-plane is also 0.
:::

:::
:::

<!-- Stopping point 2023-10-10, 12:15am -->

::: {.callout-tip title="Example 3.4.6"}
::: {#exm-3-4-6}

# Example 3.4.6: Not a Continuous Joint Distribution

It follows from (ii) of @thm-3-4-4 that the probability that $(X, Y)$ will lie on each specified straight line in the plane is 0. If $X$ has a continuous distribution and if $Y = X$, then both $X$ and $Y$ have continuous distributions, but the probability is 1 that $(X, Y)$ lies on the straight line $y = x$. Hence, $X$ and $Y$ cannot have a continuous joint distribution.

:::
:::

::: {.callout-tip title="Example 3.4.7"}
::: {#exm-3-4-7}

# Example 3.4.7: Calculating a Normalizing Constant

Suppose that the joint pdf of $X$ and $Y$ is specified as follows:

$$
f(x, y) = \begin{cases}
cx^2y &\text{for }x^2 \leq y \leq 1, \\
0 &\text{otherwise.}
\end{cases}
$$

We shall determine the value of the constant $c$.

The support $S$ of $(X, Y)$ is sketched in @fig-3-12. Since $f(x, y) = 0$ outside $S$, it
follows that

$$
\begin{align*}
\int_{-\infty}^{\infty}\int_{-\infty}^{\infty}f(x, y) dx dy &= \int_{S}\int f(x, y) dx \, dy \\
&= \int_{-1}^{1}\int_{x^2}^{1}cx^2y dy dx = \frac{4}{21}c.
\end{align*}
$$ {#eq-3-4-3}

Since the value of this integral must be 1, the value of $c$ must be $21/4$.

The limits of integration on the last integral in #eq-3-4-3 were determined as follows. We have our choice of whether to integrate $x$ or $y$ as the inner integral, and we chose $y$. So, we must find, for each $x$, the interval of $y$ values over which to integrate. From @fig-3-12, we see that, for each $x$, $y$ runs from the curve where $y = x^2$ to the line where $y = 1$. The interval of $x$ values for the outer integral is from $−1$ to $1$ according to @fig-3-12. If we had chosen to integrate $x$ on the inside, then for each $y$, we see that $x$ runs from $-\sqrt{y}$ to $\sqrt{y}$, while $y$ runs from 0 to 1. The final answer would have been the same.

:::
:::

::: {.callout-tip title="Example 3.4.8"}
::: {#exm-3-4-8}

# Example 3.4.8: Calculating Probabilities from a Joint pdf

For the joint distribution in @exm-3-4-7, we shall now determine the value of $\Pr(X \geq Y)$.

The subset $S_0$ of $S$ where $x \geq y$ is sketched in @fig-3-13. Hence,

$$
\Pr(X \geq Y) = \int_{S_0}\int f(x, y) \, dx \, dy = \int_{0}^{1}\int_{x^2}^{x}\frac{21}{4}x^2y \, dy \, dx = \frac{3}{20}.
$$

:::
:::

![The support $S$ of $(X, Y)$ in @exm-3-4-8.](ch03/images/fig-3-12.svg){#fig-3-12}

![The subset $S_0$ of the support $S$ where $x \geq y$ in @exm-3-4-8.](ch03/images/fig-3-13.svg){#fig-3-13}

::: {.callout-tip title="Example 3.4.9"}
::: {#exm-3-4-9}

# Example 3.4.9: Determining a Joint pdf by Geometric Methods.

Suppose that a point $(X, Y)$ is selected at random from inside the circle $x^2 + y^2 \leq 9$. We shall determine the joint pdf of $X$ and $Y$.

The support of $(X, Y)$ is the set $S$ of points on and inside the circle $x^2 + y^2 \leq 9$. The statement that the point $(X, Y)$ is selected at random from inside the circle is interpreted to mean that the joint pdf of $X$ and $Y$ is constant over $S$ and is 0 outside $S$. Thus,

$$
f(x, y) = \begin{cases}
c &\text{for }(x, y) \in S, \\
0 &\text{otherwise.}
\end{cases}
$$

We must have

$$
\int_{S}\int f(x, y) \, dx \, dy = c \times \text{(area of }S\text{)} = 1.
$$

Since the area of the circle $S$ is $9\pi$, the value of the constant $c$ must be $1/(9\pi)$.

:::
:::

(sec-3-4-3)=
# Mixed Bivariate Distributions

::: {.callout-tip title="Example 3.4.10"}
::: {#exm-3-4-10}

# Example 3.4.10: A Clinical Trial

Consider a clinical trial (such as the one described in @exm-2-1-12) in which each patient with depression receives a treatment and is followed to see whether they have a relapse into depression. Let $X$ be the indicator of whether or not the first patient is a "success" (no relapse). That is $X = 1$ if the patient does not relapse and $X = 0$ if the patient relapses. Also, let $P$ be the proportion of patients who have no replapse among all patients who might receive the treatment. It is clear that $X$ must have a discrete distribution, but it might be sensible to think of $P$ as a continuous random variable taking its value anywhere in the interval $[0, 1]$. Even though $X$ and $P$ can have neither a joint discrete distribution nor a joint continuous distribution, we can still be interested in the joint distribution of $X$ and $P$.  

:::
:::

Prior to @exm-3-4-10, we have discussed bivariate distributions that were either discrete or continuous. Occasionally, one must consider a mixed bivariate distribution in which one of the random variables is discrete and the other is continuous. We shall use a function $f(x, y)$ to characterize such a joint distribution in much the
same way that we use a joint pmf to characterize a discrete joint distribution or a joint pdf to characterize a continuous joint distribution.

::: {.callout-note title="Definition 3.4.5"}
::: {#def-3-4-5}

# Definition 3.4.5: Joint pmf/pdf

Let $X$ and $Y$ be random variables such that $X$ is discrete and $Y$ is continuous. Suppose that there is a function $f(x, y)$ defined on the $xy$-plane such that, for every pair $A$ and $B$ of subsets of the real numbers,

$$
\Pr(X \in A \text{ and } Y \in B) = \int_{B}\sum_{x \in A}f(x,y) \, dy,
$$ {#eq-3-4-4}

if the integral exists. Then the function $f$ is called the *joint pmf/pdf* of $X$ and $Y$.

:::
:::

Clearly, @def-3-4-5 can be modified in an obvious way if $Y$ is discrete and $X$ is continuous. Every joint pmf/pdf must satisfy two conditions. If $X$ is the discrete random variable with possible values $x_1, x_2, \ldots$ and $Y$ is the continuous random variable, then $f(x, y) \geq 0$ for all $x$, $y$ and

$$
\int_{-\infty}^{\infty}\sum_{i=1}^{\infty} f(x_i, y) \, dy = 1.
$$ {#eq-3-4-5}

Because $f$ is nonnegative, the sum and integral in Eqs. [-@eq-3-4-4] and [-@eq-3-4-5] can be done in whichever order is more convenient.

**Note: Probabilities of More General Sets.** For a general set $C$ of pairs of real numbers, we can compute $\Pr((X, Y) \in C)$ using the joint pmf/pdf of $X$ and $Y$. For each $x$, let $C_x = \{y \mid (x, y) \in C\}$. Then

$$
\Pr((X, Y) \in C) = \sum_{\text{All }x}\int_{C_x}f(x, y)\, dy,
$$

if all of the integrals exist. Alternatively, for each $y$, define $C^y = \{x \mid (x, y) \in C\}$, and
then

$$
\Pr((X, Y) \in C) = \int_{-\infty}^{\infty}\left[ \sum_{x \in C^y}f(x, y) \right]dy,
$$

if the integral exists.

::: {.callout-tip title="Example 3.4.11"}
::: {#exm-3-4-11}

# Example 3.4.11: A Joint pmf/pdf

Suppose that the joint pmf/pdf of $X$ and $Y$ is

$$
f(x, y) = \frac{xy^{x-1}}{3}, \; \text{ for }x = 1, 2, 3\text{ and }0 < y < 1.
$$

We should check to make sure that this function satisfies @eq-3-4-5. It is easier to integrate over the $y$ values first, so we compute

$$
\sum_{x=1}^{3}\int_{0}^{1}\frac{xy^{x-1}}{3} \, dy = \sum_{x=1}^{3}\frac{1}{3} = 1.
$$

Suppose that we wish to compute the probability that $Y \geq 1/2$ and $X \geq 2$. That is, we want $\Pr(X \in A \text{ and } Y \in B)$ with $A = [2, \infty)$ and $B = [1/2, \infty)$. So, we apply @eq-3-4-4 to get the probability

$$
\sum_{x=2}^{3}\int_{1/2}^{1}\frac{xy^{x-1}}{3} \, dy = \sum_{x=2}^{3}\left(\frac{1 - (1/2)^x}{3}\right) = 0.5417.
$$

For illustration, we shall compute the sum and integral in the other order also. For each $y \in [1/2, 1)$, $\sum_{x=2}^{3}f(x,y) = 2y/3 + y^2$. For $y \geq 1/2$, the sum is 0. So, the probability is

$$
\int_{1/2}^{1}\left[\frac{2}{3}y + y^2\right]dy = \frac{1}{3}\left[1 - \left(\frac{1}{2}\right)^2\right] + \frac{1}{3}\left[1 - \left(\frac{1}{2}\right)^3\right] = 0.5417.
$$

:::
:::

::: {.callout-tip title="Example 3.4.12"}
::: {#exm-3-4-12}

# Example 3.4.12: A Clinical Trial.

A possible joint pmf/pdf for $X$ and $P$ in @exm-3-4-10 is

$$
f(x, p) = p^x(1-p)^{1-x}, \; \text{ for }x = 0, 1\text{ and }0 < p < 1.
$$

Here, $X$ is discrete and $P$ is continuous. The function $f$ is nonnegative, and the reader should be able to demonstrate that it satisfies @eq-3-4-5. Suppose that we wish to compute $\Pr(X \leq 0 \text{ and } P \leq 1/2)$. This can be computed as

$$
\int_{0}^{1/2}(1 - p) \, dp = -\frac{1}{2}\left[ (1 - 1/2)^2 - (1 - 0)^2 \right] = \frac{3}{8}.
$$

Suppose that we also wish to compute $\Pr(X = 1)$. This time, we apply @eq-3-4-4 with $A = \{1\}$ and $B = (0, 1)$. In this case,

$$
\Pr(X = 1) = \int_{0}^{1}p \, dp = \frac{1}{2}.
$$

:::
:::

A more complicated type of joint distribution can also arise in a practical problem.

::: {.callout-tip title="Example 3.4.13"}
::: {#exm-3-4-13}

# Example 3.4.13: A Complicated Joint Distribution

Suppose that $X$ and $Y$ are the times at which two specific components in an electronic system fail. There might be a certain probability $p$ ($0 < p < 1$) that the two components will fail at the same time and a certain probability $1 − p$ that they will fail at different times. Furthermore, if they fail at the same time, then their common failure time might be distributed according to a certain pdf $f(x)$; if they fail at different times, then these times might be distributed according to a certain joint pdf $g(x, y)$.

The joint distribution of $X$ and $Y$ in this example is not continuous, because there is positive probability $p$ that $(X, Y)$ will lie on the line $x = y$. Nor does the joint distribution have a joint pmf/pdf or any other simple function to describe it. There are ways to deal with such joint distributions, but we shall not discuss them in this
text.

:::
:::

(sec-3-4-4)=
# Bivariate Cumulative Distribution Functions

The first calculation in @exm-3-4-12, namely, $\Pr(X \leq 0 \text{ and } Y \leq 1/2)$, is a generalization of the calculation of a CDF to a bivariate distribution. We formalize the generalization as follows.

```{figure} images/fig-3-14.svg
:label: fig-3-14
:enumerator: 3.14
:align: center
:width: 50%

The probability of a rectangle
```

::: {.callout-note title="Definition 3.4.6"}
::: {#def-3-4-6}

# Definition 3.4.6: Joint (Cumulative) Distribution Function/CDF

The *joint Cumulative Distribution Function* (*joint CDF*) of two random variables $X$ and $Y$ is defined as the function $F$ such that for all values of $x$ and $y$ ($-\infty < x < \infty$ and $-\infty < y < \infty$),

$$
F(x, y) = \Pr(X \leq x \text{ and }Y \leq y).
$$

:::
:::

It is clear from @def-3-4-6 that $F(x, y)$ is monotone increasing in $x$ for each fixed $y$ and is monotone increasing in $y$ for each fixed $x$.

If the joint CDF of two arbitrary random variables $X$ and $Y$ is $F$, then the probability that the pair $(X, Y)$ will lie in a specified rectangle in the $xy$-plane can be found from $F$ as follows: For given numbers $a < b$ and $c < d$,

$$
\begin{align*}
\Pr&(a < X \leq b \text{ and }c < Y \leq d) \\
&= \Pr(a < X \leq b \text{ and }Y \leq d) - \Pr(a < X \leq b \text{ and }Y \leq c) \\
&= \left[\Pr(X \leq b \text{ and } Y \leq d) - \Pr(X \leq a \text{ and }Y \leq d)\right] \\
&\phantom{\Pr} - \left[\Pr(X \leq b \text{ and }Y \leq c) - \Pr(X \leq a \text{ and }Y \leq c)\right] \\
&= F(b, d) - F(a, d) - F(b, c) + F(a, c).
\end{align*}
$$

Hence, the probability of the rectangle $C$ sketched in @fig-3-14 is given by the combination of values of $F$ just derived. It should be noted that two sides of the rectangle are included in the set $C$ and the other two sides are excluded. Thus, if there are points or line segments on the boundary of $C$ that have positive probability, it is important to distinguish between the weak inequalities and the strict inequalities in @eq-3-4-6.

::: {.callout-caution title="Theorem 3.4.5"}
::: {#thm-3-4-5}

# Theorem 3.4.5

Let $X$ and $Y$ have a joint CDF $F$. The CDF $F_1$ of just the single random variable $X$ can be derived from the joint CDF $F$ as $F_1(x) = \lim_{y \rightarrow \infty} F(x, y)$. Similarly, the CDF $F_2$ of $Y$ equals $F_2(y) = \lim_{x \rightarrow \infty} F(x, y)$, for $0 < y < \infty$.

::: {.proof}

We prove the claim about $F_1$ as the claim about $F_2$ is similar. Let $-\infty < x < \infty$. Define

$$
\begin{align*}
B_0 &= \{ X \leq x \text{ and } Y \leq 0 \}, \\
B_n &= \{ X \leq x \text{ and } n-1 < Y \leq n \}, \; \text{ for }n = 1, 2, \ldots, \\
A_m &= \bigcup_{n=0}^{m}B_n, \; \text{ for }m = 1, 2, \ldots.
\end{align*}
$$

Then $\{X \leq x\} = \bigcup_{n=0}^{\infty}B_n$, and $A_m = \{X \leq x \text{ and }Y \leq m\}$ for $m = 1, 2, \ldots$. It follows that $\Pr(A_m) = F(x, m)$ for each $m$. Also,

$$
\begin{align*}
F_1(x) &= \Pr(X \leq x) = \Pr\left( \bigcup_{n=1}^{\infty}B_n \right) \\
&= \sum_{n=0}^{\infty}\Pr(B_n) = \lim_{m \rightarrow \infty} \Pr(A_m) \\
&= \lim_{m \rightarrow \infty}F(x, m) = \lim_{y \rightarrow \infty}F(x, y),
\end{align*}
$$

where the third equality follows from countable additivity and the fact that the $B_n$ events are disjoint, and the last equality follows from the fact that $F(x, y)$ is monotone increasing in $y$ for each fixed $x$.

:::

:::
:::

Other relationships involving the univariate distribution of $X$, the univariate distribution of $Y$, and their joint bivariate distribution will be presented in the next section.

Finally, if $X$ and $Y$ have a continuous joint distribution with joint pdf $f$, then the joint CDF at $(x, y)$ is

$$
F(x, y) = \int_{-\infty}^{y}\int_{-\infty}^{x}f(r, s)\, dr \, ds.
$$

Here, the symbols $r$ and $s$ are used simply as dummy variables of integration. The joint pdf can be derived from the joint CDF by using the relations

$$
f(x, y) = \frac{\partial^2 F(x, y)}{\partial x \partial y} = \frac{\partial^2F(x,y)}{\partial y \partial x}
$$

at every point $(x, y)$ at which these second-order derivatives exist.

::: {.callout-tip title="Example 3.4.14"}
::: {#exm-3-4-14}

# Example 3.4.14: Determining a Joint pdf from a Joint CDF

Suppose that $X$ and $Y$ are random variables that take values only in the intervals $0 \leq X \leq 2$ and $0 \leq Y \leq 2$. Suppose also that the joint CDF of $X$ and $Y$, for $0 \leq x \leq 2$ and $0 \leq y \leq 2$, is as follows:

$$
F(x, y) = \frac{1}{16}xy(x + y).
$$ {#eq-3-4-7}

We shall first determine the CDF $F_1$ of just the random variable $X$ and then determine the joint pdf $f$ of $X$ and $Y$.

The value of $F(x, y)$ at any point $(x, y)$ in the $xy$-plane that does not represent a pair of possible values of $X$ and $Y$ can be calculated from @eq-3-4-7 and the fact that $F(x, y) = \Pr(X \leq x \text{ and } Y \leq y)$. Thus, if either $x < 0$ or $y < 0$, then $F(x, y) = 0$. If both $x > 2$ and $y > 2$, then $F(x, y) = 1$. If $0 \leq x \leq 2$ and $y > 2$, then $F(x, y) = F(x, 2)$, and it follows from @eq-3-4-7 that

$$
F(x, y) = \frac{1}{8}x(x + 2).
$$

Similarly, if $0 \leq y \leq 2$ and $x > 2$, then

$$
F(x, y) = \frac{1}{8}y(y + 2).
$$

The function $F(x, y)$ has now been specified for every point in the xy-plane.

By letting $y \rightarrow \infty$, we find that the CDF of just the random variable $X$ is

$$
F_1(x) = \begin{cases}
0 &\text{for }x < 0, \\
\frac{1}{8}x(x + 2) &\text{for }0 \leq x \leq 2, \\
1 &\text{for }x > 2.
\end{cases}
$$

Furthermore, for $0 < x < 2$ and $0 < y < 2$,

$$
\frac{\partial^2 F(x, y)}{\partial x \partial y} = \frac{1}{8}(x + y).
$$

Also, if $x < 0$, $y < 0$, $x > 2$, or $y > 2$, then

$$
\frac{\partial^2 F(x, y)}{\partial x \partial y} = 0.
$$

Hence, the joint pdf of $X$ and $Y$ is

$$
f(x, y) = \begin{cases}
\frac{1}{8}(x + y) &\text{for }0 < x < 2 \text{ and }0 < y < 2, \\
0 &\text{otherwise.}
\end{cases}
$$

:::
:::

::: {.callout-tip title="Example 3.4.15"}
::: {#exm-3-4-15}

# Example 3.4.15: Demands for Utilities

We can compute the joint CDF for water and electric demand in @exm-3-4-4 by using the joint pdf that was given in @eq-3-4-2. If either $x \leq 4$ or $y \leq 1$, then $F(x, y) = 0$ because either $X \leq x$ or $Y \leq y$ would be impossible. Similarly, if both $x \geq 200$ and $y \geq 150$, $F(x, y) = 1$ because both $X \leq x$ and $Y \leq y$ would be sure events. For other values of $x$ and $y$, we compute

$$
F(x, y) = \begin{cases}
\int_{4}^{x}\int_{1}^{y}\frac{1}{29204}\, dy \, dx = \frac{xy}{29204} &\text{for }4 \leq x \leq 200, 1 \leq y \leq 150, \\
\int_{4}^{x}\int_{1}^{150}\frac{1}{29204}\, dy \, dx = \frac{x}{196} &\text{for }4 \leq x \leq 200, y > 150, \\
\int_{4}^{200}\int_{1}^{y}\frac{1}{29204}\, dy \, dx = \frac{y}{149} &\text{for }x > 200, 1 \leq y \leq 150.
\end{cases}
$$

The reason that we need three cases in the formula for $F(x, y)$ is that the joint pdf in @eq-3-4-2 drops to 0 when $x$ crosses above 200 or when $y$ crosses above 150; hence, we never want to integrate $1/29204$ beyond $x = 200$ or beyond $y = 150$. If one takes the limit as $y \rightarrow \infty$ of $F(x, y)$ (for fixed $4 \leq x \leq 200$), one gets the second case in the formula above, which then is the CDF of $X$, $F_1(x)$. Similarly, if one takes the $\lim_{x \rightarrow \infty} F(x, y)$ (for fixed $1 \leq y \leq 150$), one gets the third case in the formula, which then is the CDF of $Y$, $F_2(y)$.

:::
:::

### Summary

The joint CDF of two random variables $X$ and $Y$ is $F(x, y) = \Pr(X \leq x \text{ and } Y \leq y)$. The joint pdf of two continuous random variables is a nonnegative function $f$ such that the probability of the pair $(X, Y)$ being in a set $C$ is the integral of $f(x, y)$ over the set $C$, if the integral exists. The joint pdf is also the second mixed partial derivative of the joint CDF with respect to both variables. The joint pmf of two discrete random variables is a nonnegative function $f$ such that the probability of the pair $(X, Y)$ being in a set $C$ is the sum of $f(x, y)$ over all points in $C$. A joint pmf can be strictly positive at countably many pairs $(x, y)$ at most. The joint pmf/pdf of a discrete random variable $X$ and a continuous random variable $Y$ is a nonnegative function $f$ such that the probability of the pair $(X, Y)$ being in a set $C$ is obtained by summing $f(x, y)$ over all $x$ such that $(x, y) \in C$ for each $y$ and then integrating the resulting function of $y$.

### Exercises

::: {#exr-3-4-1}

# Exercise 3.4.1

Suppose that the joint pdf of a pair of random variables $(X, Y)$ is constant on the rectangle where $0 \leq x \leq 2$ and $0 \leq y \leq 1$, and suppose that the pdf is 0 off of this rectangle.

a. Find the constant value of the pdf on the rectangle.
b. Find $\Pr(X \geq Y)$.

:::

:::: {exercise}
:label: exr-3-4-2
:enumerator: 3.4.2
::: {.exr-head}
## Exercise 3.4.2
:::

Suppose that in an electric display sign there are three light bulbs in the first row and four light bulbs in the second row. Let $X$ denote the number of bulbs in the first row that will be burned out at a specified time $t$, and let $Y$ denote the number of bulbs in the second row that will be burned out at the same time $t$. Suppose that the joint pmf of $X$ and $Y$ is as specified in the following table:

<table>
<thead>
<tr>
<th></th>
<th colspan="5" align="center" style="border-bottom: 1px solid black;"><span data-qmd="$Y$"></span></th>
</tr>
</thead>
<tbody>
<tr>
    <td><span data-qmd="$X$"></span></td>
    <td align="center">0</td>
    <td align="center">1</td>
    <td align="center">2</td>
    <td align="center">3</td>
    <td align="center">4</td>
</tr>
<tr>
    <td>0</td>
    <td>0.08</td>
    <td>0.07</td>
    <td>0.06</td>
    <td>0.01</td>
    <td>0.01</td>
</tr>
<tr>
    <td>1</td>
    <td>0.06</td>
    <td>0.10</td>
    <td>0.12</td>
    <td>0.05</td>
    <td>0.02</td>
</tr>
<tr>
    <td>2</td>
    <td>0.05</td>
    <td>0.06</td>
    <td>0.09</td>
    <td>0.04</td>
    <td>0.03</td>
</tr>
<tr>
    <td>3</td>
    <td>0.02</td>
    <td>0.03</td>
    <td>0.03</td>
    <td>0.03</td>
    <td>0.04</td>
</tr>
</tbody>
</table>

Determine each of the following probabilities:

* a. $\Pr(X = 2)$
* b. $\Pr(Y \geq 2)$
* c. $\Pr(X \leq 2 \text{ and } Y \leq 2)$
* d. $\Pr(X = Y)$
* e. $\Pr(X > Y)$

::::

::: {#exr-3-4-3}

# Exercise 3.4.3

Suppose that $X$ and $Y$ have a discrete joint distribution for which the joint pmf is defined as follows:

$$
f(x, y) = \begin{cases}
c|x + y| &\text{for }x = -2, -1, 0, 1, 2\text{ and }y = -2, -1, 0, 1, 2, \\
0 &\text{otherwise.}
\end{cases}
$$

Determine

(a) the value of the constant $c$;
(b) $\Pr(X = 0 \text{ and } Y = −2)$;
(c) $\Pr(X = 1)$;
(d) $\Pr(|X − Y| \leq 1)$.

:::

::: {#exr-3-4-4}

# Exercise 3.4.4

Suppose that $X$ and $Y$ have a continuous joint distribution for which the joint pdf is defined as follows:

$$
f(x, y) = \begin{cases}
cy^2 &\text{for }0 \leq x \leq 2 \text{ and }0 \leq y \leq 1, \\
0 &\text{otherwise.}
\end{cases}
$$

Determine

(a) the value of the constant $c$;
(b) $\Pr(X + Y > 2)$;
(c) $\Pr(Y < 1/2)$;
(d) $\Pr(X \leq 1)$;
(e) $\Pr(X = 3Y)$.

:::

::: {#exr-3-4-5}

# Exercise 3.4.5

Suppose that the joint pdf of two random variables $X$ and $Y$ is as follows:

$$
f(x, y) = \begin{cases}
c(x^2 + y) &\text{for }0 \leq y \leq 1 - x^2, \\
0 &\text{otherwise.}
\end{cases}
$$

Determine

(a) the value of the constant $c$;
(b) $\Pr(0 \leq X \leq 1/2)$;
(c) $\Pr(Y \leq X + 1)$;
(d) $\Pr(Y = X^2)$.

:::

::: {#exr-3-4-6}

# Exercise 3.4.6

Suppose that a point $(X, Y)$ is chosen at random from the region $S$ in the $xy$-plane containing all points $(x, y)$ such that $x \geq 0$, $y \geq 0$, and $4y + x \leq 4$.

a. Determine the joint pdf of $X$ and $Y$.
b. Suppose that $S_0$ is a subset of the region $S$ having area $\alpha$ and determine $\Pr[(X, Y) \in S_0]$.

:::

::: {#exr-3-4-7}

# Exercise 3.4.7

Suppose that a point $(X, Y)$ is to be chosen from the square $S$ in the $xy$-plane containing all points $(x, y)$ such that $0 \leq x \leq 1$ and $0 \leq y \leq 1$. Suppose that the probability that the chosen point will be the corner $(0, 0)$ is 0.1, the probability that it will be the corner $(1, 0)$ is 0.2, the probability that it will be the corner $(0, 1)$ is 0.4, and the probability that it will be the corner $(1, 1)$ is 0.1. Suppose also that if the chosen point is not one of the four corners of the square, then it will be an interior point of the square and will be chosen according to a constant pdf over the interior of the square. Determine

(a) $\Pr(X \leq 1/4)$
(b) $\Pr(X + Y \leq 1)$.

:::

::: {#exr-3-4-8}

# Exercise 3.4.8

Suppose that $X$ and $Y$ are random variables such that $(X, Y)$ must belong to the rectangle in the $xy$-plane containing all points $(x, y)$ for which $0 \leq x \leq 3$ and $0 \leq y \leq 4$. Suppose also that the joint CDF of $X$ and $Y$ at every point $(x, y)$ in this rectangle is specified as follows:

$$
F(x, y) = \frac{1}{156}xy(x^2 + y).
$$

Determine

(a) $\Pr(1 \leq X \leq 2 \text{ and } 1 \leq Y \leq 2)$;
(b) $\Pr(2 \leq X \leq 4 \text{ and } 2 \leq Y \leq 4)$;
(c) the CDF of $Y$;
(d) the joint pdf of $X$ and $Y$;
(e) $Pr(Y \leq X)$.

:::

::: {#exr-3-4-9}

# Exercise 3.4.9

In @exm-3-4-5, compute the probability that water demand $X$ is greater than electric demand $Y$.

:::

::: {#exr-3-4-10}

# Exercise 3.4.10

Let $Y$ be the rate (calls per hour) at which calls arrive at a switchboard. Let $X$ be the number of calls during a two-hour period. A popular choice of joint pmf/pdf for $(X, Y)$ in this example would be one like

$$
f(x, y) = \begin{cases}
\frac{(2y)^x}{x!}e^{-3y} &\text{if }y > 0 \text{ and } x = 0, 1, \ldots, \\
0 &\text{otherwise.}
\end{cases}
$$

a. Verify that $f$ is a joint pmf/pdf. *Hint*: First, sum over the $x$ values using the well-known formula for the power series expansion of $e^{2y}$.
b. Find $\Pr(X = 0)$.

:::

::: {#exr-3-4-11}

# Exercise 3.4.11

Consider the clinical trial of depression drugs in @exm-2-1-4. Suppose that a patient is selected at random from the 150 patients in that study and we record $Y$, an indicator of the treatment group for that patient, and $X$, an indicator of whether or not the patient relapsed. @tbl-3-3 contains the joint pmf of $X$ and $Y$.

* a. Calculate the probability that a patient selected at random from this study used Lithium (either alone or in combination with Imipramine) and did not relapse.
* b. Calculate the probability that the patient had a relapse (without regard to the treatment group).

:::

::: {#tbl-3-3}

<table>
<caption><span data-qmd="Proportions in clinical depression study for @exr-3-4-11."></span></caption>
<thead>
<tr>
    <th></th>
    <th colspan="3" align="center" style="border-bottom: 1px solid black;"><span data-qmd="**Treatment Group** ($Y$)"></span></th>
    <th></th>
</tr>
</thead>
<tbody>
<tr>
    <td><span data-qmd="*Response* ($X$)"></span></td>
    <td>Imipramine (1)</td>
    <td>Lithium (2)</td>
    <td>Combination (3)</td>
    <td>Placebo (4)</td>
</tr>
<tr>
    <td>Relapse (0)</td>
    <td>0.120</td>
    <td>0.087</td>
    <td>0.146</td>
    <td>0.160</td>
</tr>
<tr>
    <td>No relapse (1)</td>
    <td>0.147</td>
    <td>0.166</td>
    <td>0.107</td>
    <td>0.067</td>
</tr>
</tbody>
</table>

:::
