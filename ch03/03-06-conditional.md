(sec-3-6)=
# Conditional Distributions

*We generalize the concept of conditional probability to conditional distributions. Recall that distributions are just collections of probabilities of events determined by random variables. Conditional distributions will be the probabilities of events determined by some random variables conditional on events determined by other random variables. The idea is that there will typically be many random variables of interest in an applied problem. After we observe some of those random variables, we want to be able to adjust the probabilities associated with the ones that have not yet been observed. The conditional distribution of one random variable $X$ given another $Y$ will be the distribution that we would use for $X$ after we learn the value of $Y$.*

| Stolen X | Brand Y 1 | 2 | 3 | 4 | 5 | Total |
| - | - | - | - | - | - | - |
| 0 | 0.129 | 0.298 | 0.161 | 0.280 | 0.108 | 0.976 |
| 1 | 0.010 | 0.010 | 0.001 | 0.002 | 0.001 | 0.024 |
| Total | 0.139 | 0.308 | 0.162 | 0.282 | 0.109 | 1.000 |

: Joint PF for @exm-3-6-1 {#tbl-3-7}

(sec-3-6-1)=
# Discrete Conditional Distributions

:::: {prf:example} Auto Insurance
:label: exm-3-6-1
:enumerator: 3.6.1

Insurance companies keep track of how likely various cars are to be stolen. Suppose that a company in a particular area computes the joint distribution of car brands and the indicator of whether the car will be stolen during a particular year that appears in @tbl-3-7.

We let $X = 1$ mean that a car is stolen, and we let $X = 0$ mean that the car is not stolen. We let $Y$ take one of the values from 1 to 5 to indicate the brand of car as indicated in @tbl-3-7. If a customer applies for insurance for a particular brand of car, the company needs to compute the distribution of the random variable $X$ as part of its premium determination. The insurance company might adjust their premium according to a risk factor such as likelihood of being stolen. Although, overall, the probability that a car will be stolen is 0.024, if we assume that we know the brand of car, the probability might change quite a bit. This section introduces the formal concepts for addressing this type of problem.

::::

Suppose that $X$ and $Y$ are two random variables having a discrete joint distribution for which the joint pmf is $f$. As before, we shall let $f_1$ and $f_2$ denote the marginal pmf's of $X$ and $Y$, respectively. After we observe that $Y = y$, the probability that the random variable $X$ will take a particular value $x$ is specified by the following conditional probability:

$$
\begin{align*}
\Pr(X = x \mid Y = y) &= \frac{\Pr(X = x \text{ and } Y = y)}{\Pr(Y = y)} \\
&= \frac{f(x,y)}{f_2(y)}.
\end{align*}
$$

In other words, if it is known that $Y = y$, then the probability that $X = x$ will be updated to the value in @eq-3-6-1. Next, we consider the entire distribution of $X$ after learning that $Y = y$.

:::: {prf:definition} Conditional Distribution / pmf
:label: def-3-6-1

Let $X$ and $Y$ have a discrete joint distribution with joint pmf $f$. Let $f_2$ denote the marginal pmf of $Y$. For each $y$ such that $f_2(y) > 0$, define

$$
g_1(x \mid y) = \frac{f(x,y)}{f_2(y)}.
$$ {#eq-3-6-2}

Then $g_1$ is called the **conditional pmf of $X$ given $Y$**. The discrete distribution whose pmf
is $g_1(\cdot \mid y)$ is called the **conditional distribution of $X$ given that $Y = y$**.

::::

<table id="tbl-3-8">
<thead>
<tr>
    <th></th>
    <th colspan="5" align="center"><span data-qmd="**Brand $Y$**"></span></th>
</tr>
<tr>
    <th><span data-qmd="Stolen $X$"></span></th>
    <th>1</th>
    <th>2</th>
    <th>3</th>
    <th>4</th>
    <th>5</th>
</tr>
</thead>
<tbody>
<tr>
    <td>0</td>
    <td>0.928</td>
    <td>0.968</td>
    <td>0.994</td>
    <td>0.993</td>
    <td>0.991</td>
</tr>
<tr>
    <td>1</td>
    <td>0.072</td>
    <td>0.032</td>
    <td>0.006</td>
    <td>0.007</td>
    <td>0.009</td>
</tr>
</tbody>
</table>

We should verify that $g_1(x \mid y)$ is actually a pmf as a function of $x$ for each $y$. Let $y$ be such that $f_2(y) > 0$. Then $g_1(x \mid y) \geq 0$ for all $x$ and
 
$$
\sum_{x}g_1(x \mid y) = \frac{1}{f_2(y)}\sum_{x}f(x,y) = \frac{1}{f_2(y)}f_2(y) = 1.
$$

Notice that we do not bother to define $g_1(x \mid y)$ for those $y$ such that $f_2(y) = 0$.

Similarly, if $x$ is a given value of $X$ such that $f_1(x) = \Pr(X = x) > 0$, and if $g_2(y \mid x)$ is the conditional pmf of $Y$ given that $X = x$, then

$$
g_2(y \mid x) = \frac{f(x,y)}{f_1(x)}
$$ {#eq-3-6-3}

For each $x$ such that $f_1(x) > 0$, the function $g_2(y \mid x)$ will be a pmf as a function of $y$.

:::: {prf:example} Calculating a Conditional pmf from a Joint pmf
:label: exm-3-6-2
:enumerator: 3.6.2

Suppose that the joint pmf of $X$ and $Y$ is as specified in @tbl-3-4 in @exm-3-5-2. We shall determine the conditional pmf of $Y$ given that $X = 2$.

The marginal pmf of $X$ appears in the Total column of @tbl-3-4, so $f_1(2) = \Pr(X = 2) = 0.6$. Therefore, the conditional probability $g_2(y \mid 2)$ that $Y$ will take a particular value $y$ is

$$
g_2(y \mid 2) = \frac{f(2, y)}{0.6}.
$$

It should be noted that for all possible values of $y$, the conditional probabilities $g_2(y \mid 2)$ must be proportional to the joint probabilities $f(2, y)$. In this example, each value of $f(2, y)$ is simply divided by the constant $f_1(2) = 0.6$ in order that the sum of the results will be equal to 1. Thus,

$$
g_2(1 \mid 2) = 1/2, \; g_2(2 \mid 2) = 0, \; g_2(3 \mid 2) = 1/6, \; g_2(4 \mid 2) = 1/3.
$$

::::

:::: {prf:example} Auto Insurance
:label: exm-3-6-3
:enumerator: 3.6.3

Consider again the probabilities of car brands and cars being stolen in @exm-3-6-1. The conditional distribution of $X$ (being stolen) given $Y$ (brand) is given in @tbl-3-8. It appears that Brand 1 is much more likely to be stolen than other cars in this area, with Brand 1 also having a significant chance of being stolen.

::::

(sec-3-6-2)=
# Continuous Conditional Distributions

::: {.callout-tip title="Example 3.6.4"}
::: {#exm-3-6-4}

# Example 3.6.4: Processing Times

A manufacturing process consists of two stages. The first stage takes $Y$ minutes, and the whole process takes $X$ minutes (which includes the first $Y$ minutes). Suppose that $X$ and $Y$ have a joint continuous distribution with joint
pdf

$$
f(x, y) = \begin{cases}
e^{-x} &\text{for }0 \leq y \leq x < \infty \\
0 &\text{otherwise.}
\end{cases}
$$

After we learn how much time $Y$ that the first stage takes, we want to update our distribution for the total time $X$. In other words, we would like to be able to compute a conditional distribution for $X$ given $Y = y$. We cannot argue the same way as we did with discrete joint distributions, because $\{Y = y\}$ is an event with probability 0 for all $y$.

:::
:::

To facilitate the solutions of problems such as the one posed in @exm-3-6-4, the concept of conditional probability will be extended by considering the definition of the conditional pmf of $X$ given in @eq-3-6-2 and the analogy between a pmf and a pdf

::: {.callout-note title="Definition 3.6.2"}
::: {#def-3-6-2}

# Definition 3.6.2: Conditional pdf

Let $X$ and $Y$ have a continuous joint distribution with joint pdf $f$ and respective marginals $f_1$ and $f_2$. Let $y$ be a value such that $f_2(y) > 0$. Then the conditional pdf $g_1$ of $X$ given that $Y = y$ is defined as follows:

$$
g_1(x \mid y) = \frac{f(x,y)}{f_2(y)} \; \text{ for } -\infty < x < \infty.
$$ {#eq-3-6-4}

For values of $y$ such that $f_2(y) = 0$, we are free to define $g_1(x \mid y)$ however we wish, so long as $g_1(x \mid y)$ is a pdf as a function of $x$.

:::
:::

It should be noted that @eq-3-6-2 and @eq-3-6-4 are identical. However, @eq-3-6-2 was derived as the conditional probability that $X = x$ given that $Y = y$, whereas @eq-3-6-4 was defined to be the value of the conditional pdf of $X$ given that $Y = y$. In fact, we should verify that $g_1(x \mid y)$ as defined above really is a pdf

::: {.callout-caution title="Theorem 3.6.1"}
::: {#thm-3-6-1}

# Theorem 3.6.1

For each $y$, $g_1(x \mid y)$ defined in @def-3-6-2 is a pdf as a function of $x$.

::: {.proof}

If $f_2(y) = 0$, then $g_1$ is defined to be any pdf we wish, and hence it is a pdf. If $f_2(y) > 0$, $g_1$ is defined by @eq-3-6-4. For each such $y$, it is clear that $g_1(x \mid y) \geq 0$ for all $x$. Also, if $f_2(y) > 0$, then

$$
\int_{-\infty}^{\infty}g_1(x \mid y)dx = \frac{\int_{-\infty}^{\infty}f(x,y)dx}{f_2(y)} = \frac{f_2(y)}{f_2(y)} = 1,
$$

by using the formula for $f_2(y)$ in @eq-3-5-3.

:::

:::
:::

<!-- Stopping point 2024-10-01 -->

::: {.callout-tip title="Example 3.6.5"}
::: {#exm-3-6-5}

# Example 3.6.5: Processing Times

In @exm-3-6-4, $Y$ is the time that the first stage of a process takes, while $X$ is the total time of the two stages. We want to calculate the conditional pdf of $X$ given $Y$. We can calculate the marginal pdf of $Y$ as follows: For each $y$, the possible values of $X$ are all $x \geq y$, so for each $y > 0$,

$$
f_2(y) = \int_{y}^{\infty}e^{-x}\mathrm{d}x = e^{-y},
$$

and $f_2(y) = 0$ for $y < 0$. For each $y \geq 0$, the conditional pdf of $X$ given $Y = y$ is then

$$
g_1(x \mid y) = \frac{f(x,y)}{f_2(y)} = \frac{e^{-x}}{e^{-y}} = e^{y-x}, \; \text{ for }x \geq y,
$$

and $g_1(x \mid y) = 0$ for $x < y$. So, for example, if we observe $Y = 4$ and we want the conditional probability that $X \geq 9$, we compute

$$
\Pr(X \geq 9 \mid Y = 4) = \int_{9}^{\infty}e^{4-x}dx = e^{-5} \approx 0.0067.
$$

:::
:::

```{figure} images/fig-3-20.svg
:label: fig-3-20
:enumerator: 3.20
:align: center
:width: 80%

The conditional pdf $g_1(x \mid y_0)$ is proportional to $f(x, y_0)$
```

@def-3-6-2 has an interpretation that can be understood by considering @fig-3-20. The joint pdf $f$ defines a surface over the $xy$-plane for which the height $f(x, y)$ at each point $(x, y)$ represents the relative likelihood of that point. For instance, if it is known that $Y = y_0$, then the point $(x, y)$ must lie on the line $y = y0$ in the $xy$-plane, and the relative likelihood of any point $(x, y_0)$ on this line is $f(x, y_0)$. Hence, the conditional pdf $g_1(x \mid y_0)$ of $X$ should be proportional to $f(x, y_0)$. In other words, $g_1(x \mid y_0)$ is essentially the same as $f(x, y_0)$, but it includes a constant factor $1/[f_2(y_0)]$, which is required to make the conditional pdf integrate to unity over all values of $x$.

Similarly, for each value of x such that f1(x) > 0, the conditional pdf of Y given
that X = x is defined as follows:


This equation is identical to Eq. (3.6.3), which was derived for discrete distributions.

If f1(x) = 0, then g2(y|x) is arbitrary so long as it is a pdf as a function of y.

:::: {prf:example} Calculating a Conditional pdf from a Joint pdf
:label: exm-3-6-6
:enumerator: 3.6.6

Suppose that the joint pdf of X and
Y is as specified in Example 3.4.8 on page 122.We shall first determine the conditional
pdf of Y given that X = x and then determine some probabilities for Y given the
specific value X = 1/2.
The set S for which f (x, y) > 0 was sketched in Fig. 3.12 on page 123. Furthermore,
the marginal pdf f1 was derived in Example 3.5.3 on page 132 and sketched
in Fig. 3.17 on page 133. It can be seen from Fig. 3.17 that f1(x) > 0 for−1<x <1 but
not for x = 0. Therefore, for each given value of x such that −1< x <0 or 0 < x <1,
the conditional pdf g2(y|x) of Y will be as follows:


In particular, if it is known that X = 1/2, then Pr

::::

## Note: A Conditional pdf Is Not the Result of Conditioning on a Set of Probability Zero.
The conditional pdf g1(x|y) of X given Y = y is the pdf we would use for
X if we were to learn that Y = y. This sounds as if we were conditioning on the event
{Y = y}, which has zero probability if Y has a continuous distribution. Actually, for
the cases we shall see in this text, the value of g1(x|y) is a limit:
g1(x|y) = lim
 →0
∂
∂x
Pr(X ≤ x|y −   < Y ≤ y +  ). (3.6.6)
The conditioning event {y −   ≤ Y ≤ y +  } in Eq. (3.6.6) has positive probability if
the marginal pdf of Y is positive at y. The mathematics required to make this rigorous
is beyond the scope of this text. (See Exercise 11 in this section and Exercises 25
and 26 in Sec. 3.11 for results that we can prove.) Another way to think about conditioning
on a continuous random variable is to notice that the conditional pdf's that
we compute are typically continuous as a function of the conditioning variable. This
means that conditioning on Y = y or on Y = y +   for small   will produce nearly
the same conditional distribution for X. So it does not matter much if we use Y = y
as a surogate for Y close to y. Nevertheless, it is important to keep in mind that the
conditional pdf of X given Y = y is better thought of as the conditional pdf of X
given that Y is very close to y. This wording is awkward, so we shall not use it, but
we must remember the distinction between the conditional pdf and conditioning
on an event with probability 0. Despite this distinction, it is still legitimate to treat Y
as the constant y when dealing with the conditional distribution of X given Y = y.
For mixed joint distributions, we continue to use Eqs. (3.6.2) and (3.6.3) to define
conditional pmf's and pdf's.
Definition
3.6.3
Conditional pmf or pdf from Mixed Distribution. Let X be discrete and let Y be
continuous with joint pmf/pdf f . Then the conditional pmf ofX given Y = y is defined
by Eq. (3.6.2), and the conditional pdf of Y given X = x is defined by Eq. (3.6.3).

(sec-3-6-3)=
# Construction of the Joint Distribution

## Example
3.6.7
Defective Parts. Suppose that a certain machine produces defective and nondefective
parts, but we do not know what proportion of defectives we would find among
all parts that could be produced by this machine. Let P stand for the unknown
proportion of defective parts among all possible parts produced by the machine. Ifwe
were to learn that P = p, we might be willing to say that the parts were independent
of each other and each had probability p of being defective. In other words, if we
condition on P = p, then we have the situation described in Example 3.1.9. As in
that example, suppose that we examine n parts and let X stand for the number of
defectives among the n examined parts. The distribution ofX, assuming that we know
P = p, is the binomial distribution with parameters n and p. That is, we can let the
binomial pmf (3.1.4) be the conditional pmf of X given P = p, namely,
g1(x|p) =


n
x
 
px(1− p)n−x, for x = 0, . . . , n.
3.6 Conditional Distributions 147
We might also believe thatP has a continuous distribution with pdf such as f2(p) = 1
for 0 ≤ p ≤ 1. (This means that P has the uniform distribution on the interval [0, 1].)
We know that the conditional pmf g1 of X given P = p satisfies
g1(x|p) = f (x, p)
f2(p)
,
where f is the joint pmf/pdf of X and P. If we multiply both sides of this equation
by f2(p), it follows that the joint pmf/pdf of X and P is
f (x, p) = g1(x|p)f2(p) =


n
x
 
px(1− p)n−x, for x = 0, . . . , n, and 0 ≤ p ≤ 1.
 
The construction in Example 3.6.7 is available in general, as we explain next.
Generalizing the Multiplication Rule for Conditional Probabilities Aspecial case
of Theorem 2.1.2, the multiplication rule for conditional probabilities, says that if
A and B are two events, then Pr(A ∩ B) = Pr(A) Pr(B|A). The following theorem,
whose proof is immediate from Eqs. (3.6.4) and (3.6.5), generalizes Theorem 2.1.2 to
the case of two random variables.
Theorem
3.6.2
Multiplication Rule for Distributions. Let X and Y be random variables such that X
has pmf or pdf f1(x) and Y has pmf or pdf f2(y). Also, assume that the conditional
pmf or pdf of X given Y = y is g1(x|y) while the conditional pmf or pdf of Y given
X = x is g2(y|x). Then for each y such that f2(y) > 0 and each x,
f (x, y) = g1(x|y)f2(y), (3.6.7)
where f is the joint pmf, pdf, or pmf/pdf of X and Y . Similarly, for each x such that
f1(x) > 0 and each y,
f (x, y) = f1(x)g2(y|x). (3.6.8)
In Theorem 3.6.2, if f2(y0) = 0 for some value y0, then it can be assumed without
loss of generality that f (x, y0) = 0 for all values of x. In this case, both sides of
Eq. (3.6.7) will be 0, and the fact that g1(x|y0) is not uniquely defined becomes
irrelevant. Hence, Eq. (3.6.7) will be satisfied for all values of x and y. A similar
statement applies to Eq. (3.6.8).
Example
3.6.8
Waiting in a Queue. Let X be the amount of time that a person has to wait for service
in a queue. The faster the server works in the queue, the shorter should be the
waiting time. Let Y stand for the rate at which the server works, which we will take
to be unknown. A common choice of conditional distribution for X given Y = y has
conditional pdf for each y >0:
g1(x|y) =
 
ye
−xy for x ≥ 0,
0 otherwise.
We shall assume that Y has a continuous distribution with pdf f2(y) = e
−y fory >0.
Now we can construct the joint pdf of X and Y using Theorem 3.6.2:
f (x, y) = g1(x|y)f2(y) =
 
ye
−y(x+1) for x ≥ 0, y >0,
0 otherwise.  
148 Chapter 3 Random Variables and Distributions
Example
3.6.9
Defective Parts. Let X be the number of defective parts in a sample of size n, and
let P be the proportion of defectives among all parts, as in Example 3.6.7. The joint
pmf/p.d.f of X and P = p was calculated there as
f (x, p) = g1(x|p)f2(p) =


n
x
 
px(1− p)n−x, for x = 0, . . . , n and 0 ≤ p ≤ 1.
We could now compute the conditional pdf of P given X = x by first finding the
marginal pmf of X:
f1(x) =
  1
0


n
x
 
px(1− p)n−xdp, (3.6.9)
The conditional pdf of P given X = x is then
g2(p|x) = f (x, p)
f1(x)
= px(1− p)n−x
  1
0 qx(1− q)n−xdq
, for 0<p <1. (3.6.10)
The integral in the denominator of Eq. (3.6.10) can be tedious to calculate, but it can
be found. For example, if n = 2 and x = 1, we get
  1
0
q(1− q)dq = 1
2
− 1
3
= 1
6
.
In this case, g2(p|1) = 6p(1− p) for 0 ≤ p ≤ 1.  
Bayes' Theorem and the Law of Total Probability for Random Variables The
calculation done in Eq. (3.6.9) is an example of the generalization of the law of total
probability to random variables. Also, the calculation in Eq. (3.6.10) is an example of
the generalization of Bayes' theorem to random variables. The proofs of these results
are straightforward and not given here.
Theorem
3.6.3
Law of Total Probability for Random Variables. If f2(y) is the marginal pmf or pdf of a
random variable Y and g1(x|y) is the conditional pmf or pdf of X given Y = y, then
the marginal pmf or pdf of X is
f1(x) =
 
y
g1(x|y)f2(y), (3.6.11)
if Y is discrete. If Y is continuous, the marginal pmf or pdf of X is
f1(x) =
  ∞
−∞
g1(x|y)f2(y) dy. (3.6.12)
There are versions of Eqs. (3.6.11) and (3.6.12) with x and y switched and the
subscripts 1 and 2 switched. These versions would be used if the joint distribution
of X and Y were constructed from the conditional distribution of Y given X and the
marginal distribution of X.
Theorem
3.6.4
Bayes' Theorem for Random Variables. Iff2(y) is the marginal pmf or pdf of a random
variable Y and g1(x|y) is the conditional pmf or pdf of X given Y = y, then the
conditional pmf or pdf of Y given X = x is
g2(y|x) = g1(x|y)f2(y)
f1(x)
, (3.6.13)
3.6 Conditional Distributions 149
where f1(x) is obtained from Eq. (3.6.11) or (3.6.12). Similarly, the conditional pmf
or pdf of X given Y = y is
g1(x|y) = g2(y|x)f1(x)
f2(y)
, (3.6.14)
where f2(y) is obtained from Eq. (3.6.11) or (3.6.12) with x and y switched and with
the subscripts 1 and 2 switched.
Example
3.6.10
Choosing Points from Uniform Distributions. Suppose that a point X is chosen from
the uniform distribution on the interval [0, 1], and that after the valueX = x has been
observed (0 < x <1), a point Y is then chosen from the uniform distribution on the
interval [x, 1]. We shall derive the marginal pdf of Y .
Since X has a uniform distribution, the marginal pdf of X is as follows:
f1(x) =
 
1 for 0 < x <1,
0 otherwise.
Similarly, for each value X = x (0 < x <1), the conditional distribution of Y is the
uniform distribution on the interval [x, 1]. Since the length of this interval is 1− x,
the conditional pdf of Y given that X = x will be
g2(y|x) =
⎧⎨
⎩
1
1− x
for x <y <1,
0 otherwise.
It follows from Eq. (3.6.8) that the joint pdf of X and Y will be
f (x, y) =
⎧⎨
⎩
1
1− x
for 0 < x < y <1,
0 otherwise.
(3.6.15)
Thus, for 0 < y <1, the value of the marginal pdf f2(y) of Y will be
f2(y) =
  ∞
−∞
f (x, y) dx =
  y
0
1
1− x
dx =−log(1− y). (3.6.16)
Furthermore, since Y cannot be outside the interval 0 < y <1, then f2(y) = 0 for
y ≤ 0 or y ≥ 1. This marginal pdf f2 is sketched in Fig. 3.21. It is interesting to note
that in this example the function f2 is unbounded.
We can also find the conditional pdf of X given Y = y by applying Bayes' theorem
(3.6.14). The product of g2(y|x) and f1(x) was already calculated in Eq. (3.6.15).
Figure 3.21 The marginal
pdf of Y in Example 3.6.10.
y
f2(y)
0 1
150 Chapter 3 Random Variables and Distributions
The ratio of this product to f2(y) from Eq. (3.6.16) is
g1(x|y) =
⎧⎨
⎩
−1
(1− x) log(1− y)
for 0 < x < y,
0 otherwise.  
Theorem
3.6.5
Independent Random Variables. Suppose that X and Y are two random variables
having a joint pmf, pdf, or pmf/pdf f . Then X and Y are independent if and only if
for every value of y such that f2(y) > 0 and every value of x,
g1(x|y) = f1(x). (3.6.17)
Proof Theorem 3.5.4 says that X and Y are independent if and only if f (x, y) can be
factored in the following form for −∞< x <∞and −∞< y <∞:
f (x, y) = f1(x)f2(y),
which holds if and only if, for all x and all y such that f2(y) > 0,
f1(x) = f (x, y)
f2(y)
. (3.6.18)
But the right side of Eq. (3.6.18) is the formula for g1(x|y). Hence, X and Y are
independent if and only if Eq. (3.6.17) holds for all x and all y such that f2(y) > 0.
Theorem 3.6.5 says that X and Y are independent if and only if the conditional pmf or
pdf of X given Y = y is the same as the marginal pmf or pdf of X for all y such that
f2(y) > 0. Because g1(x|y) is arbitrary when f2(y) = 0, we cannot expect Eq. (3.6.17)
to hold in that case.
Similarly, it follows from Eq. (3.6.8) that X and Y are independent if and only if
g2(y|x) = f2(y), (3.6.19)
for every value of x such that f1(x) > 0. Theorem 3.6.5 and Eq. (3.6.19) give the
mathematical justification for the meaning of independence that we presented on
page 136.
Note: Conditional Distributions Behave Just Like Distributions. As we noted on
page 59, conditional probabilities behave just like probabilities. Since distributions
are just collections of probabilities, it follows that conditional distributions behave
just like distributions. For example, to compute the conditional probability that a
discrete random variableX is in some interval [a, b] given Y = y, we must add g1(x|y)
for all values of x in the interval. Also, theorems that we have proven or shall prove
about distributions will have versions conditional on additional random variables.
We shall postpone examples of such theorems until Sec. 3.7 because they rely on
joint distributions of more than two random variables.

(sec-3-6-4)=
# Summary

The conditional distribution of one random variable X given an observed value y
of another random variable Y is the distribution we would use for X if we were to
learn that Y = y. When dealing with the conditional distribution of X given Y = y,
it is safe to behave as if Y were the constant y. If X and Y have joint pmf, pdf,
or pmf/pdf f (x, y), then the conditional pmf or pdf of X given Y = y is g1(x|y) =
3.6 Conditional Distributions 151
f (x, y)/f2(y), where f2 is the marginal pmf or pdf of Y . When it is convenient to
specify a conditional distribution directly, the joint distribution can be constructed
from the conditional together with the other marginal. For example,
f (x, y) = g1(x|y)f2(y) = f1(x)g2(y|x).
In this case, we have versions of the law of total probability and Bayes' theorem for
random variables that allow us to calculate the other marginal and conditional.
Two random variables X and Y are independent if and only if the conditional pmf
or pdf of X given Y = y is the same as the marginal pmf or pdf of X for all y such
that f2(y) > 0. Equivalently, X and Y are independent if and only if the conditional
pmf of pdf of Y given X = x is the same as the marginal pmf or pdf of Y for all x
such that f1(x) > 0.

(sec-3-6-5)=
# Exercises

1. Suppose that two random variables X and Y have the
joint pdf in Example 3.5.10 on page 139. Compute the
conditional pdf of X given Y = y for each y.
2. Each student in a certain high school was classified according
to her year in school (freshman, sophomore, junior,
or senior) and according to the number of times that
she had visited a certain museum (never, once, or more
than once).The proportions of students in the various classifications
are given in the following table:
More
Never Once than once
Freshmen 0.08 0.10 0.04
Sophomores 0.04 0.10 0.04
Juniors 0.04 0.20 0.09
Seniors 0.02 0.15 0.10
a. If a student selected at random from the high school
is a junior, what is the probability that she has never
visited the museum?
b. If a student selected at random from the high school
has visited the museum three times, what is the probability
that she is a senior?
3. Suppose that a point (X, Y ) is chosen at random from
the disk S defined as follows:
S = {(x, y) : (x − 1)2 + (y + 2)2 ≤ 9}.
Determine (a) the conditional pdf of Y for every given
value of X, and (b) Pr(Y > 0|X = 2).
4. Suppose that the joint pdf of two random variables X
and Y is as follows:
f (x, y) =
 
c(x + y2) for 0 ≤ x ≤ 1 and 0 ≤ y ≤ 1,
0 otherwise.
Determine (a) the conditional pdf of X for every given
value of Y , and (b) Pr(X < 1
2
|Y = 1
2 ).
5. Suppose that the joint pdf of two points X and Y
chosen by the process described in Example 3.6.10 is as
given by Eq. (3.6.15). Determine (a) the conditional pdf
of X for every given value of Y , and (b) Pr
 
X> 1
2
   
Y = 3
4
 
.
6. Suppose that the joint pdf of two random variables X
and Y is as follows:
f (x, y) =
 
c sin x for 0 ≤ x ≤ π/2 and 0 ≤ y ≤ 3,
0 otherwise.
Determine (a) the conditional pdf of Y for every given
value of X, and (b) Pr(1<Y <2|X = 0.73).
7. Suppose that the joint pdf of two random variables X
and Y is as follows:
f (x, y) =
⎧⎪⎨
⎪⎩
3
16 (4 − 2x − y) for x >0, y >0,
and 2x +y <4,
0 otherwise.
Determine (a) the conditional pdf of Y for every given
value of X, and (b) Pr(Y ≥ 2|X = 0.5).
8. Suppose that a person's score X on a mathematics aptitude
test is a number between 0 and 1, and that his score
Y on a music aptitude test is also a number between 0
and 1. Suppose further that in the population of all college
students in the United States, the scores X and Y are
distributed according to the following joint pdf:
f (x, y) =
 
2
5 (2x + 3y) for 0 ≤ x ≤ 1 and 0 ≤ y ≤ 1,
0 otherwise.
152 Chapter 3 Random Variables and Distributions
a. What proportion of college students obtain a score
greater than 0.8 on the mathematics test?
b. If a student's score on the music test is 0.3, what is the
probability that his score on the mathematics test will
be greater than 0.8?
c. If a student's score on the mathematics test is 0.3,
what is the probability that his score on the music
test will be greater than 0.8?
9. Suppose that either of two instruments might be used
for making a certain measurement. Instrument 1 yields a
measurement whose pdf h1 is
h1(x) =
 
2x for 0 < x <1,
0 otherwise.
Instrument 2 yields a measurement whose pdf h2 is
h2(x) =
 
3x2 for 0 < x <1,
0 otherwise.
Suppose that one of the two instruments is chosen at random
and a measurement X is made with it.
a. Determine the marginal pdf of X.
b. If the value of the measurement is X = 1/4, what is
the probability that instrument 1 was used?
10. In a large collection of coins, the probability X that a
head will be obtained when a coin is tossed varies from one
coin to another, and the distribution of X in the collection
is specified by the following pdf:
f1(x) =
 
6x(1− x) for 0 < x <1,
0 otherwise.
Suppose that a coin is selected at random from the collection
and tossed once, and that a head is obtained. Determine
the conditional pdf of X for this coin.
11. The definition of the conditional pdf of X given Y =
y is arbitrary if f2(y) = 0. The reason that this causes no
serious problem is that it is highly unlikely that we will
observe Y close to a value y0 such that f2(y0) = 0. To be
more precise, let f2(y0) = 0, and let A0 = [y0 −  , y0 +  ].
Also, let y1 be such that f2(y1) > 0, and let A1 = [y1 −
 , y1 +  ]. Assume that f2 is continuous at both y0 and y1.
Show that
lim
 →0
Pr(Y ∈ A0)
Pr(Y ∈ A1)
= 0.
That is, the probability that Y is close to y0 is much smaller
than the probability that Y is close to y1.

## Exercise 3.6.12

Let Y be the rate (calls per hour) at which calls arrive
at a switchboard. Let X be the number of calls during a
two-hour period. Suppose that the marginal pdf of Y is

and that the conditional pmf of X given Y = y is

* a.  Find themarginal pmf ofX. (Youmay use the formula)
* b. Find the conditional pdf g2(y|0) of Y given X = 0.
* c. Find the conditional pdf g2(y|1) of Y given X = 1.
* d. For what values of y is g2(y|1) > g2(y|0)? Does this agree with the intuition that the more calls you see, the higher you should think the rate is?

## Exercise 3.6.13

Start with the joint distribution of treatment group and response in Table 3.6 on page 138. For each treatment group, compute the conditional distribution of response given the treatment group. Do they appear to be very similar or quite different?
