(sec-4-9)=
# 4.9 Supplementary Exercises

:::: {exercise}
:label: exr-4-9-1
:enumerator: 4.9.1
::: {.exr-head}
# Exercise 4.9.1
:::

Suppose that the random variable $X$ has a continuous
distribution with CDF $F(x)$ and pdf $f$. Suppose also that $\mathbb{E}[X]$ exists. Prove that

$$
\lim_{x \rightarrow \infty}x[1 - F(x)] = 0.
$$

Hint: Use the fact that if $\mathbb{E}(X)$ exists, then

$$
\mathbb{E}[X] = \lim_{u \rightarrow \infty}\int_{-\infty}^{u}xf(x)dx.
$$

::::

::: {#exr-4-9-2}

# Exercise 4.9.2

Suppose that the random variable $X$ has a continuous
distribution with CDF $F(x)$. Suppose also that $\Pr(X \geq 0) = 1$ and that $\mathbb{E}[X]$ exists. Show that

$$
\mathbb{E}[X] = \int_{0}^{\infty}[1 - F(x)]dx.
$$

Hint: You may use the result proven in @exr-4-9-1.

:::

::: {#exr-4-9-3}

# Exercise 4.9.3

Consider again the conditions of @exr-4-9-2, but suppose now that $X$ has a discrete distribution with CDF $F(x)$, rather than a continuous distribution. Show that the conclusion of @exr-4-9-2 still holds.

:::

::: {#exr-4-9-4}

# Exercise 4.9.4

Suppose that $X$, $Y$, and $Z$ are nonnegative random
variables such that $\Pr(X + Y + Z \leq 1.3) = 1$. Show that $X$, $Y$, and $Z$ cannot possibly have a joint distribution under which each of their marginal distributions is the uniform distribution on the interval $[0, 1]$.

:::

::: {#exr-4-9-5}

# Exercise 4.9.5

Suppose that the random variable $X$ has mean $\mu$ and variance $\sigma^2$, and that $Y = aX + b$. Determine the values of $a$ and $b$ for which $\mathbb{E}[Y] = 0$ and $\text{Var}[Y] = 1$.

:::

::: {#exr-4-9-6}

# Exercise 4.9.6

Determine the expectation of the range of a random
sample of size $N$ from the uniform distribution on the interval $[0, 1]$.

:::

::: {#exr-4-9-7}

# Exercise 4.9.7

Suppose that an automobile dealer pays an amount $X$ (in thousands of dollars) for a used car and then sells it for an amount $Y$. Suppose that the random variables $X$ and $Y$ have the following joint pdf:

$$
f(x, y) = \begin{cases}
\frac{1}{36}x &\text{for }0 < x < y < 6, \\
0 &\text{otherwise.}
\end{cases}
$$

Determine the dealer's expected gain from the sale.

:::

::: {#exr-4-9-8}

# Exercise 4.9.8

Suppose that $X_1, \ldots, X_n$ form a random sample of size $N$ from a continuous distribution with the following pdf:

$$
f(x) = \begin{cases}
2x &\text{for }0 < x < 1, \\
0 &\text{otherwise.}
\end{cases}
$$

Let $Y_n = \max\{X_1, \ldots, X_n\}$. Evaluate $\mathbb{E}[Y_n]$.

:::

::: {#exr-4-9-9}

# Exercise 4.9.9

If $m$ is a median of the distribution of $X$, and if $Y = r(X)$ is either a nondecreasing or a nonincreasing function of $X$, show that $r(m)$ is a median of the distribution of $Y$.

:::

::: {#exr-4-9-10}

# Exercise 4.9.10

Suppose that $X_1, \ldots, X_n$ are i.i.d. random variables, each of which has a continuous distribution with median $m$. Let $Y_n = \max\{X_1, \ldots, X_n\}$. Determine the value of $\Pr(Y_n > m)$.

:::

::: {#exr-4-9-11}

# Exercise 4.9.11

Suppose that you are going to sell cola at a football game and must decide in advance how much to order. Suppose that the demand for cola at the game, in liters, has a continuous distribution with pdf $f(x)$. Suppose that you make a profit of $g$ cents on each liter that you sell at the game and suffer a loss of $c$ cents on each liter that you order but do not sell. What is the optimal amount of cola for you to order so as to maximize your expected net gain?

:::

::: {#exr-4-9-12}

# Exercise 4.9.12

Suppose that the number of hours $X$ for which a machine will operate before it fails has a continuous distribution with pdf $f(x)$. Suppose that at the time at which the machine begins operating you must decide when you will return to inspect it. If you return before the machine has failed, you incur a cost of $b$ dollars for having wasted an inspection. If you return after the machine has failed, you incur a cost of $c$ dollars per hour for the length of time during which the machine was not operating after its failure. What is the optimal number of hours to wait before you return for inspection in order to minimize your expected cost?

:::

::: {#exr-4-9-13}

# Exercise 4.9.13

Suppose that $X$ and $Y$ are random variables for which $\mathbb{E}[X] = 3$, $\mathbb{E}[Y] = 1$, $\text{Var}[X] = 4$, and $\text{Var}[Y] = 9$. Let $Z = 5X − Y + 15$. Find $\mathbb{E}[Z]$ and $\text{Var}[Z]$ under each of the following conditions: **(a)** $X$ and $Y$ are independent; **(b)** $X$ and $Y$ are uncorrelated; **(c)** the correlation of $X$ and $Y$
is $0.25$.

:::

::: {#exr-4-9-14}

# Exercise 4.9.14

Suppose that $X_0, X_1, \ldots, X_n$ are independent random variables, each having the same variance $\sigma^2$. Let $Y_j = X_j - X_{j-1}$ for $j = 1, \ldots, n$, and let $\overline{Y_n} = \frac{1}{n}\sum_{j=1}^nY_j$. Determine the value of $\text{Var}\mkern-3mu\left[\overline{Y_n}\right]$.

:::

::: {#exr-4-9-15}

# Exercise 4.9.15

Suppose that $X_1, \ldots, X_n$ are random variables for which $\text{Var}[X_i]$ has the same value $\sigma^2$ for $i = 1, \ldots, n$ and $\rho(X_i, X_j)$ has the same value $\rho$ for every pair of values $i$ and $j$ such that $i = j$. Prove that $\rho \geq -\frac{1}{n-1}$.

:::

::: {#exr-4-9-16}

# Exercise 4.9.16

Suppose that the joint distribution of $X$ and $Y$ is the uniform distribution over a rectangle with sides parallel to the coordinate axes in the $xy$-plane. Determine the correlation of $X$ and $Y$.

:::

::: {#exr-4-9-17}

# Exercise 4.9.17

Suppose that $n$ letters are put at random into $n$ envelopes, as in the matching problem described in @sec-1-10. Determine the variance of the number of letters that are placed in the correct envelopes.

:::

::: {#exr-4-9-18}

# Exercise 4.9.18

Suppose that the random variable $X$ has mean $\mu$ and variance $\sigma^2$. Show that the third central moment of $X$ can be expressed as $\mathbb{E}[X^3] − 3\mu \sigma^2 − \mu^3$.

:::

::: {#exr-4-9-19}

# Exercise 4.9.19

Suppose that $X$ is a random variable with MGF $\psi(t)$, mean $\mu$, and variance $\sigma^2$; and let $c(t) = \log[\psi(t)]$. Prove that $c'(0) = \mu$ and $c''(0) = \sigma^2$.

:::

::: {#exr-4-9-20}

# Exercise 4.9.20

Suppose that $X$ and $Y$ have a joint distribution with means $\mu_X$ and $\mu_Y$, standard deviations $\sigma_X$ and $\sigma_Y$, and correlation $\rho$. Show that if $\mathbb{E}[Y \mid X]$ is a linear function of $X$, then

$$
\mathbb{E}[Y \mid X] = \mu_Y + \rho \frac{\sigma_Y}{\sigma_X}(X - \mu_X).
$$

:::

::: {#exr-4-9-21}

# Exercise 4.9.21

Suppose that $X$ and $Y$ are random variables such that $\mathbb{E}[Y \mid X] = 7 − (1/4)X$ and $\mathbb{E}[X \mid Y] = 10 − Y$. Determine the correlation of $X$ and $Y$.

:::

::: {#exr-4-9-22}

# Exercise 4.9.22

Suppose that a stick having a length of 3 feet is broken into two pieces, and that the point at which the stick is broken is chosen in accordance with the pdf $f(x)$. What is the correlation between the length of the longer piece and the length of the shorter piece?

:::

::: {#exr-4-9-23}

# Exercise 4.9.23

Suppose that $X$ and $Y$ have a joint distribution with correlation $\rho > 1/2$ and that $\text{Var}[X] = \text{Var}[Y] = 1$. Show that $b = -\frac{1}{2\rho}$ is the unique value of $b$ such that the correlation of $X$ and $X + bY$ is also $\rho$.

:::

::: {#exr-4-9-24}

# Exercise 4.9.24

Suppose that four apartment buildings $A$, $B$, $C$, and $D$ are located along a highway at the points 0, 1, 3, and 5, as shown in @fig-4-1. Suppose also that 10 percent of the employees of a certain company live in building $A$, 20 percent live in $B$, 30 percent live in $C$, and 40 percent live in $D$.

(a) Where should the company build its new office in order to minimize the total distance that its employees must travel?
(b) Where should the company build its new office in
order to minimize the sum of the squared distances
that its employees must travel?

:::

::: {#exr-4-9-25}

# Exercise 4.9.25

Suppose that $X$ and $Y$ have the following joint pdf:

$$
f(x, y) = \begin{cases}
8xy &\text{for }0 < y < x < 1, \\
0 &\text{otherwise.}
\end{cases}
$$

Suppose also that the observed value of $X$ is $0.2$.

(a) What predicted value of $Y$ has the smallest MSE?
(b) What predicted value of $Y$ has the smallest MAE?

:::

::: {#exr-4-9-26}

# Exercise 4.9.26

For all random variables $X$, $Y$, and $Z$, let $\text{Cov}[X, Y \mid z]$ denote the covariance of $X$ and $Y$ in their conditional joint distribution given $Z = z$. Prove that

$$
\text{Cov}[X, Y] = \mathbb{E}[\text{Cov}[X, Y \mid Z]] + \text{Cov}[\mathbb{E}[X \mid Z], \mathbb{E}[Y \mid Z]].
$$

:::

::: {#exr-4-9-27}

# Exercise 4.9.27

Consider the box of red and blue balls in Examples [-@exr-4-2-4] and [-@exr-4-2-5]. Suppose that we sample $N > 1$ balls with replacement, and let $X$ be the number of red balls in the sample. Then we sample $N$ balls without replacement, and we let $Y$ be the number of red balls in the sample. Prove that $\Pr(X = N) > \Pr(Y = N)$.

:::

::: {#exr-4-9-28}

# Exercise 4.9.28

Suppose that a person's utility function is $U(x) = x^2$ for $x \geq 0$. Show that the person will always prefer to take a gamble in which she will receive a random gain of $X$ dollars rather than receive the amount $\mathbb{E}[X]$ with certainty, where $\Pr(X \geq 0) = 1$ and $\mathbb{E}[X] < \infty$.

:::

::: {#exr-4-9-29}

# Exercise 4.9.29

A person is given $m$ dollars, which he must allocate
between an event $A$ and its complement $A^c$. Suppose that he allocates $a$ dollars to $A$ and $m − a$ dollars to $A^c$. The person's gain is then determined as follows: If $A$ occurs, his gain is $g_1a$; if $A^c$ occurs, his gain is $g_2(m − a)$. Here, $g_1$ and $g_2$ are given positive constants. Suppose also that $\Pr(A) = p$ and the person's utility function is $U(x) = \log(x)$ for $x > 0$. Determine the amount $a$ that will maximize the person's expected utility, and show that this amount does not depend on the values of $g_1$ and $g_2$.

:::
