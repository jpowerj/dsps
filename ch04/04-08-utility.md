(sec-4-8)=
# 4.8 Utility

(sec-4-8-0)=
# Overview

*Much of statistical inference consists of choosing between several available actions. Generally, we do not know for certain which choice will be best, because some important random variable has not yet been observed. For some values of that random variable one choice is best, and for other values some other choice is best. We can try to weigh the costs and benefits of the various choices against the probabilities that the various choices turn out to be best. Utility is one tool for assigning values to the costs and benefits of our choices. The expected value of the utility then balances the costs and benefits according to how likely the uncertain possibilities are.*

(sec-4-8-1)=
# 4.8.1 Utility Functions

:::: {prf:example} Choice of Gambles
:label: exm-4-8-1
:enumerator: 4.8.1
:::{.head}
## Example 4.8.1: Choice of Gambles
:::

Consider two gambles between which a gambler must choose.
Each gamble will be expressed as a random variable for which positive values mean
a gain to the gambler and negative values mean a loss to the gambler. The numerical
values of each random variable tell the number of dollars that the gambler gains or
loses. Let X have the p.f.
f (x) =
 
0.5 ifx = 500 or x =−350,
0 otherwise,
and let Y have the p.f.
g(y) =
 
1/3 ify = 40, y = 50, or y = 60,
0 otherwise,
It is simple to compute that E(X) = 75 and E(Y) = 50. How might a gambler choose
between these two gambles? IsX better than Y simply because it has higher expected
value?  

::::

In @exm-4-8-1, a gambler who does not desire to risk losing 350 dollars for the
chance of winning 500 dollars might prefer Y , which yields a certain gain of at least
40 dollars.

The theory of utility was developed during the 1930s and 1940s to describe a
person’s preference among gambles like those in Example 4.8.1. According to that
theory, a person will prefer a gamble X for which the expectation of a certain
function U(X) is a maximum, rather than a gamble for which simply the expected
gain E(X) is a maximum.

:::: {prf:definition} Utility Function
:label: def-4-8-1
:enumerator: 4.8.1
:::{.head}
## Definition 4.8.1: Utility Function
:::

A person's utility function $U$ is a function that assigns to each possible amount x (−∞< x <∞) a number U(x) representing the actual worth to the person of gaining the amount x.

::::

Example
4.8.2
Choice of Gambles. Suppose that a person’s utility function is U and that she must
choose between the gambles X and Y in Example 4.8.1. Then
E[U(X)]= 1
2
U(500) + 1
2
U(−350) (4.8.1)
and
E[U(Y)]= 1
3
U(60) + 1
3
U(50) + 1
3
U(40). (4.8.2)

## Figure 4.13

The utility
function for Example 4.8.2.

The person would prefer the gamble for which the expected utility of the gain, as
specified by Eq. (4.8.1) or Eq. (4.8.2), is larger.
As a specific example, consider the following utility function that penalizes losses
to a much greater extent than it rewards gains:

U(x) =
 
100 log(x + 100) − 461 if x ≥ 0,
x if x <0.
(4.8.3)

This function was chosen to be differentiable at x = 0, continuous everywhere, increasing,
concave forx >0, and linear forx <0.Agraph of U(x) is given in Fig. 4.13.
Using this specific U, we compute

E[U(X)]= 1
2
[100 log(600) − 461]+ 1
2
(−350)=−85.4,
E[U(Y)]= 1
3
[100 log(160) − 461]+ 1
3
[100 log(150) − 461]+ 1
3
[100 log(140) − 461]
= 40.4.

We see that a person with the utility function in Eq. (4.8.3) would prefer Y to X.
 
Here, we formalize the principle that underlies the choice between gambles illustrated in Example 4.8.1.

## Definition 4.8.2: Maximizing Expected Utility

