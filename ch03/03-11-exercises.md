(sec-3-11)=
# 3.11 Supplementary Exercises

:::: {exercise}
:label: exr-3-11-1
:enumerator: 3.11.1
::: {.exr-head}
# Exercise 3.11.1
:::

Suppose that $X$ and $Y$ are independent random variables, that $X$ has the uniform distribution on the integers $1, 2, 3, 4, 5$ (discrete), and that $Y$ has the uniform distribution on the interval $[0, 5]$ (continuous). Let $Z$ be a random variable such that $Z = X$ with probability $1/2$ and $Z = Y$ with probability $1/2$. Sketch the CDF of $Z$.

::::

:::: {exercise}
:label: exr-3-11-2
:enumerator: 3.11.2
::: {.exr-head}
# Exercise 3.11.2
:::

Suppose that $X$ and $Y$ are independent random variables. Suppose that $X$ has a discrete distribution concentrated on finitely many distinct values with pmf $f_1$. Suppose that $Y$ has a continuous distribution with pdf $f_2$. Let $Z = X + Y$. Show that $Z$ has a continuous distribution and find its pdf. *Hint*: First find the conditional pdf of $Z$ given $X = x$.

::::

(exr-3-11-3)=
# Exercise 3.11.3

Suppose that the random variable $X$ has the following CDF:

```{math}
:enumerated: false

F(x) = \begin{cases}
0 &\text{for }x \leq 0, \\
\frac{2}{5}x &\text{for }0 < x \leq 1, \\
\frac{3}{5}x - \frac{1}{5} &\text{for }1 < x \leq 2, \\
1 &\text{for }x < 2.
\end{cases}
```

Verify that $X$ has a continuous distribution, and determine the pdf of $X$.

(exr-3-11-4)=
# Exercise 3.11.4

Suppose that the random variable $X$ has a continuous
distribution with the following pdf:

```{math}
:enumerated: false

f(x) = \frac{1}{2}e^{-|x|} \; \text{ for }-\infty < x < \infty.
```

Determine the value $x_0$ such that $F(x_0) = 0.9$, where $F(x)$ is the CDF of $X$.

(exr-3-11-5)=
# Exercise 3.11.5

Suppose that $X_1$ and $X_2$ are i.i.d. random variables, and that each has the uniform distribution on the interval $[0, 1]$. Evaluate $\Pr(X_1^2 + X_2^2 \leq 1)$.

(exr-3-11-6)=
# Exercise 3.11.6

For each value of $p > 1$, let

```{math}
:enumerated: false

c(p) = \sum_{x=1}^{\infty}\frac{1}{x^p}.
```

Suppose that the random variable $X$ has a discrete distribution with the following pmf:

```{math}
:enumerated: false

f(x) = \frac{1}{c(p)x^p} \; \text{ for }x = 1, 2, \ldots
```

a. For each fixed positive integer $n$, determine the probability that $X$ will be divisible by $n$.
b. Determine the probability that $X$ will be odd.

(exr-3-11-7)=
# Exercise 3.11.7

Suppose that $X_1$ and $X_2$ are i.i.d. random variables, each of which has the pmf $f(x)$ specified in @exr-3-11-6. Determine the probability that $X_1 + X_2$ will be even.

(exr-3-11-8)=
# Exercise 3.11.8

Suppose that an electronic system comprises four components, and let $X_j$ denote the time until component $j$ fails to operate ($j = 1, 2, 3, 4$). Suppose that $X_1$, $X_2$, $X_3$, and $X_4$ are i.i.d. random variables, each of which has a continuous distribution with CDF $F(x)$. Suppose that the system will operate as long as both component 1 and at least one of the other three components operate. Determine the CDF of the time until the system fails to operate.

(exr-3-11-9)=
# Exercise 3.11.9

Suppose that a box contains a large number of tacks and that the probability $X$ that a particular tack will land with its point up when it is tossed varies from tack to tack in accordance with the following pdf:

