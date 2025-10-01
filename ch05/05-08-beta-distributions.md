(sec-5-8)=
# 5.8 The Beta Distributions

(sec-5-8-0)=
# Overview

*The family of beta distributions is a popular model for random variables that are known to take values in the interval $[0, 1]$. One common example of such a random variable is the unknown proportion of successes in a sequence of Bernoulli trials.*

(sec-5-8-1)=
# 5.8.1 The Beta Function

## Example 5.8.1: Defective Parts

A machine produces parts that are either defective or not, as in
Example 3.6.9 on page 148. Let P denote the proportion of defectives among all
parts that might be produced by this machine. Suppose that we observe n such parts,
and let X be the number of defectives among the n parts observed. If we assume that
the parts are conditionally independent given P, then we have the same situation as
in Example 3.6.9, where we computed the conditional p.d.f. of P given X = x as
g2(p|x) = px(1− p)n−x
  1
0 qx(1− q)n−xdq
, for 0<p <1. (5.8.1)
We are now in a position to calculate the integral in the denominator of Eq. (5.8.1).
The distribution with the resulting p.d.f. is a member a useful family that we shall
study in this section.  
Definition
5.8.1
The Beta Function. For each positive α and β, define
B(α, β) =
  1
0
xα−1(1− x)β−1dx.
The function B is called the beta function.
We can show that the beta function B is finite for all α, β > 0. The proof of the
following result relies on the methods from the end of Sec. 3.9 and is given at the end
of this section.
Theorem
5.8.1
For all α, β > 0,
B(α, β) =  (α) (β)
 (α + β)
. (5.8.2)
Example
5.8.2
Defective Parts. It follows from Theorem 5.8.1 that the integral in the denominator
of Eq. (5.8.1) is
  1
0
qx(1− q)n−xdq =  (x + 1) (n − x + 1)
 (n + 2)
= x!(n − x)!
(n + 1)!
.
The conditional p.d.f. of P given X = x is then
g2(p|x) = (n + 1)!
x!(n − x)!
px(1− p)n−x, for 0<p <1.  
328 Chapter 5 Special Distributions
Definition of the Beta Distributions
The distribution in Example 5.8.2 is a special case of the following.
Definition
5.8.2
Beta Distributions. Let α, β > 0 and let X be a random variable with p.d.f.
f (x|α, β) =
⎧⎨
⎩
 (α + β)
 (α) (β)
xα−1(1− x)β−1 for 0 < x <1,
0 otherwise.
(5.8.3)
Then X has the beta distribution with parameters α and β.
The conditional distribution of P given X = x in Example 5.8.2 is the beta
distribution with parameters x + 1 and n − x + 1. It can also be seen from Eq. (5.8.3)
that the beta distribution with parameters α = 1 and β = 1 is simply the uniform
distribution on the interval [0, 1].
Example
5.8.3
Castaneda v. Partida. In Example 5.2.6 on page 278, 220 grand jurors were chosen
from a population that is 79.1 percent Mexican American, but only 100 grand jurors
were Mexican American. The expected value of a binomial random variable X with
parameters 220 and 0.791 is E(X) = 220 × 0.791= 174.02. This is much larger than
the observed value of X = 100. Of course, such a discrepancy could occur by chance.
After all, there is positive probability of X = x for all x = 0, . . . , 220. Let P stand for
the proportion of Mexican Americans among all grand jurors that would be chosen
under the current system being used. The court assumed that X had the binomial
distribution with parameters n = 220 and p, conditional on P = p. We should then
be interested in whether P is substantially less than the value 0.791, which represents
impartial juror choice. For example, suppose that we define discrimination to mean
that P ≤ 0.8 × 0.791= 0.6328.We would like to compute the conditional probability
of P ≤ 0.6328 given X = 100.
Suppose that the distribution of P prior to observing X was the beta distribution
with parameters α and β. Then the p.d.f. of P was
f2(p) =  (α + β)
 (α) (β)
pα−1(1− p)β−1, for 0<p <1.
The conditional p.f. of X given P = p is the binomial p.f.
g1(x|p) =


220
x
 
px(1− p)220−x, for x = 0, . . . , 220.
We can now apply Bayes’ theorem for random variables (3.6.13) to obtain the conditional
p.d.f. of P given X = 100:
g2(p|100) =
 