We say that a person chooses between gambles by
maximizing expected utility if the following conditions hold. There is a utility function
U, and when the person must choose between any two gambles X and Y , he will
prefer X to Y if E[U(X)]>E[U(Y)] and will be indifferent between X and Y if
E[U(X)]= E[U(Y)].
In words, Definition 4.8.2 says that a person chooses between gambles by maximizing
expected utility if he will choose a gamble X for which E[U(X)] is a maximum.
If one adopts a utility function, then one can (at least in principle) make choices
between gambles by maximizing expected utility. The computational algorithms necessary
to perform the maximization often provide a practical challenge. Conversely,
if one makes choices between gambles in such a way that certain reasonable criteria
apply, then one can prove that there exists a utility function such that the choices correspond to maximizing expected utility. We shall not consider this latter problem in detail here; however, it is discussed by DeGroot (1970) and Schervish (1995,
chapter 3) along with other aspects of the theory of utility.

# Examples of Utility Functions

Since it is reasonable to assume that every person prefers a larger gain to a smaller
gain, we shall assume that every utility function U(x) is an increasing function of
the gain x. However, the shape of the function U(x) will vary from person to person
and will depend on each person’s willingness to risk losses of various amounts in
attempting to increase his gains.
For example, consider two gambles X and Y for which the gains have the following
probability distributions:

Pr(X =−3) = 0.5, Pr(X = 2.5) = 0.4, Pr(X = 6) = 0.1 (4.8.4)

and

Pr(Y =−2) = 0.3, Pr(Y = 1) = 0.4, Pr(Y = 3) = 0.3. (4.8.5)

We shall assume that a person must choose one of the following three decisions:
(i) accept gamble X, (ii) accept gamble Y , or (iii) do not accept either gamble. We
shall now determine the decision that a person would choose for three different utility
functions.

## Example 4.8.3: Linear Utility Function

Suppose that U(x) = ax + b for some constants a and b, where
a >0. In this case, for every gamble X, E[U(X)]= aE(X) + b. Hence, for every two
gambles X and Y , E[U(X)]>E[U(Y)] if and only if E(X) > E(Y). In other words, a
person who has a linear utility function will always choose a gamble for which the
expected gain is a maximum.
When the gambles X and Y are defined by Eqs. (4.8.4) and (4.8.5),
E(X) = (0.5)(−3) + (0.4)(2.5) + (0.1)(6) = 0.1
and
E(Y) = (0.3)(−2) + (0.4)(1) + (0.3)(3) = 0.7.
Furthermore, since the gain from not accepting either of these gambles is 0, the
expected gain from choosing not to accept either gamble is clearly 0. Since E(Y) >
E(X) > 0, it follows that a person who has a linear utility function would choose to
accept gamble Y . If gamble Y were not available, then the person would prefer to
accept gamble X rather than not to gamble at all.  

## Example 4.8.4: Cubic Utility Function

Suppose that a person’s utility function is U(x) = x3 for−∞<
x <∞. Then for the gambles defined by Eqs. (4.8.4) and (4.8.5),
E[U(X)]= (0.5)(−3)3 + (0.4)(2.5)3 + (0.1)(6)3 = 14.35
and
E[U(Y)]= (0.3)(−2)3 + (0.4)(1)3 + (0.3)(3)3 = 6.1.
Furthermore, the utility of not accepting either gamble is U(0) = 03 = 0. Since
E[U(X)]>E[U(Y)]> 0, it follows that the person would choose to accept gamble X.
If gamble X were not available, the person would prefer to accept gamble Y rather
than not to gamble at all.  

## Example 4.8.5: Logarithmic Utility Function

Suppose that a person’s utility function isU(x) = log(x +
4) forx >−4. Since limx→−4 log(x + 4)=−∞, a person who has this utility function
cannot choose a gamble in which there is any possibility of her gain being −4 or less.
For the gambles X and Y defined by Eqs. (4.8.4) and (4.8.5),
E[U(X)]= (0.5)(log 1) + (0.4)(log 6.5) + (0.1)(log 10) = 0.9790
and
E[U(Y)]= (0.3)(log 2) + (0.4)(log 5) + (0.3)(log 7) = 1.4355.
Furthermore, the utility of not accepting either gamble isU(0) = log 4 = 1.3863. Since
E[U(Y)]>U(0)>E[U(X)], it follows that the person would choose to accept gamble
Y . If gamble Y were not available, the person would prefer not to gamble at all rather
than to accept gamble X.  