```{math}
:enumerated: false

f(x) = \begin{cases}
2(1-x) &\text{for }0 < x < 1, \\
0 &\text{otherwise.}
\end{cases}
```

Suppose that a tack is selected at random from the box and that this tack is then tossed three times independently. Determine the probability that the tack will land with its point up on all three tosses.

(exr-3-11-10)=
# Exercise 3.11.10

Suppose that the radius $X$ of a circle is a random
variable having the following pdf:

```{math}
:enumerated: false

f(x) = \begin{cases}
\frac{1}{8}(3x + 1) &\text{for }0 < x < 2, \\
0 &\text{otherwise.}
\end{cases}
```

Determine the pdf of the area of the circle.

(exr-3-11-11)=
# Exercise 3.11.11

Suppose that the random variable $X$ has the following pdf:

```{math}
:enumerated: false

f(x) = \begin{cases}
2e^{-2x} &\text{for }x > 0, \\
0 &\text{otherwise.}
\end{cases}
```

Construct a random variable $Y = r(X)$ that has the uniform distribution on the interval $[0, 5]$.

(exr-3-11-12)=
# Exercise 3.11.12

Suppose that the 12 random variables $X_1, \ldots, X_{12}$ are i.i.d. and each has the uniform distribution on the interval $[0, 20]$. For $j = 0, 1, \ldots, 19$, let $I_j$ denote the interval $(j, j + 1)$. Determine the probability that none of the 20 disjoint intervals $I_j$ will contain more than one of the random variables $X_1, \ldots, X_{12}$.

(exr-3-11-13)=
# Exercise 3.11.13

Suppose that the joint distribution of $X$ and $Y$ is uniform over a set $A$ in the $xy$-plane. For which of the following sets $A$ are $X$ and $Y$ independent?

a. A circle with a radius of 1 and with its center at the origin
b. A circle with a radius of 1 and with its center at the point $(3, 5)$
c. A square with vertices at the four points $(1, 1)$, $(1, −1)$, $(−1, −1)$, and $(−1, 1)$
d. A rectangle with vertices at the four points $(0, 0)$, $(0, 3)$, $(1, 3)$, and $(1, 0)$
e. A square with vertices at the four points $(0, 0)$, $(1, 1)$, $(0, 2)$, and $(−1, 1)$

(exr-3-11-14)=
# Exercise 3.11.14

Suppose that $X$ and $Y$ are independent random variables with the following pdfs:

```{math}
:enumerated: false
\begin{align*}
f_1(x) &= \begin{cases}
1 &\text{for }0 < x < 1, \\
0 &\text{otherwise,}
\end{cases} \\
f_2(y) &= \begin{cases}
8y &\text{for }0 < y < \frac{1}{2}, \\
0 &\text{otherwise.}
\end{cases}
\end{align*}
```

Determine the value of $\Pr(X > Y)$.

(exr-3-11-15)=
# Exercise 3.11.15

Suppose that, on a particular day, two persons $A$ and $B$ arrive at a certain store independently of each other. Suppose that $A$ remains in the store for 15 minutes and $B$ remains in the store for 10 minutes. If the time of arrival of each person has the uniform distribution over the hour between 9:00am and 10:00am, what is the probability that $A$ and $B$ will be in the store at the same time?

(exr-3-11-16)=
# Exercise 3.11.16

Suppose that $X$ and $Y$ have the following joint pdf:

```{math}
:enumerated: false

f(x, y) = \begin{cases}
2(x + y) &\text{for }0 < x < y < 1, \\
0 &\text{otherwise.}
\end{cases}
```

Determine

(a) $\Pr(X < 1/2)$
(b) the marginal pdf of $X$
(c) the conditional pdf of $Y$ given that $X = x$

(exr-3-11-17)=
# Exercise 3.11.17

Suppose that $X$ and $Y$ are random variables. The marginal pdf of $X$ is

```{math}
:enumerated: false

f(x) = \begin{cases}
3x^2 &\text{for }0 < x < 1, \\
0 &\text{otherwise.}
\end{cases}
```