220
100
 
p100(1− p)120  (α + β)
 (α) (β)
pα−1(1− p)β−1
f1(100)
=
 220
100
 
 (α + β)
 (α) (β)f1(100)
pα+100−1(1− p)β+120−1, (5.8.4)
for 0 < p <1, where f1(100) is the marginal p.f. of X at 100. As a function of
p the far right side of Eq. (5.8.4) is a constant times pα+100−1(1− p)β+120−1 for
0 < p <1. As such, it is clearly the p.d.f. of a beta distribution. The parameters
5.8 The Beta Distributions 329
of that beta distribution are α + 100 and β + 120. Hence, the constant must be
1/B(100 + α, 120 + β). That is,
g2(p|100) =  (α + β + 220)
 (α + 100) (β + 120)
pα+100−1(1− p)β+120−1, for 0<p <1.
(5.8.5)
After choosing values of α and β, we could compute Pr(P ≤ 0.6328|X = 100) and
decide how likely it is that there was discrimination.We will see how to choose α and
β after we learn how to compute the expected value of a beta random variable.  
Note: Conditional Distribution of P after Observing X with Binomial Distribution.
The calculation of the conditional distribution of P given X = 100 in Example
5.8.3 is a special case of a useful general result. In fact, the proof of the following
result is essentially given in Example 5.8.3, and will not be repeated.
Theorem
5.8.2
Suppose that P has the beta distribution with parameters α and β, and the conditional
distribution of X given P = p is the binomial distribution with parameters n and
p. Then the conditional distribution of P given X = x is the beta distribution with
parameters α + x and β + n − x.

# Moments of Beta Distributions

## Theorem 5.8.3: Moments. Suppose that X has the beta distribution with parameters α and β. Then
for each positive integer k,
E(Xk) = α(α + 1) . . . (α + k − 1)
(α + β)(α + β + 1) . . . (α + β + k − 1)
. (5.8.6)
In particular,

E(Xk) =
  1
0
xkf (x|α, β) dx
=  (α + β)
 (α) (β)
  1
0
xα+k−1(1− x)β−1 dx.
Therefore, by Eq. (5.8.2),
E(Xk) =  (α + β)
 (α) (β)
.  (α + k) (β)
 (α + k + β)
,
which simplifies to Eq. (5.8.6). The special case of the mean is simple, while the
variance follows easily from
E(X2) = α(α + 1)
(α + β)(α + β + 1)
.
There are too many beta distributions to provide tables in the back of the
book. Any good statistical package will be able to calculate the c.d.f.’s of many beta distributions, and some packages will also be able to calculate the quantile functions.

Figure 5.8 Probability of
discrimination as a function of $\beta$.
Probability of P at most 0.6328
20 40 60 80 100 b

The next example illustrates the importance of being able to calculate means and
c.d.f.’s of beta distributions.

## Example 5.8.4: Castaneda v. Partida