# Selling a Lottery Ticket

Suppose that a person has a lottery ticket from which she will receive a random gain
of X dollars, where X has a specified probability distribution.We shall determine the
number of dollars for which the person would be willing to sell this lottery ticket.
Let U denote the person’s utility function. Then the expected utility of her gain
from the lottery ticket is E[U(X)]. If she sells the lottery ticket for x0 dollars, then her
gain is x0 dollars, and the utility of this gain isU(x0).The person would prefer to accept
x0 dollars as a certain gain rather than accept the random gain X from the lottery
ticket if and only if U(x0) > E[U(X)]. Hence, the person would be willing to sell the
lottery ticket for any amount x0 such that U(x0) > E[U(X)]. If U(x0) = E[U(X)], she
would be equally willing to either sell the lottery ticket or accept the random gain X.

## Example 4.8.6: Quadratic Utility Function

Suppose that U(x) = x2 for x ≥ 0, and suppose that the
person has a lottery ticket from which she will win either 36 dollars with probability
1/4 or 0 dollars with probability 3/4. For how many dollars x0 would she be willing to
sell this lottery ticket?
The expected utility of the gain from the lottery ticket is
E[U(X)]= 1
4
U(36) + 3
4
U(0) = 1
4
(362) + 3
4
(0) = 324.

Therefore, the person would be willing to sell the lottery ticket for any amount x0
such that U(x0) = x2
0 > 324. Hence, x0 > 18. In other words, although the expected
gain from the lottery ticket in this example is only 9 dollars, the person would not
sell the ticket for less than 18 dollars.  

## Example 4.8.7: Square Root Utility Function

Suppose now that U(x) = x1/2 for x ≥ 0, and consider
again the lottery ticket described in Example 4.8.6. The expected utility of the gain
from the lottery ticket in this case is
E[U(X)]= 1
4
U(36) + 3
4
U(0) = 1
4
(6) + 3
4
(0) = 1.5.

Therefore, the person would be willing to sell the lottery ticket for any amount x0
such that U(x0) = x
1/2
0 > 1.5. Hence, x0 > 2.25. In other words, although the expected
gain from the lottery ticket in this example is 9 dollars, the person would be willing
to sell the ticket for as little as 2.25 dollars.  

# Some Statistical Decision Problems

Much of the theory of statistical inference (the subject of Chapters 7–11 of this
text) deals with problems in which one has to make one of several available choices.
Generally, which choice is best depends on some random variable that has not yet
been observed. One example was already discussed in Sec. 4.5, where we introduced
the mean squared error (M.S.E.) and mean absolute error (M.A.E.) criteria for
predicting a random variable. In these cases, we have to choose a number d for our
prediction of a random variable Y . Which prediction will be best depends on the
value of Y that we do not yet know. Random variables like −|Y − d| and −(Y − d)2
are gambles, and the choice of gamble that minimizes M.A.E. or M.S.E. is the choice
that maximizes an expected utility.

## Example 4.8.8: Predicting a Random Variable

Suppose that Y is a random variable that we need
to predict. For each possible prediction d, there is a gamble Xd
=−|Y − d| that
specifies our gain when we are being judged by absolute error. Alternatively, if we
are being judged by squared error, the appropriate gamble to consider would be
Zd
=−(Y − d)2. Notice that these gambles are always negative, meaning that our
gain is negative because we lose according to how far Y is from the prediction d. If our
utility U is linear, then maximizing E[U(Xd)]by choice of d is the same as minimizing
M.A.E. Also, maximizing E[U(Zd)] by choice of d is the same as minimizing M.S.E.
The equivalence between maximizing expected utility and minimizing the mean error
would continue to hold if the prediction were allowed to depend on another random
variableW that we could observe before predicting. That is, our prediction would be
a function d(W), and Xd
=−|Y − d(W)| or Zd
=−[Y − d(W)]2 would be the gamble
whose expected utility we would want to compute.