Also, the conditional pdf of $Y$ given that $X = x$ is

```{math}
:enumerated: false

g(y \mid x) = \begin{cases}
\frac{3y^2}{x^3} &\text{for }0 < y < x, \\
0 &\text{otherwise.}
\end{cases}
```

Determine

(a) The marginal pdf of $Y$ and
(b) The conditional pdf of $X$ given that $Y = y$.

(exr-3-11-18)=
# Exercise 3.11.18

Suppose that the joint distribution of $X$ and $Y$ is uniform over the region in the $xy$-plane bounded by the four lines $x = −1$, $x = 1$, $y = x + 1$, and $y = x − 1$. Determine

(a) $\Pr(XY > 0)$ and
(b) The conditional pdf of $Y$ given that $X = x$.

(exr-3-11-19)=
# Exercise 3.11.19

Suppose that the random variables $X$, $Y$, and $Z$ have the following joint pdf:

```{math}
:enumerated: false

f(x, y, z) = \begin{cases}
6 &\text{for }0 < x < y < z < 1, \\
0 &\text{otherwise.}
\end{cases}
```

Determine the univariate marginal pdfs of $X$, $Y$, and $Z$.

(exr-3-11-20)=
# Exercise 3.11.20

Suppose that the random variables $X$, $Y$, and $Z$ have the following joint pdf:

```{math}
:enumerated: false

f(x, y, z) = \begin{cases}
2 &\text{for }0 < x < y < 1 \text{ and }0 < z < 1, \\
0 &\text{otherwise.}
\end{cases}
```

Evaluate $\Pr(3X > Y \mid 1 < 4Z < 2)$.

(exr-3-11-21)=
# Exercise 3.11.21

Suppose that $X$ and $Y$ are iid random variables, and that each has the following pdf:

```{math}
:enumerated: false

f(x) = \begin{cases}
e^{-x} &\text{for }x > 0, \\
0 &\text{otherwise.}
\end{cases}
```

Also, let $U = X / (X + Y)$ and $V = X + Y$.

a. Determine the joint pdf of $U$ and $V$.
b. Are $U$ and $V$ independent?

(exr-3-11-22)=
# Exercise 3.11.22

Suppose that the random variables $X$ and $Y$ have the following joint pdf:

```{math}
:enumerated: false

f(x, y) = \begin{cases}
8xy &\text{for }0 \leq x \leq y \leq 1, \\
0 &\text{otherwise.}
\end{cases}
```

Also, let $U = X / Y$ and $V = Y$.

a. Determine the joint pdf of $U$ and $V$.
b. Are $X$ and $Y$ independent?
c. Are $U$ and $V$ independent?

(exr-3-11-23)=
# Exercise 3.11.23

Suppose that $X_1, \ldots, X_n$ are iid random variables, each having the following CDF:

```{math}
:enumerated: false

F(x) = \begin{cases}
0 &\text{for }x \leq 0, \\
1 - e^{-x} &\text{for }x > 0.
\end{cases}
```

Let $Y_1 = \min\{X_1, \ldots, X_n\}$ and $Y_n = \max\{X_1, \ldots, X_n\}$. Determine the conditional pdf of $Y_1$ given that $Y_n = y_n$.

(exr-3-11-24)=
# Exercise 3.11.24

Suppose that $X_1$, $X_2$, and $X_3$ form a random sample of three observations from a distribution having the following pdf:

```{math}
:enumerated: false

f(x) = \begin{cases}
2x &\text{for }0 < x < 1, \\
0 &\text{otherwise.}
\end{cases}
```

Determine the pdf of the range of the sample.

:::: {exercise}
:label: exr-3-11-25
:enumerator: 3.11.25
::: {.exr-head}
## Exercise 3.11.25
:::

In this exercise, we shall provide an approximate justification for @eq-3-6-6. First, remember that if $a$ and $b$ are close together, then