Continuing @exm-5-8-3, we are now prepared to see why, for
every reasonable choice one makes for α and β, the probability of discrimination in
Castaneda v. Partida is quite large. To avoid bias either for or against the defendant,
we shall suppose that, before learning X, the probability that a Mexican American
juror would be selected on each draw from the pool was 0.791. Let Y = 1 if a Mexican
American juror is selected on a single draw, and let Y = 0 if not. Then Y has the
Bernoulli distribution with parameter p given P = p and E(Y|p) = p. So the law of
total probability for expectations, Theorem 4.7.1, says that
Pr(Y = 1) = E(Y) = E[E(Y|P)]= E(P).
This means that we should choose α and β so that E(P) = 0.791. Because E(P) =
α/(α + β), this means that α = 3.785β. The conditional distribution of P given X =
100 is the beta distribution with parameters α + 100 and β + 120. For each value of
β >0, we can compute Pr(P ≤ 0.6328|X = 100) using α = 3.785β. Then, for each β we
can check whether or not that probability is small. A plot of Pr(P ≤ 0.6328|X = 100)
for various values of β is given in Fig. 5.8. From the figure, we see that Pr(P ≤
0.6328|X = 100) < 0.5 only for β ≥ 51.5. This makes α ≥ 194.9. We claim that the
beta distribution with parameters 194.9 and 51.5 as well as all others that make
Pr(P ≤ 0.6328|X = 100) < 0.5 are unreasonable because they are incredibly prejudiced
about the possibility of discrimination. For example, suppose that someone
actually believed, before observing X = 100, that the distribution of P was the beta
distribution with parameters 194.9 and 51.5. For this beta distribution, the probability
that there is discrimination would be Pr(P ≤ 0.6328) = 3.28 × 10−8, which is
essentially 0. All of the other priors with β ≥ 51.5 and α = 3.785β have even smaller
probabilities of {P ≤ 0.6328}. Arguing from the other direction, we have the following:
Anyone who believed, before observing X = 100, that E(P) = 0.791 and the
probability of discrimination was greater than 3.28 × 10−8, would believe that the
probability of discrimination is at least 0.5 after learning X = 100. This is then fairly
convincing evidence that there was discrimination in this case.  
Example
5.8.5
A Clinical Trial. Consider the clinical trial described in Example 2.1.4. Let P be the
proportion of all patients in a large group receiving imipramine who have no relapse
(called success). A popular model for P is that P has the beta distribution with
5.8 The Beta Distributions 331
parameters α and β. Choosing α and β can be done based on expert opinion about the
chance of success and on the effect that data should have on the distribution of P after
observing the data. For example, suppose that the doctors running the clinical trial
think that the probability of success should be around 1/3. LetXi
= 1 if the ith patient
is a success and Xi
= 0 if not.We are supposing that E(Xi
|p) = Pr(Xi
= 1|p) = p, so
the law of total probability for expectations (Theorem 4.7.1) says that
Pr(Xi
= 1) = E(Xi) = E[E(Xi
|P)]= E(P) = α
α + β
.
If we want Pr(Xi
= 1) = 1/3, we need α/(α + β) = 1/3, so β = 2α. Of course, the
doctors will revise the probability of success after observing patients from the study.
The doctors can choose α and β based on how that revision will occur.
Assume that the random variablesX1, X2, . . . (the indicators of success) are conditionally
independent given P = p. LetX = X1+ . . . + Xn be the number of patients
out of the first n who are successes. The conditional distribution of X given P = p
is the binomial distribution with parameters n and p, and the marginal distribution
of P is the beta distribution with parameters α and β. Theorem 5.8.2 tells us that
the conditional distribution of P given X = x is the beta distribution with parameters
α + x and β + n − x. Suppose that a sequence of 20 patients, all of whom are
successes, would raise the doctors’ probability of success from 1/3 up to 0.9. Then
0.9 = E(P|X = 20) = α + 20
α + β + 20
.
This equation implies that α + 20 = 9β. Combining this with β = 2α, we get α = 1.18
and β = 2.35.
Finally, we can ask, what will be the distribution of P after observing some
patients in the study? Suppose that 40 patients are actually observed, and 22 of them
recover (as inTable 2.1).Then the conditional distribution of P given this observation
is the beta distribution with parameters 1.18 + 22 = 23.18 and 2.35 + 18 = 20.35. It
follows that
E(P|X = 22) = 23.18
23.18 + 20.35
= 0.5325.
Notice how much closer this is to the proportion of successes (0.55) than was E(P) =
1/3.  
Proof of Theorem 5.8.1.
Theorem 5.8.1, i.e., Eq. (5.8.2), is part of the following useful result. The proof uses
Theorem 3.9.5 (multivariate transformation of random variables). If you did not
study Theorem 3.9.5, you will not be able to follow the proof of Theorem 5.8.4.
Theorem
5.8.4
LetU and V be independent random variables withU having the gamma distribution
with parameters α and 1 and V having the gamma distribution with parameters β and
1. Then
. X = U/(U + V ) and Y = U + V are independent,
. X has the beta distribution with parameters α and β, and
. Y has the gamma distribution with parameters α + β and 1.
Also, Eq. (5.8.2) holds.
332 Chapter 5 Special Distributions
Proof Because U and V are independent, the joint p.d.f. of U and V is the product
of their marginal p.d.f.’s, which are
f1(u) = uα−1e
−u
 (α)
, for u > 0,
f2(v) = vβ−1e
−v
 (β)