## Example 4.8.9: Bounding a Random Variable

Suppose that Y is a random variable and that we are
interested in whether or not Y ≤ c for some constant c. For example, Y could be
the random variable P in our clinical trial Example 4.7.3.We might be interested in
whether or not P ≤ p0, where p0 is the probability that a patient will be a success
without any help from the treatment being studied. Suppose that we have to make
one of two available decisions:
(t) continue to promote the treatment, or
(a) abandon the treatment.

If we choose t , suppose that we stand to gain
Xt
=
 
106 ifP >p0,
−106 if P ≤ p0.
If we choose a, our gain will be Xa
= 0. If our utility function is U, then the expected
utility for choosing t is E[U(Xt)], and t would be the better choice if this value is
greater than U(0). For example, suppose that our utility is
U(x) =
 
x0.8 if x ≥ 0,
x if x <0.
(4.8.6)
Then U(0) = 0 and
E[U(Xt)]=−106 Pr(P ≤ p0) + [106]0.8 Pr(P > p0)
= 104.8 − (106 + 104.8) Pr(P ≤ p0).


So, E[U(Xt)]> 0 if Pr(P ≤ p0) < 104.8/(106 + 104.8) = 0.0594. It makes sense that t is
better than a if Pr(P ≤ p0) is small. The reason is that the utility of choosing t over a
is only positive whenP >p0. This example is in the spirit of hypothesis testing, which
will be the subject of Chapter 9.  

## Example 4.8.10: Investment

In Example 4.2.2, we compared two possible stock purchases based
on their expected returns and value at risk, VaR. Suppose that the investor has a
nonlinear utility function for dollars. To be specific, suppose that the utility of a return
of x would equal U(x) given in Eq. (4.8.6). We can calculate the expected utility of
the return from each of the two possible stock purchases in Example 4.2.2 to decide
which is more favorable. If R is the return per share and we buy s shares, then the
return is X = sR, and the expected utility of the return is

(sr)0.8f (r) dr, (4.8.7)

where f is the p.d.f. of R. For the first stock, the return per share is R1 distributed
uniformly on the interval [−10, 20], and the number of shares would be s1= 120. This
makes (4.8.7) equal to

For the second stock, the return per share is R2 distributed uniformly on the interval
[−4.5, 10], and the number of shares would be s2 = 200. This makes (4.8.7) equal to

With this utility function, the expected utility of the first stock purchase is actually
negative because the big gains (up to 120 ×20 =2400) add less to the utility (24000.8 =
506) than the big losses (up to 120×−10=−1200) take away from the utility. The
second stock purchase has positive expected utility, so it would be the preferred
choice in this example.  

# Summary

When we have to make choices in the face of uncertainty, we need to assess what our
gains and losses will be under each of the uncertain possibilities. Utility is the value
to us of those gains and losses. For example, if X represents the random gain from
a possible choice, then U(X) is the value to us of the random gain we would receive
if we were to make that choice. We should make the choice such that E[U(X)] is as
large as possible.

# Exercises

1. Let α >0. A decision maker has a utility function for
money of the form
U(x) =
 
xα if x >0,
x if x ≤ 0.
Suppose that this decision maker is trying to decide
whether or not to buy a lottery ticket for $1. The lottery
ticket pays $500 with probability 0.001, and it pays $0 with
probability 0.999. What would the values of α have to be
in order for this decision maker to prefer buying the ticket
to not buying it?