```{math}
:label: eq-3-11-1
:enumerator: 3.11.1

\int_{a}^{b}r(t)\, dt \approx (b-a)r\left( \frac{a+b}{2} \right)
```

Throughout this problem, assume that $X$ and $Y$ have joint pdf $f$.

a. Use @eq-3-11-1 to approximate $\Pr(y − \epsilon < Y \leq y + \epsilon)$.
b. Use @eq-3-11-1 with $r(t) = f(s, t)$ for fixed $s$ to approximate

$$
\Pr(X \leq x \text{ and }y - \epsilon < Y \leq y + \epsilon) = \int_{-\infty}^{x}\int_{y-\epsilon}^{y+\epsilon}f(s, t)\, dt\, ds.
$$

c. Show that the ratio of the approximation in part (b) to the approximation in part (a) is $\int_{-\infty}^{x}g_1(s \mid y)\, ds$.

::::

:::: {exercise}
:label: exr-3-11-26
:enumerator: 3.11.26
::: {.exr-head}
## Exercise 3.11.26
:::

Let $X_1$, $X_2$ be two independent random variables each with pdf $f_1(x) = e^{-x}$ for $x > 0$ and $f_1(x) = 0$ for $x \leq 0$. Let $Z = X_1 - X_2$ and $W = X_1 / X_2$.

* a. Find the joint pdf of $X_1$ and $Z$.
* b. Prove that the conditional pdf of $X_1$ given $Z = 0$ is

  $$
  g_1(x_1 \mid 0) = \begin{cases}
  2e^{-2x_1} &\text{for }x_1 > 0, \\
  0 &\text{otherwise.}
  \end{cases}
  $$

* c. Find the joint pdf of $X_1$ and $W$.
* d. Prove that the conditional pdf of $X_1$ given $W = 1$ is
  
  $$
  h_1(x_1 \mid 1) = \begin{cases}
  4x_1e^{-2x_1} &\text{for }x_1 > 0, \\
  0 &\text{otherwise.}
  \end{cases}
  $$
  
* e. Notice that $\{Z = 0\} = \{W = 1\}$, but the conditional distribution of $X_1$ given $Z = 0$ is not the same as the conditional distribution of $X_1$ given $W = 1$. This discrepancy is known as the **Borel paradox**. In light of the discussion that begins on page 146 about how conditional pdfs are not like conditioning on events of probability 0, show how "$Z$ very close to 0" is not the same as "$W$ very close to 1." *Hint*: Draw a set of axes for $x_1$ and $x_2$, and draw the two sets $\{(x_1, x_2) \mid |x_1 − x_2| < \epsilon \}$ and $\{(x_1, x_2) \mid | x1 / x2 − 1| < \epsilon \}$ and see how much different they are.

::::

:::: {exercise}
:label: exr-3-11-27
:enumerator: 3.11.27
::: {.exr-head}
## Exercise 3.11.27
:::

Three boys $A$, $B$, and $C$ are playing table tennis. In each game, two of the boys play against each other and the third boy does not play. The winner of any given game $n$ plays again in game $n + 1$ against the boy who did not play in game $n$, and the loser of game $n$ does not play in game $n + 1$. The probability that $A$ will beat $B$ in any game that they play against each other is 0.3, the probability that $A$ will beat $C$ is 0.6, and the probability that $B$ will beat $C$ is 0.8. Represent this process as a Markov chain with stationary transition probabilities by defining the possible states and constructing the transition matrix.

::::

:::: {exercise}
:label: exr-3-11-28
:enumerator: 3.11.28
::: {.exr-head}
## Exercise 3.11.28
:::

Consider again the Markov chain described in @exr-3-11-27.

* (a) Determine the probability that the two boys who play against each other in the first game will play against each other again in the fourth game.
* (b) Show that this probability does not depend on which two boys play in the first game.

::::

:::: {exercise}
:label: exr-3-11-29
:enumerator: 3.11.29
::: {.exr-head}
# Exercise 3.11.29
:::

Find the unique stationary distribution for the Markov chain in @exr-3-11-27.

::::