, for v >0.
So, the joint p.d.f. is
f (u, v) = uα−1vβ−1e
−(u+v)
 (α) (β)
,
for u > 0 and v >0.
The transformation from (u, v) to (x, y) is
x = r1(u, v) = u
u + v
and y = r2(u, v) = u + v,
and the inverse is
u = s1(x, y) = xy and v = s2(x, y) = (1− x)y.
The Jacobian is the determinant of the matrix
J =
 
y x
−y 1− x
 
,
which equals y. According to Theorem 3.9.5, the joint p.d.f. of (X, Y ) is then
g(x, y) = f (s1(x, y), s2(x, y))y
= xα−1(1− x)β−1yα+β−1e
−y
 (α) (β)
, (5.8.7)
for 0 < x <1 and y >0. Notice that this joint p.d.f. factors into separate functions
of x and y, and hence X and Y are independent. The marginal distribution of Y is
available from Theorem 5.7.7. The marginal p.d.f. of X is obtained by integrating y
out of (5.8.7):
g1(x) =
  ∞
0
xα−1(1− x)β−1yα+β−1e
−y
 (α) (β)
dy
= xα−1(1− x)β−1
 (α) (β)
  ∞
0
yα+β−1e
−ydy
=  (α + β)
 (α) (β)
xα−1(1− x)β−1, (5.8.8)
where the last equation follows from (5.7.2). Because the far right side of (5.8.8) is
a p.d.f., it integrates to 1, which proves Eq. (5.8.2). Also, one can recognize the far
right side of (5.8.8) as the p.d.f. of the beta distribution with parameters α and β.
Summary
The family of beta distributions is a popular model for random variables that lie in
the interval (0, 1), such as unknown proportions of success for sequences of Bernoulli
trials. The mean of the beta distribution with parameters α and β is α/(α + β). If X has the binomial distribution with parameters n and p conditional on P = p, and if
P has the beta distribution with parameters α and β, then, conditional on X = x, the
distribution of P is the beta distribution with parameters α + x and β + n − x.
Exercises
1. Compute the quantile function of the beta distribution
with parameters α >0 and β = 1.
2. Determine the mode of the beta distribution with parameters
α and β, assuming that α >1 and β >1.
3. Sketch the p.d.f. of the beta distribution for each of the
following pairs of values of the parameters:
a. α = 1/2 and β = 1/2 b. α = 1/2 and β = 1
c. α = 1/2 and β = 2 d. α = 1 and β = 1
e. α = 1 and β = 2 f. α = 2 and β = 2
g. α = 25 and β = 100 h. α = 100 and β = 25
4. Suppose that X has the beta distribution with parameters
α and β. Show that 1− X has the beta distribution
with parameters β and α.
5. Suppose that X has the beta distribution with parameters
α and β, and let r and s be given positive integers.
Determine the value of E[Xr(1− X)s].
6. Suppose that X and Y are independent random variables,
X has the gamma distribution with parameters α1
and β, and Y has the gamma distribution with parameters
α2 and β. Let U = X/(X + Y) and V = X + Y . Show that
(a) U has the beta distribution with parameters α1 and α2,
and (b) U and V are independent. Hint: Look at the steps
in the proof of Theorem 5.8.1.
7. Suppose that X1 and X2 form a random sample of two
observed values from the exponential distribution with
parameter β. Show that X1/(X1 + X2) has the uniform
distribution on the interval [0, 1].
8. Suppose that the proportion X of defective items in a
large lot is unknown and that X has the beta distribution
with parameters α and β.
a. If one item is selected at random from the lot, what
is the probability that it will be defective?
b. If two items are selected at random from the lot, what
is the probability that both will be defective?
9. A manufacturer believes that an unknown proportion
P of parts produced will be defective. She models P as
having a beta distribution.The manufacturer thinks that P
should be around 0.05, but if the first 10 observed products
were all defective, the mean of P would rise from 0.05 to
0.9. Find the beta distribution that has these properties.
10. A marketer is interested in how many customers are
likely to buy a particular product in a particular store. Let
P be the proportion of all customers in the store who will
buy the product. Let the distribution of P be uniform on
the interval [0, 1]before observing any data.The marketer
then observes 25 customers and only six buy the product.
If the customers were conditionally independent given P,
find the conditional distribution of P given the observed
customers.