2. Consider three gambles X, Y, and Z for which the
probability distributions of the gains are as follows:
Pr(X = 5) = Pr(X = 25) = 1/2,
Pr(Y = 10) = Pr(Y = 20) = 1/2,
Pr(Z = 15) = 1.
Suppose that a person’s utility function has the form
U(x) = x2 forx >0.Which of the three gambles would she
prefer?
3. Determine which of the three gambles in Exercise 2
would be preferred by a person whose utility function is
U(x) = x1/2 for x >0.
4. Determine which of the three gambles in Exercise 2
would be preferred by a person whose utility function
has the form U(x) = ax + b, where a and b are constants
(a > 0).
5. Consider a utility function U for which U(0) = 0 and
U(100) = 1. Suppose that a person who has this utility
function is indifferent to either accepting a gamble from
which his gain will be 0 dollars with probability 1/3 or 100
dollars with probability 2/3 or accepting 50 dollars as a
sure thing.What is the value of U(50)?
6. Consider a utility function U for which U(0) = 5,
U(1) = 8, and U(2) = 10. Suppose that a person who has
this utility function is indifferent to either of two gambles
X and Y, for which the probability distributions of the
gains are as follows:
Pr(X =−1) = 0.6, Pr(X = 0) = 0.2, Pr(X = 2) = 0.2;
Pr(Y = 0) = 0.9, Pr(Y = 1) = 0.1.
What is the value of U(−1)?
7. Suppose that a person must accept a gamble X of the
following form:
Pr(X = a) = p and Pr(X = 1− a) = 1− p,
where p is a given number such that 0 <p <1. Suppose
also that the person can choose and fix the value of a
(0 ≤ a ≤ 1) to be used in this gamble. Determine the value
of a that the person would choose if his utility function
was U(x) = log x for x >0.
8. Determine the value of a that a person would choose in
Exercise 7 if his utility function was U(x) = x1/2 for x ≥ 0.
9. Determine the value of a that a person would choose
in Exercise 7 if his utility function was U(x) = x for x ≥ 0.
10. Consider four gambles X1, X2, X3, and X4, for which
the probability distributions of the gains are as follows:
Pr(X1 = 0) = 0.2, Pr(X1 = 1) = 0.5, Pr(X1 = 2) = 0.3;
Pr(X2 = 0) = 0.4, Pr(X2 = 1) = 0.2, Pr(X2 = 2) = 0.4;
Pr(X3 = 0) = 0.3, Pr(X3 = 1) = 0.3, Pr(X3 = 2) = 0.4;
Pr(X4 = 0) = Pr(X4 = 2) = 0.5.
Suppose that a person’s utility function is such that she
prefersX1 toX2. If the person were forced to accept either
X3 or X4, which one would she choose?
11. Suppose that a person has a given fortune A>0 and
can bet any amount b of this fortune in a certain game
(0 ≤ b ≤ A). If he wins the bet, then his fortune becomes
A + b; if he loses the bet, then his fortune becomes A − b.
In general, let X denote his fortune after he has won or
lost. Assume that the probability of his winning is p (0 <
p <1) and the probability of his losing is 1− p. Assume
also that his utility function, as a function of his final fortune
x, is U(x) = log x for x >0. If the person wishes to
bet an amount b for which the expected utility of his fortune
E[U(X)] will be a maximum, what amount b should
he bet?
12. Determine the amount b that the person should bet in
Exercise 11 if his utility function is U(x) = x1/2 for x ≥ 0.
13. Determine the amount b that the person should bet in
Exercise 11 if his utility function is U(x) = x for x ≥ 0.
14. Determine the amount b that the person should bet in
Exercise 11 if his utility function is U(x) = x2 for x ≥ 0.
15. Suppose that a person has a lottery ticket from which
she will win X dollars, where X has the uniform distribution
on the interval [0, 4]. Suppose also that the person’s
utility function is U(x) = xα for x ≥ 0, where α is a given
positive constant. For how many dollars x0 would the person
be willing to sell this lottery ticket?
16. Let Y be a random variable that we would like to predict.
Suppose that we must choose a single number d as the
prediction and that we will lose (Y − d)2 dollars. Suppose
that our utility for dollars is a square root function:
U(x) =
  √
x if x ≥ 0,
−
√
−x if x <0.
Prove that the value of d that maximizes expected utility
is a median of the distribution of Y .

17. Reconsider the conditions of Example 4.8.9. This
time, suppose that p0 = 1/2 and
U(x) =
 
x0.9 if x ≥ 0,
x if x <0.
Suppose also that P has p.d.f. f (p) = 56p6(1− p) for 0 <
p <1. Decide whether or not it is better to abandon the
treatment.
