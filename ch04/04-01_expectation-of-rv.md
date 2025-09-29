# The Expectation of a Random Variable

*The distribution of a random variable $X$ contains all of the probabilistic information about $X$. The entire distribution of $X$, however, is usually too cumbersome for presenting this information. Summaries of the distribution, such as the average value, or expected value, can be useful for giving people an idea of where we expect $X$ to be without trying to describe the entire distribution. The expected value also plays an important role in the approximation methods that arise in @sec-6.*

### Expectation for a Discrete Distribution

::: {.callout-tip title="Example 4.1.1"}
::: {#exm-4-1-1}

# Example 4.1.1: Fair Price for a Stock

An investor is considering whether or not to invest \$18 per share in a stock for one year. The value of the stock after one year, in dollars, will be $18 + X$, where $X$ is the amount by which the price changes over the year. At present $X$ is unknown, and the investor would like to compute an "average value" for $X$ in order to compare the return she expects from the investment to what she would get by putting the \$18 in the bank at 5% interest.

:::
:::

The idea of finding an average value as in @exm-4-1-1 arises in many applications that involve a random variable. One popular choice is what we call the **mean** or **expected value** or **expectation**.

The intuitive idea of the mean of a random variable is that it is the weighted average of the possible values of the random variable with the weights equal to the probabilities.

::: {.callout-tip title="Example 4.1.2"}
::: {#exm-4-1-2}

# Example 4.1.2: Stock Price Change

Suppose that the change in price of the stock in @exm-4-1-1 is a random variable $X$ that can assume only the four different values $−2$, $0$, $1$, and
$4$, and that $\Pr(X = −2) = 0.1$, $\Pr(X = 0) = 0.4$, $\Pr(X = 1) = 0.3$, and $\Pr(X = 4) = 0.2$.
Then the weighted avarage of these values is

$$
−2(0.1) + 0(0.4) + 1(0.3) + 4(0.2) = 0.9.
$$

The investor now compares this with the interest that would be earned on \$18 at 5\% for one year, which is $18 \times 0.05 = 0.9$ dollars. From this point of view, the price of \$18 seems fair.

:::
:::

The calculation in @exm-4-1-2 generalizes easily to every random variable that assumes only finitely many values. Possible problems arise with random variables that assume more than finitely many values, especially when the collection of possible values is unbounded.

::: {.callout-note title="Definition 4.1.1"}
::: {#def-4-1-1}

# Definition 4.1.1: Mean of Bounded Discrete Random Variable.

Let $X$ be a bounded discrete random variable whose pmf is $f$. The expectation of $X$, denoted by $\mathbb{E}[X]$, is a number defined as follows:

$$
\mathbb{E}(X) = \sum_{\text{All }x}xf(x).
$$ {#eq-4-1-1}

:::
:::

The expectation of $X$ is also referred to as the **mean** of $X$ or the **expected value** of $X$.

In @exm-4-1-2, $\mathbb{E}(X) = 0.9$. Notice that $0.9$ is not one of the possible values of $X$ in that example. This is typically the case with discrete random variables.

::: {.callout-tip title="Example 4.1.3"}
::: {#exm-4-1-3}

# Example 4.1.3: Bernoulli Random Variable.

Let $X$ have the Bernoulli distribution with parameter $p$, that is, assume that $X$ takes only the two values 0 and 1 with $\Pr(X = 1) = p$. Then the mean of X is

$$
\mathbb{E}[X] = 0 \times (1 − p) + 1 \times p = p.
$$

:::
:::

If $X$ is unbounded, it might still be possible to define $\mathbb{E}[X]$ as the weighted average of its possible values. However, some care is needed.

::: {.callout-note title="Definition 4.1.2"}
::: {#def-4-1-2}

# Definition 4.1.2: Mean of General Discrete Random Variable.

Let $X$ be a discrete random variable whose pmf is $f$. Suppose that at least one of the following sums is finite:
 
$$
\sum_{\text{Positive }x}xf(x), \; \sum_{\text{Negative }x}xf(x).
$$ {#eq-4-1-2}

Then the **mean**, **expectation**, or **expected value** of $X$ is said to exist and is defined to be

$$
E(X) = \sum_{\text{All }x}xf(x).
$$ {#eq-4-1-3}

If both of the sums in @eq-4-1-2 are infinite, then $\mathbb{E}[X]$ does not exist.

:::
:::

The reason that the expectation fails to exist if both of the sums in @eq-4-1-2 are infinite is that, in such cases, the sum in @eq-4-1-3 is not well-defined. It is known from calculus that the sum of an infinite series whose positive and negative terms both add to infinity either fails to converge or can be made to converge to many different values by rearranging the terms in different orders. We don't want the meaning of expected value to depend on arbitrary choices about what order to add numbers. If only one of two sums in @eq-4-1-3 is infiinte, then the expected value is also infinite with the same sign as that of the sum that is infinite. If both sums are finite, then the sum
in @eq-4-1-3 converges and doesn't depend on the order in which the terms are added.

::: {.callout-tip title="Example 4.1.4"}
::: {#exm-4-1-4}

# Example 4.1.4: The Mean of $X$ Does Not Exist.

Let $X$ be a random variable whose pmf is

$$
f(x) = \begin{cases}
\frac{1}{2|x|(|x|+1)} &\text{if }x = \pm 1, \pm 2, \pm 3, \ldots, \\
0 &\text{otherwise.}
\end{cases}
$$

It can be verified that this function satisfies the conditions required to be a pmf. The two sums in @eq-4-1-2 are

$$
\sum_{x=-1}^{-\infty}x\frac{1}{2|x|(|x|+1)} = -\infty \text{ and }\sum_{x=1}^{\infty}x\frac{1}{2x(x+1)} = \infty;
$$

hence, $\mathbb{E}[X]$ does not exist.

:::
:::

::: {.callout-tip title="Example 4.1.5"}
::: {#exm-4-1-5}

# Example 4.1.5: An Infinite Mean

Let $X$ be a random variable whose pmf is

$$
f(x) = \begin{cases}
\frac{1}{x(x+1)} &\text{if }x = 1, 2, 3, \ldots, \\
0 &\text{otherwise.}
\end{cases}
$$

The sum over negative values in @eq-4-1-2 is 0, so the mean of $X$ exists and is

$$
\mathbb{E}[X] = \sum_{x=1}^{\infty}x\frac{1}{x(x+1)} = \infty.
$$

We say that the mean of $X$ is **infinite** in this case.

:::
:::

**Note: The Expectation of $X$ Depends Only on the Distribution of $X$**: Although $\mathbb{E}[X]$ is called the expectation of $X$, it depends only on the distribution of $X$. Every two random variables that have the same distribution will have the same expectation even if they have nothing to do with each other. For this reason, we shall often refer to the expectation of a distribution even if we do not have in mind a random variable with that distribution.

### Expectation for a Continuous Distribution

The idea of computing a weighted average of the possible values can be generalized to continuous random variables by using integrals instead of sums. The distinction between bounded and unbounded random variables arises in this case for the same reasons.

::: {.callout-note title="Definition 4.1.3"}
::: {#def-4-1-3}

# Definition 4.1.3: Mean of Bounded Continuous Random Variable

Let $X$ be a bounded continuous random variable whose pdf is $f$. The **expectation** of $X$, denoted $\mathbb{E}[X]$, is defined as follows:

$$
\mathbb{E}[X] = \int_{-\infty}^{\infty}xf(x)dx
$$ {#eq-4-1-4}

Once again, the expectation is also called the **mean** or the **expected value**.

:::
:::

::: {.callout-tip title="Example 4.1.6"}
::: {#exm-4-1-6}

# Example 4.1.6: Expected Failure Time

An appliance has a maximum lifetime of one year. The time $X$ until it fails is a random variable with a continuous distribution having pdf

$$
f(x) = \begin{cases}
2x &\text{for }0 < x < 1, \\
0 &\text{otherwise.}
\end{cases}
$$

Then

$$
\mathbb{E}[X] = \int_0^{1}x(2x)dx = \int_{0}^{1}2x^2dx = \frac{2}{3}.
$$

We can also say that the expectation of the distribution with pdf $f$ is $2/3$.

:::
:::

For general continuous random variables, we modify @def-4-1-2.

::: {.callout-note title="Definition 4.1.4"}
::: {#def-4-1-4}

# Definition 4.1.4: Mean of General Continuous Random Variable

Let $X$ be a continuous random variable whose pdf is $f$. Suppose that at least one of the following integrals is finite:

$$
\int_{0}^{\infty}xf(x)dx, \; \int_{-\infty}^{0}xf(x)dx.
$$ {#eq-4-1-5}

Then the **mean**, **expectation**, or **expected value** of $X$ is said to exist and is defined to
be

$$
\mathbb{E}[X] = \int_{-\infty}^{\infty}xf(x)dx.
$$ {#eq-4-1-6}

If both of the integrals in @eq-4-1-5 are infinite, then $\mathbb{E}[X]$ does not exist.

:::
:::

::: {.callout-tip title="Example 4.1.7"}
::: {#exm-4-1-7}

# Example 4.1.7: Failure after Warranty

A product has a warranty of one year. Let X be the time at
which the product fails. Suppose that X has a continuous distribution with the pdf
f (x) =
 
0 for x <1,
2
x3 for x ≥ 1.
The expected time to failure is then
E(X) =
  ∞
1
x
2
x3
dx =
  ∞
1
2
x2
dx = 2.  

:::
:::

::: {.callout-tip title="Example 4.1.8"}
::: {#exm-4-1-8}

# Example 4.1.8: A Mean That Does Not Exist

Suppose that a random variable X has a continuous
distribution for which the pdf is as follows:
f (x) = 1
π(1+ x2)
for −∞< x <∞. (4.1.7)
 This distribution is called the Cauchy distribution. We can verify the fact that ∞
−∞ f (x) dx = 1 by using the following standard result from elementary calculus:
d
dx
tan−1 x = 1
1+ x2 for −∞< x <∞.
The two integrals in (4.1.5) are
  ∞
0
x
π(1+ x2)
dx =∞ and
  0
−∞
x
π(1+ x2)
dx =−∞;
hence, the mean of X does not exist. 

:::
:::

### Interpretation of the Expectation

**Relation of the Mean to the Center of Gravity**: The expectation of a random variable or, equivalently, the mean of its distribution can be regarded as being the center of gravity of that distribution. To illustrate this concept, consider, for example, the pmf sketched in @fig-4-1. The $x$-axis may be regarded as a long weightless rod to which weights are attached. If a weight equal to $f(x_j)$ is attached to this rod at each point $x_j$, then the rod will be balanced if it is supported at the point $\mathbb{E}[X]$.

Now consider the pdf sketched in @fig-4-2. In this case, the $x$-axis may be regarded as a long rod over which the mass varies continuously. If the density of the rod at each point $x$ is equal to $f(x)$, then the center of gravity of the rod will be located at the point $\mathbb{E}[X]$, and the rod will be balanced if it is supported at that point.

It can be seen from this discussion that the mean of a distribution can be affected greatly by even a very small change in the amount of probability that is assigned to a large value of $x$. For example, the mean of the distribution represented by the pmf in @fig-4-1 can be moved to any specified point on the $x$-axis, no matter how far from the origin that point may be, by removing an arbitrarily small but positive amount of probability from one of the points $x_j$ and adding this amount of probability at a point far enough from the origin.

Suppose now that the pmf or pdf $f$ of some distribution is symmetric with respect to a given point $x_0$ on the $x$-axis. In other words, suppose that $f(x_0 + \delta) = f(x_0 − \delta)$ for all values of $\delta$. Also assume that the mean $\mathbb{E}[X]$ of this distribution exists. In accordance with the interpretation that the mean is at the center of gravity, it follows that $\mathbb{E}[X]$ must be equal to $x_0$, which is the point of symmetry. The following example emphasizes the fact that it is necessary to make certain that the mean $\mathbb{E}[X]$ exists before it can be concluded that $\mathbb{E}[X] = x_0$.

::: {.callout-tip title="Example 4.1.9"}
::: {#exm-4-1-9}

# Example 4.1.9: The Cauchy Distribution

Consider again the pdf specified by @eq-4-1-7, which is sketched in @fig-4-3. This pdf is symmetric with respect to the point $x = 0$. Therefore, if the mean of the Cauchy distribution existed, its value would have to be 0. However, we saw in @exm-4-1-8 that the mean of $X$ does not exist.

The reason for the nonexistence of the mean of the Cauchy distribution is as follows: When the curve $y = f(x)$ is sketched as in @fig-4-3, its tails approach the $x$-axis rapidly enough to permit the total area under the curve to be equal to 1. On the other hand, if each value of $f(x)$ is multiplied by $x$ and the curve $y = xf(x)$ is sketched, as in @fig-4-4, the tails of this curve approach the $x$-axis so slowly that the total area between the $x$-axis and each part of the curve is infinite.

:::
:::

### The Expectation of a Function

::: {.callout-tip title="Example 4.1.10"}
::: {#exm-4-1-10}

# Example 4.1.10: Failure Rate and Time to Failure

Suppose that appliances manufactured by a particular company fail at a rate of $X$ per year, where $X$ is currently unknown and hence is a random variable. If we are interested in predicting how long such an appliance will last before failure, we might use the mean of $1/X$. How can we calculate the mean of $Y = 1/X$?

:::
:::

Functions of a Single Random Variable If X is a random variable for which the
pdf is f , then the expectation of each real-valued function r(X) can be found by
applying the definition of expectation to the distribution of r(X) as follows: Let
Y = r(X), determine the probability distribution of Y , and then determine E(Y)
by applying either Eq. (4.1.1) or Eq. (4.1.4). For example, suppose that Y has a
continuous distribution with the pdf g. Then
E[r(X)]= E(Y) =
  ∞
−∞
yg(y) dy, (4.1.8)
if the expectation exists.

Example
4.1.11
Failure Rate and Time to Failure. In Example 4.1.10, suppose that the pdf of X is
f (x) =
 
3x2 if 0 < x <1,
0 otherwise.
4.1 The Expectation of a Random Variable 213
Let r(x) = 1/x. Using the methods of Sec. 3.8, we can find the pdf of Y = r(X) as
g(y) =
 
3y
−4 if y >1,
0 otherwise.
The mean of Y is then
E(Y) =
  ∞
0
y3y
−4dy = 3
2
.  
Although the method of Example 4.1.11 can be used to find the mean of a
continuous random variable, it is not actually necessary to determine the pdf of
r(X) in order to calculate the expectation E[r(X)]. In fact, it can be shown that the
value of E[r(X)] can always be calculated directly using the following result.
Theorem
4.1.1
Law of the Unconscious Statistician. Let X be a random variable, and let r be a realvalued
function of a real variable. If X has a continuous distribution, then
E[r(X)]=
  ∞
−∞
r(x)f (x) dx, (4.1.9)
if the mean exists. If X has a discrete distribution, then
E[r(X)]=
 
All x
r(x)f (x), (4.1.10)
if the mean exists.
Proof A general proof will not be given here. However, we shall provide a proof
for two special cases. First, suppose that the distribution of X is discrete. Then the
distribution of Y must also be discrete. Let g be the p.f. of Y . For this case,
 
y
yg(y) =
 
y
y Pr[r(X) = y]
=
 
y
y
 
x:r(x)=y
f (x)
=
 
y
 
x:r(x)=y
r(x)f (x) =
 
x
r(x)f (x).
Hence, Eq. (4.1.10) yields the same value as one would obtain from Definition 4.1.1
applied to Y .
Second, suppose that the distribution of X is continuous. Suppose also, as in
Sec. 3.8, that r(x) is either strictly increasing or strictly decreasing with differentiable
inverse s(y). Then, if we change variables in Eq. (4.1.9) from x to y = r(x),
  ∞
−∞
r(x)f (x) dx =
  ∞
−∞
yf [s(y)]
    
ds(y)
dy
    
dy.
It now follows from Eq. (3.8.3) that the right side of this equation is equal to
  ∞
−∞
yg(y) dy.
Hence, Eqs. (4.1.8) and (4.1.9) yield the same value.
214 Chapter 4 Expectation
Theorem 4.1.1 is called the law of the unconscious statistician because many people
treat Eqs. (4.1.9) and (4.1.10) as the definition of E[r(X)] and forget that the
definition of the mean of Y = r(X) is given in Definitions 4.1.2 and 4.1.4.
Example
4.1.12
Failure Rate and Time to Failure. In Example 4.1.11, we can apply Theorem 4.1.1 to
find
E(Y) =
  1
0
1
x
3x2dx = 3
2
,
the same result we got in Example 4.1.11.  
Example
4.1.13
Determining the Expectation of X1/2. Suppose that the pdf of X is as given in Example
4.1.6 and that Y = X1/2. Then, by Eq. (4.1.9),
E(Y) =
  1
0
x1/2(2x) dx = 2
  1
0
x3/2 dx = 4
5
.  
Note: In General, E[g(X)]  = g(E(X)). In Example 4.1.13, the mean of X1/2 is 4/5.
The mean of X was computed in Example 4.1.6 as 2/3. Note that 4/5  = (2/3)1/2. In
fact, unless g is a linear function, it is generally the case that E[g(X)]  = g(E(X)). A
linear function g does satisfy E[g(X)]= g(E(X)), as we shall see in Theorem 4.2.1.
Example
4.1.14
Option Pricing. Suppose that common stock in the up-and-coming company A is
currently priced at $200 per share. As an incentive to get you to work for company
A, you might be offered an option to buy a certain number of shares of the stock, one
year from now, at a price of $200. This could be quite valuable if you believed that the
stock was very likely to rise in price over the next year. For simplicity, suppose that
the priceX of the stock one year from now is a discrete random variable that can take
only two values (in dollars): 260 and 180. Let p be the probability that X = 260. You
want to calculate the value of these stock options, either because you contemplate
the possibility of selling them or because you want to compare Company A's offer
to what other companies are offering. Let Y be the value of the option for one share
when it expires in one year. Since nobody would pay $200 for the stock if the price X
is less than $200, the value of the stock option is 0 if X = 180. If X = 260, one could
buy the stock for $200 per share and then immediately sell it for $260. This brings in a
profit of $60 per share. (For simplicity, we shall ignore dividends and the transaction
costs of buying and selling stocks.) Then Y = h(X) where
h(x) =
 
0 ifx = 180,
60 if x = 260.
Assume that an investor could earn 4% risk-free on any money invested for this
same year. (Assume that the 4% includes any compounding.) If no other investment
options were available, a fair cost of the option would then be what is called the
present value of E(Y) in one year. This equals the value c such that E(Y) = 1.04c.
That is, the expected value of the option equals the amount of money the investor
would have after one year without buying the option. We can find E(Y) easily:
E(Y) = 0 × (1− p) + 60 × p = 60p.
So, the fair price of an option to buy one share would be c = 60p/1.04 = 57.69p.
How should one determine the probability p? There is a standard method used
in the finance industry for choosing p in this example. That method is to assume that
4.1 The Expectation of a Random Variable 215
the present value of the mean ofX (the stock price in one year) is equal to the current
value of the stock price. That is, assume that the expected value of buying one share
of stock and waiting one year to sell is the same as the result of investing the current
cost of the stock risk-free for one year (multiplying by 1.04 in this example). In our
example, this means E(X) = 200 × 1.04. Since E(X) = 260p + 180(1− p), we set
200 × 1.04 = 260p + 180(1− p),
and obtain p = 0.35. The resulting price of an option to buy one share for $200 in
one year would be $57.69 × 0.35 = $20.19. This price is called the risk-neutral price
of the option.One can prove (see Exercise 14 in this section) that any price other than
$20.19 for the option would lead to unpleasant consequences in the market.  
Functions of Several Random Variables
Example
4.1.15
The Expectation of a Function of Two Variables. Let X and Y have a joint pdf, and
suppose that we want the mean of X2 + Y 2. The most straightforward but most
difficult way to do this would be to use the methods of Sec. 3.9 to find the distribution
of Z = X2 + Y 2 and then apply the definition of mean to Z.  
There is a version of Theorem 4.1.1 for functions of more than one random variable.
Its proof is not given here.
Theorem
4.1.2
Law of the Unconscious Statistician. Suppose that X1, . . . , Xn are random variables
with the joint pdf f (x1, . . . , xn). Let r be a real-valued function of n real variables,
and suppose that Y = r(X1, . . . , Xn). Then E(Y) can be determined directly from the
relation
E(Y) =
 
. . .
Rn
 
r(x1, . . . , xn)f (x1, . . . , xn) dx1 . . . dxn,
if the mean exists. Similarly, if X1, . . . , Xn have a discrete joint distribution with p.f.
f (x1, . . . , xn), the mean of Y = r(X1, . . . , Xn) is
E(Y) =
 
All x1,...,xn
r(x1, . . . , xn)f (x1, . . . , xn),
if the mean exists.
Example
4.1.16
Determining the Expectation of a Function of Two Variables. Suppose that a point (X, Y )
is chosen at random from the square S containing all points (x, y) such that 0 ≤ x ≤ 1
and 0 ≤ y ≤ 1. We shall determine the expected value of X2 + Y 2.
Since X and Y have the uniform distribution over the square S, and since the
area of S is 1, the joint pdf of X and Y is
f (x, y) =
 
1 for (x, y) ∈ S,
0 otherwise.
Therefore,
E(X2 + Y 2) =
  ∞
−∞
  ∞
−∞
(x2 + y2)f (x, y) dx dy
=
  1
0
  1
0
(x2 + y2) dx dy = 2
3
.  
216 Chapter 4 Expectation
Note: More General Distributions. In Example 3.2.7, we introduced a type of distribution
that was neither discrete nor continuous. It is possible to define expectations
for such distributions also. The definition is rather cumbersome, and we shall not
pursue it here.
Summary
The expectation, expected value, or mean of a random variable is a summary of its
distribution. If the probability distribution is thought of as a distribution of mass
along the real line, then the mean is the center of mass. The mean of a function r of a
random variable X can be calculated directly from the distribution of X without first
finding the distribution of r(X). Similarly, the mean of a function of a random vector
X can be calculated directly from the distribution of X.

### Exercises

1. Suppose that X has the uniform distribution on the
interval [a, b]. Find the mean of X.
2. If an integer between 1 and 100 is to be chosen at
random, what is the expected value?
3. In a class of 50 students, the number of students ni of
each age i is shown in the following table:
Agei ni
18 20
19 22
20 4
21 3
25 1
If a student is to be selected at random from the class, what
is the expected value of his age?
4. Suppose that one word is to be selected at random from
the sentence the girl put on her beautiful red hat. If X
denotes the number of letters in the word that is selected,
what is the value of E(X)?
5. Suppose that one letter is to be selected at random from
the 30 letters in the sentence given in Exercise 4. If Y
denotes the number of letters in the word in which the
selected letter appears, what is the value of E(Y)?
6. Suppose that a random variable X has a continuous
distribution with the pdf f given in Example 4.1.6. Find
the expectation of 1/X.
7. Suppose that a random variable X has the uniform distribution
on the interval [0, 1]. Show that the expectation
of 1/X is infinite.
8. Suppose that X and Y have a continuous joint distribution
for which the joint pdf is as follows:
f (x, y) =
 
12y2 for 0 ≤ y ≤ x ≤ 1,
0 otherwise.
Find the value of E(XY).
9. Suppose that a point is chosen at random on a stick of
unit length and that the stick is broken into two pieces at
that point. Find the expected value of the length of the
longer piece.
10. Suppose that a particle is released at the origin of
the xy-plane and travels into the half-plane where x >0.
Suppose that the particle travels in a straight line and that
the angle between the positive half of the x-axis and this
line is α, which can be either positive or negative. Suppose,
finally, that the angle α has the uniform distribution on the
interval [−π/2, π/2]. Let Y be the ordinate of the point at
which the particle hits the vertical line x = 1. Show that
the distribution of Y is a Cauchy distribution.
11. Suppose that the random variables X1, . . . , Xn form
a random sample of size n from the uniform distribution
on the interval [0, 1]. Let Y1 = min{X1, . . . , Xn
}, and let
Yn
= max{X1, . . . , Xn
}. Find E(Y1) and E(Yn).
12. Suppose that the random variables X1, . . . , Xn form
a random sample of size n from a continuous distribution
for which the c.d.f. is F, and let the random variables Y1
and Yn be defined as in Exercise 11. Find E[F(Y1)] and
E[F(Yn)].
13. Astock currently sells for $110 per share. Let the price
of the stock at the end of a one-year period beX, which will
take one of the values $100 or $300. Suppose that you have
the option to buy shares of this stock at $150 per share
at the end of that one-year period. Suppose that money could earn 5.8% risk-free over that one-year period. Find
the risk-neutral price for the option to buy one share.
14. Consider the situation of pricing a stock option as in
Example 4.1.14.We want to prove that a price other than
$20.19 for the option to buy one share in one year for $200
would be unfair in some way.
a. Suppose that an investor (who has several shares of
the stock already) makes the following transactions.
She buys three more shares of the stock at $200 per
share and sells four options for $20.19 each. The investor
must borrow the extra $519.24 necessary to
make these transactions at 4% for the year. At the
end of the year, our investor might have to sell four
shares for $200 each to the person who bought the
options. In any event, she sells enough stock to pay
back the amount borrowed plus the 4 percent interest.
Prove that the investor has the same net worth
(within rounding error) at the end of the year as she
would have had without making these transactions,
no matter what happens to the stock price. (Acombination
of stocks and options that produces no change
in net worth is called a risk-free portfolio.)
b. Consider the same transactions as in part (a), but
this time suppose that the option price is $x where
x <20.19. Prove that our investor loses |4.16x − 84|
dollars of net worth no matter what happens to the
stock price.
c. Consider the same transactions as in part (a), but
this time suppose that the option price is $x where
x >20.19. Prove that our investor gains 4.16x − 84
dollars of net worth no matter what happens to the
stock price.
The situations in parts (b) and (c) are called arbitrage
opportunities. Such opportunities rarely exist for any
length of time in financial markets. Imagine what would
happen if the three shares and four options were changed
to three million shares and four million options.
15. In Example 4.1.14, we showed how to price an option
to buy one share of a stock at a particular price at a particular
time in the future. This type of option is called a call
option. A put option is an option to sell a share of a stock
at a particular price $y at a particular time in the future.
(If you don't own any shares when you wish to exercise
the option, you can always buy one at the market price
and then sell it for $y.) The same sort of reasoning as in
Example 4.1.14 could be used to price a put option. Consider
the same stock as in Example 4.1.14 whose price in
one year is X with the same distribution as in the example
and the same risk-free interest rate. Find the risk-neutral
price for an option to sell one share of that stock in one
year at a price of $220.
16. Let Y be a discrete random variable whose p.f. is the
function f in Example 4.1.4. Let X = |Y |. Prove that the
distribution of X has the pdf in Example 4.1.5.