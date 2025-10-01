(sec-5-10)=
# 5.10 The Bivariate Normal Distributions

(sec-5-10-0)=
# Overview

*The first family of multivariate continuous distributions for which we have a name is a generalization of the family of normal distributions to two coordinates. There is more structure to a bivariate normal distribution than just a pair of normal marginal distributions.*

(sec-5-10-1)=
# 5.10.1 Definition and Derivation of Bivariate Normal Distributions

:::: {prf:example} Thyroid Hormones
:label: exm-5-10-1
:enumerator: 5.10.1

Production of rocket fuel produces a chemical, perchlorate, that has found its way into drinking water supplies. Perchlorate is suspected of inhibiting
thyroid function. Experiments have been performed in which laboratory rats have been dosed with perchlorate in their drinking water. After several weeks, rats were
sacrificed, and a number of thyroid hormones were measured.The levels of these hormones
were then compared to the levels of the same hormones in rats that received
no perchlorate in their water. Two hormones, TSH and T4, were of particular interest.
Experimenters were interested in the joint distribution of TSH and T4. Although
each of the hormones might be modeled with a normal distribution, a bivariate distribution
is needed in order to model the two hormone levels jointly. Knowledge of
thyroid activity suggests that the levels of these hormones will not be independent,
because one of them is actually used by the thyroid to stimulate production of the
other.

:::

:::

If researchers are comfortable using the family of normal distributions to model
each of two random variables separately, such as the hormones in Example 5.10.1,
then they need a bivariate generalization of the family of normal distributions that
still has normal distributions for its marginals while allowing the two random variables
to be dependent. A simple way to create such a generalization is to make use
of the result in Corollary 5.6.1. That result says that a linear combination of independent
normal random variables has a normal distribution. If we create two different
linear combinations X1 and X2 of the same independent normal random variables,
then X1 and X2 will each have a normal distribution and they might be dependent.
The following result formalizes this idea.

::: {.callout-tip}

::: {#thm-5-10-1}

# Theorem 5.10.1

Suppose that Z1 and Z2 are independent random variables, each of which has the
standard normal distribution. Let μ1, μ2, σ1, σ2, and ρ be constants such that

**Proof**:

This proof relies on Theorem 3.9.5 (multivariate transformation of random
variables). If you did not study Theorem 3.9.5, you won’t be able to follow this proof.
The joint p.d.f. g(z1, z2) of Z1 and Z2 is

, (5.10.3)
for all z1 and z2.
The inverse of the transformation (5.10.1) is (Z1, Z2) = (s1(X1, X2), s2(X1, X2)),
where
s1(x1, x2) = x1 − μ1

(5.10.4)

The Jacobian J of the transformation is
J = det

= 1
(1− ρ2)1/2σ1σ2
. (5.10.5)
If one substitutes si(x1, x2) for zi (i = 1, 2) in Eq. (5.10.3) and then multiplies by
|J |, one obtains Eq. (5.10.2), which is the joint p.d.f. of (X1, X2) according to Theorem
3.9.5.

:::

:::

Some simple properties of the distribution with p.d.f. in Eq. (5.10.2) are worth
deriving before giving a name to the joint distribution.

::: {.callout-tip}

::: {#thm-5-10-2}

# Theorem 5.10.2

Suppose thatX1 andX2 have the joint distribution whose p.d.f. is given by Eq. (5.10.2).
Then there exist independent standard normal random variables Z1 and Z2 such
that Eqs. (5.10.1) hold. Also, the mean of Xi is μi and the variance of Xi is σ2
i for
i = 1, 2. Furthermore the correlation between X1 and X2 is ρ. Finally, the marginal
distribution ofXi is the normal distribution with mean μi and variance σ2
i for i = 1, 2.
Proof Use the functions s1 and s2 defined in Eqs. (5.10.4) and define Zi
= si(X1, X2)
for i = 1, 2. By running the proof of Theorem 5.10.1 in reverse, we see that the joint
p.d.f. of Z1 and Z2 is Eq. (5.10.3). Hence, Z1 and Z2 are independent standard normal
random variables.
The values of the means and variances ofX1 andX2 are easily obtained by applying
Corollary 5.6.1 to Eq. (5.10.1). If one applies the result in Exercise 8 of Sec. 4.6,
one obtains Cov(X1, X2) = σ1σ2ρ. It now follows that ρ is the correlation. The claim
about the marginal distributions of X1 and X2 is immediate from Corollary 5.6.1.

:::

:::

We are now ready to define the family of bivariate normal distributions.
Definition
5.10.1
Bivariate Normal Distributions. When the joint p.d.f. of two random variables X1 and
X2 is of the form in Eq. (5.10.2), it is said that X1 and X2 have the bivariate normal
distribution with means μ1 and μ2, variances σ2
1 and σ2
2 , and correlation ρ.
It was convenient for us to derive the bivariate normal distributions as the joint
distributions of certain linear combinations of independent random variables having
standard normal distributions. It should be emphasized, however, that bivariate
normal distributions arise directly and naturally in many practical problems. For example,
for many populations the joint distribution of two physical characteristics such
as the heights and the weights of the individuals in the population will be approximately
a bivariate normal distribution. For other populations, the joint distribution
of the scores of the individuals in the population on two related tests will be approximately
a bivariate normal distribution.
Example
5.10.2
Anthropometry of Flea Beetles. Lubischew (1962) reports the measurements of several
physical features of a variety of species of flea beetle.The investigation was concerned
with whether some combination of easily obtained measurements could be used to
distinguish the different species. Figure 5.9 shows a scatterplot of measurements of
the first joint in the first tarsus versus the second joint in the first tarsus for a sample of
31 from the species Chaetocnema heikertingeri. The plot also includes three ellipses
that correspond to a fitted bivariate normal distribution. The ellipses were chosen
to contain 25%, 50%, and 75% of the probability of the fitted bivariate normal
340 Chapter 5 Special Distributions
Figure 5.9 Scatterplot of
flea beetle data with 25%,
50%, and 75% bivariate
normal ellipses for Example
5.10.2.
180 190 200 210 220 230 240
110
115
120
125
130
First tarsus joint
Second tarsus joint
distribution. The fitted distribution is is the bivariate normal distribution with means
201 and 119.3, variances 222.1 and 44.2, and correlation 0.64.  
Properties of Bivariate Normal Distributions
For random variables with a bivariate normal distribution, we find that being independent
is equivalent to being uncorrelated.
Theorem
5.10.3
Independence and Correlation. Two random variables X1 and X2 that have a bivariate
normal distribution are independent if and only if they are uncorrelated.
Proof The “only if” direction is already known from Theorem 4.6.4. For the “if”
direction, assume that X1 and X2 are uncorrelated. Then ρ = 0, and it can be seen
from Eq. (5.10.2) that the joint p.d.f. f (x1, x2) factors into the product of the marginal
p.d.f. of X1 and the marginal p.d.f. of X2. Hence, X1 and X2 are independent.
We have already seen in Example 4.6.4 that two random variables X1 and X2
with an arbitrary joint distribution can be uncorrelated without being independent.
Theorem 5.10.3 says that no such examples exist in which X1 and X2 have a bivariate
normal distribution.
When the correlation is not zero, Theorem 5.10.2 gives the marginal distributions
of bivariate normal random variables. Combining the marginal and joint distributions
allows us to find the conditional distributions of eachXi given the other one. The next
theorem derives the conditional distributions using another technique.

Theorem
5.10.4
Conditional Distributions. LetX1 andX2 have the bivariate normal distribution whose
p.d.f. is Eq. (5.10.2).The conditional distribution ofX2 given thatX1=x1 is the normal
distribution with mean and variance given by
E(X2|x1) = μ2 + ρσ2


x1 − μ1
σ1
 
, Var(X2|x1) = (1− ρ2)σ 2
2. (5.10.6)
Proof We will make liberal use of Theorem 5.10.2 and its notation in this proof. Conditioning
on X1 = x1 is the same as conditioning on Z1 = (x1 − μ1)/σ1.When we want
to find the conditional distribution of X2 given Z1 = (x1 − μ1)/σ1, we can subtitute
(x1 − μ1)/σ1 for Z2 in the formula for X2 in Eq. (5.10.1) and find the conditional distribution
for the rest of the formula. That is, the conditional distribution of X2 given that X1 = x1 is the same as the conditional distribution of
(1− ρ2)1/2σ2Z2 + μ2 + ρσ2


x1 − μ1
σ1
 
(5.10.7)
given Z1 = (x1 − μ1)/σ1. But Z2 is the only random variable in Eq. (5.10.7), and Z2
is independent of Z1. Hence, the conditional distribution of X2 given X1 = x1 is the
marginal distribution of Eq. (5.10.7), namely, the normal distribution with mean and
variance given by Eq. (5.10.6).
The conditional distribution of X1 given that X2 = x2 cannot be derived so easily
from Eq. (5.10.1) because of the different ways in which Z1 and Z2 enter Eq. (5.10.1).
However, it is seen from Eq. (5.10.2) that the joint distribution of X2 and X1 is also
bivariate normal with all of the subscripts 1 and 2 swithched on all of the parameters.
Hence, we can apply Theorem 5.10.4 to X2 and X1 to conclude that the conditional
distribution of X1 given that X2 = x2 must be the normal distribution with mean and
variance
E(X1|x2) = μ1 + ρσ1


x2 − μ2
σ2
 
, Var(X1|x2) = (1− ρ2)σ 2
1. (5.10.8)
We have now shown that each marginal distribution and each conditional distribution
of a bivariate normal distribution is a univariate normal distribution.
Some particular features of the conditional distribution of X2 given that X1 =
x1 should be noted. If ρ  = 0, then E(X2|x1) is a linear function of x1. If ρ > 0,
the slope of this linear function is positive. If ρ <0, the slope of the function is
negative. However, the variance of the conditional distribution of X2 given that
X1 = x1 is (1− ρ2)σ 2
2, which does not depend on x1. Furthermore, this variance of
the conditional distribution of X2 is smaller than the variance σ2
2 of the marginal
distribution of X2.
Example
5.10.3
Predicting a Person’sWeight. Let X1 denote the height of a person selected at random
from a certain population, and let X2 denote the weight of the person. Suppose that
these random variables have the bivariate normal distribution for which the p.d.f. is
specified by Eq. (5.10.2) and that the person’s weight X2 must be predicted.We shall
compare the smallest M.S.E. that can be attained if the person’s height X1 is known
when her weight must be predicted with the smallest M.S.E. that can be attained if
her height is not known.
If the person’s height is not known, then the best prediction of her weight is the
mean E(X2) = μ2, and the M.S.E. of this prediction is the variance σ2
2. If it is known
that the person’s height is x1, then the best prediction is the mean E(X2|x1) of the
conditional distribution of X2 given that X1 = x1, and the M.S.E. of this prediction is
the variance (1− ρ2)σ 2
2 of that conditional distribution. Hence, when the value of X1
is known, the M.S.E. is reduced from σ2
2 to (1− ρ2)σ 2
2.  
Since the variance of the conditional distribution in Example 5.10.3 is (1− ρ2)σ 2
2,
regardless of the known height x1 of the person, it follows that the difficulty of
predicting the person’s weight is the same for a tall person, a short person, or a
person of medium height. Furthermore, since the variance (1− ρ2)σ 2
2 decreases as
|ρ| increases, it follows that it is easier to predict a person’s weight from her height
when the person is selected from a population in which height and weight are highly
correlated.
342 Chapter 5 Special Distributions
Example
5.10.4
Determining a Marginal Distribution. Suppose that a random variable X has the normal
distribution with mean μ and variance σ2, and that for every number x, the
conditional distribution of another random variable Y given that X = x is the normal
distribution with mean x and variance τ 2.We shall determine the marginal distribution
of Y .
We know that the marginal distribution of X is a normal distribution, and the
conditional distribution of Y given that X = x is a normal distribution, for which the
mean is a linear function of x and the variance is constant. It follows that the joint
distribution of X and Y must be a bivariate normal distribution (see Exercise 14).
Hence, the marginal distribution of Y is also a normal distribution. The mean and
the variance of Y must be determined.
The mean of Y is
E(Y) = E[E(Y|X)]= E(X) = μ.
Furthermore, by Theorem 4.7.4,
Var(Y ) = E[Var(Y |X)]+ Var[E(Y|X)]
= E(τ2) + Var(X)
= τ 2 + σ2.
Hence, the distribution of Y is the normal distribution with mean μ and variance
τ 2 + σ2.  

### Linear Combinations

Example
5.10.5
Heights of Husbands andWives. Suppose that a married couple is selected at random
from a certain population of married couples and that the joint distribution of the
height of the wife and the height of her husband is a bivariate normal distribution.
What is the probability that, in the randomly chosen couple, the wife is taller than
the husband?  
The question asked at the end of Example 5.10.5 can be expressed in terms of
the distribution of the difference between a wife’s and husband’s heights. This is a
special case of a linear combination of a bivariate normal vector.

Theorem
5.10.5
Linear Combination of Bivariate Normals. Suppose that two random variables X1 and
X2 have a bivariate normal distribution, for which the p.d.f. is specified by Eq. (5.10.2).
Let Y = a1X1 + a2X2 + b, where a1, a2, and b are arbitrary given constants. Then Y
has the normal distribution with mean a1μ1 + a2μ2 + b and variance
a2
1σ2
1
+ a2
2σ2
2
+ 2a1a2ρσ1σ2. (5.10.9)
Proof According to Theorem 5.10.2, both X1 and X2 can be represented, as in
Eq. (5.10.1), as linear combinations of independent and normally distributed random
variables Z1 and Z2. Since Y is a linear combination of X1 and X2, it follows that
Y can also be represented as a linear combination of Z1 and Z2. Therefore, by
Corollary 5.6.1, the distribution of Y will also be a normal distribution. It only remains
to compute the mean and variance of Y . The mean of Y is
E(Y) = a1E(X1) + a2E(X2) + b
= a1μ1 + a2μ2 + b.
5.10 The Bivariate Normal Distributions 343
It also follows from Corollary 4.6.1 that
Var(Y ) = a2
1 Var(X1) + a2
2 Var(X2) + 2a1a2 Cov(X1, X2).
That Var(Y ) is given by Eq. (5.10.9) now follows easily.


## Example 5.10.6: Heights of Husbands and Wives

Consider again Example 5.10.5. Suppose that the
heights of the wives have a mean of 66.8 inches and a standard deviation of 2 inches,
the heights of the husbands have a mean of 70 inches and a standard deviation of 2
inches, and the correlation between these two heights is 0.68.We shall determine the
probability that the wife will be taller than her husband.
If we let X denote the height of the wife, and let Y denote the height of her
husband, then we must determine the value of Pr(X −Y >0). Since X and Y have
a bivariate normal distribution, it follows that the distribution of X − Y will be the
normal distribution, with mean
E(X − Y) = 66.8 − 70=−3.2
and variance
Var(X − Y) = Var(X) + Var(Y ) − 2 Cov(X, Y )
= 4 + 4 − 2(0.68)(2)(2) = 2.56.
Hence, the standard deviation of X − Y is 1.6.
The random variable Z = (X − Y + 3.2)/(1.6) will have the standard normal
distribution. It can be found from the table given at the end of this book that
Pr(X −Y >0) = Pr(Z > 2) = 1−  (2)
= 0.0227.
Therefore, the probability that the wife will be taller than her husband is 0.0227.  
Summary
If a random vector (X, Y ) has a bivariate normal distribution, then every linear
combination aX + bY + c has a normal distribution. In particular, the marginal
distributions of X and Y are normal. Also, the conditional distribution of X given
Y = y is normal with the conditional mean being a linear function of y and the
conditional variance being constant in y. (Similarly, for the conditional distribution
of Y given X = x.) A more thorough treatment of the bivariate normal distributions
and higher-dimensional generalizations can be found in the book by D. F. Morrison
(1990).

### Exercises

1. Consider again the joint distribution of heights of husbands
and wives in Example 5.10.6. Find the 0.95 quantile
of the conditional distribution of the height of the wife
given that the height of the husband is 72 inches.
2. Suppose that two different testsAand B are to be given
to a student chosen at random from a certain population.
Suppose also that the mean score on test A is 85, and the
standard deviation is 10; the mean score on test B is 90,
and the standard deviation is 16; the scores on the two tests
have a bivariate normal distribution; and the correlation
of the two scores is 0.8. If the student’s score on test A is
80, what is the probability that her score on test B will be
higher than 90?

3. Consider again the two tests A and B described in Exercise
2. If a student is chosen at random, what is the
probability that the sum of her scores on the two tests will
be greater than 200?
4. Consider again the two tests A and B described in Exercise
2. If a student is chosen at random, what is the
probability that her score on test A will be higher than
her score on test B?
5. Consider again the two tests A and B described in Exercise
2. If a student is chosen at random, and her score
on test B is 100, what predicted value of her score on test
A has the smallest M.S.E., and what is the value of this
minimum M.S.E.?
6. Suppose that the random variables X1 and X2 have
a bivariate normal distribution, for which the joint p.d.f.
is specified by Eq. (5.10.2). Determine the value of the
constant b for which Var(X1 + bX2) will be a minimum.
7. Suppose that X1 and X2 have a bivariate normal distribution
for which E(X1|X2) = 3.7 − 0.15X2, E(X2|X1) =
0.4 − 0.6X1, andVar(X2|X1) = 3.64. Find the mean and the
variance of X1, the mean and the variance of X2, and the
correlation of X1 and X2.
8. Let f (x1, x2) denote the p.d.f. of the bivariate normal
distribution specified by Eq. (5.10.2). Show that the maximum
value of f (x1, x2) is attained at the point at which
x1 = μ1 and x2 = μ2.
9. Let f (x1, x2) denote the p.d.f. of the bivariate normal
distribution specified by Eq. (5.10.2), and let k be a constant
such that
0 < k <
1
2π(1− ρ2)1/2σ1σ2
.
Show that the points (x1, x2) such that f (x1, x2) = k lie on a
circle if ρ = 0 and σ1= σ2, and these points lie on an ellipse
otherwise.
10. Suppose that two random variables X1 and X2 have
a bivariate normal distribution, and two other random
variables Y1 and Y2 are defined as follows:
Y1 = a11X1 + a12X2 + b1,
Y2 = a21X1 + a22X2 + b2,
where
    
a11 a12
a21 a22
    
 = 0.
Show that Y1 and Y2 also have a bivariate normal distribution.
11. Suppose that two random variables X1 and X2 have
a bivariate normal distribution, and Var(X1) = Var(X2).
Show that the sum X1 + X2 and the difference X1 − X2
are independent random variables.
12. Suppose that the two measurements from flea beetles
in Example 5.10.2 have the bivariate normal distribution
with μ1 = 201, μ2 = 118, σ1 = 15.2, σ2 = 6.6, and ρ = 0.64.
Suppose that the same two measurements from a second
species also have the bivariate normal distribution with
μ1 = 187, μ2 = 131, σ1 = 15.2, σ2 = 6.6, and ρ = 0.64. Let
(X1, X2) be a pair of measurements on a flea beetle from
one of these two species. Let a1, a2 be constants.
a. For each of the two species, find the mean and standard
deviation of a1X1 + a2X2. (Note that the variances
for the two species will be the same. How do
you know that?)
b. Find a1 and a2 to maximize the ratio of the difference
between the two means found in part (a) to the standard
deviation found in part (a). There is a sense in
which this linear combination a1X1 + a2X2 does the
best job of distinguishing the two species among all
possible linear combinations.
13. Suppose that the joint p.d.f. of two random variables
X and Y is proportional, as a function of (x, y), to
exp
 
−[ax2 + by2 + cxy + ex + gy + h]
 
,
where a > 0, b > 0, and c, e, g, and h are all constants.
Assume that ab > (c/2)2. Prove that X and Y have a bivariate
normal distribution, and find the means, variances,
and correlation.
14. Suppose that a random variable X has a normal distribution,
and for every x, the conditional distribution of
another random variable Y given that X = x is a normal
distribution with mean ax + b and variance τ 2, where a,
b, and τ 2 are constants. Prove that the joint distribution of
X and Y is a bivariate normal distribution.
15. Let X1, . . . , Xn be i.i.d. random variables having the
normal distribution with mean μ and variance σ2. Define
Xn
= 1
n
 n
i=1 Xi , the sample mean. In this problem, we
shall find the conditional distribution of each Xi given Xn.
a. Show that Xi and Xn have the bivariate normal distribution
with both means μ, variances σ2 and σ2/n,
and correlation 1/
√
n. Hint: Let Y =
 
j  =i Xj . Now
show that Y and Xi are independent normals and Xn
and Xi are linear combinations of Y and Xi .
b. Show that the conditional distribution of Xi given
Xn
= xn is normal with mean xn and variance σ2(1−
1/n).
5.11 Supplementary Exercises 345
5.11 Supplementary Exercises
1. Let X and P be random variables. Suppose that the
conditional distribution of X given P = p is the binomial
distribution with parameters n and p. Suppose that the
distribution of P is the beta distribution with parameters
α = 1 and β = 1. Find the marginal distribution of X.
2. Suppose that X, Y , and Z are i.i.d. random variables
and each has the standard normal distribution. Evaluate
Pr(3X + 2Y <6Z − 7).
3. Suppose thatX and Y are independent Poisson random
variables such thatVar(X) + Var(Y ) = 5. Evaluate Pr(X +
Y <2).
4. Suppose that X has a normal distribution such that
Pr(X < 116) = 0.20 and Pr(X < 328) = 0.90. Determine
the mean and the variance of X.
5. Suppose that a random sample of four observations is
drawn from the Poisson distribution with mean λ, and let
X denote the sample mean. Show that
Pr


X<
1
2
 
= (4λ + 1)e
−4λ.
6. The lifetime X of an electronic component has the
exponential distribution such that Pr(X ≤ 1000) = 0.75.
What is the expected lifetime of the component?
7. Suppose that X has the normal distribution with mean
μ and variance σ2. Express E(X3) in terms of μ and σ2.
8. Suppose that a random sample of 16 observations is
drawn from the normal distribution with mean μ and standard
deviation 12, and that independently another random
sample of 25 observations is drawn from the normal
distribution with the same mean μ and standard deviation
20. Let X and Y denote the sample means of the two
samples. Evaluate Pr(|X − Y | < 5).
9. Suppose that men arrive at a ticket counter according
to a Poisson process at the rate of 120 per hour, andwomen
arrive according to an independent Poisson process at the
rate of 60 per hour. Determine the probability that four
or fewer people arrive in a one-minute period.
10. Suppose that X1, X2, . . . are i.i.d. random variables,
each of which has m.g.f. ψ(t). Let Y = X1 + . . . + XN,
where the number of terms N in this sum is a random
variable having the Poisson distribution with mean λ.
Assume thatN andX1, X2, . . . are independent, and Y = 0
if N = 0. Determine the m.g.f. of Y .
11. Every Sunday morning, two children, Craig and Jill,
independently try to launch their model airplanes. On
each Sunday, Craig has probability 1/3 of a successful
launch, and Jill has probability 1/5 of a successful launch.
Determine the expected number of Sundays required until
at least one of the two children has a successful launch.
12. Suppose that a fair coin is tossed until at least one head
and at least one tail have been obtained. Let X denote the
number of tosses that are required. Find the p.f. of X.
13. Suppose that a pair of balanced dice are rolled 120
times, and let X denote the number of rolls on which the
sum of the two numbers is 12. Use the Poisson approximation
to approximate Pr(X = 3).
14. Suppose that X1, . . . , Xn form a random sample from
the uniform distribution on the interval [0, 1]. Let Y1 =
min{X1, . . . , Xn
}, Yn
= max{X1, . . . , Xn
}, and W = Yn
−
Y1. Show that each of the random variables Y1, Yn, and W
has a beta distribution.
15. Suppose that events occur in accordance with a Poisson
process at the rate of five events per hour.
a. Determine the distribution of the waiting time T1
until the first event occurs.
b. Determine the distribution of the total waiting time
Tk until k events have occurred.
c. Determine the probability that none of the first k
events will occur within 20 minutes of one another.
16. Suppose that five components are functioning simultaneously,
that the lifetimes of the components are i.i.d.,
and that each lifetime has the exponential distribution
with parameter β. Let T1 denote the time from the beginning
of the process until one of the components fails; and
let T5 denote the total time until all five components have
failed. Evaluate Cov(T1, T5).
17. Suppose thatX1 andX2 are independent random variables,
andXi has the exponential distribution with parameter
βi (i = 1, 2). Show that for each constant k > 0,
Pr(X1 > kX2) = β2
kβ1 + β2
.
18. Suppose that 15,000 people in a city with a population
of 500,000 are watching a certain television program. If
200 people in the city are contacted at random, what is
the approximate probability that fewer than four of them
are watching the program?
19. Suppose that it is desired to estimate the proportion of
persons in a large population who have a certain characteristic.
A random sample of 100 persons is selected from
the population without replacement, and the proportion
X of persons in the sample who have the characteristic is
observed. Show that, no matter how large the population
is, the standard deviation of X is at most 0.05.
20. Suppose that X has the binomial distribution with
parameters n and p, and that Y has the negative binomial
distribution with parameters r and p, where r is a positive
integer. Show that Pr(X < r) = Pr(Y > n − r) by showing
346 Chapter 5 Special Distributions
that both the left side and the right side of this equation
can be regarded as the probability of the same event in a
sequence of Bernoulli trials with probability p of success.
21. Suppose thatXhas the Poisson distribution with mean
λt, and that Y has the gamma distribution with parameters
α = k and β = λ, where k is a positive integer. Show that
Pr(X ≥ k) = Pr(Y ≤ t) by showing that both the left side
and the right side of this equation can be regarded as the
probability of the same event in a Poisson process in which
the expected number of occurrences per unit of time is λ.
22. Suppose that X is a random variable having a continuous
distribution with p.d.f. f (x) and c.d.f. F(x), and for
which Pr(X > 0) = 1. Let the failure rate h(x) be as defined
in Exercise 18 of Sec. 5.7. Show that
exp
 
−
  x
0
h(t) dt
 
= 1− F(x).
23. Suppose that 40 percent of the students in a large population
are freshmen, 30 percent are sophomores, 20 percent
are juniors, and 10 percent are seniors. Suppose that
10 students are selected at random from the population,
and let X1, X2, X3, X4 denote, respectively, the numbers
of freshmen, sophomores, juniors, and seniors that are obtained.
a. Determine ρ(Xi, Xj ) for each pair of values i and j
(i < j ).
b. For what values of i and j (i<j) is ρ(Xi, Xj ) most
negative?
c. For what values of i and j (i<j) is ρ(Xi, Xj ) closest
to 0?
24. Suppose that X1 and X2 have the bivariate normal
distribution with means μ1 and μ2, variances σ2
1 and σ2
2,
and correlation ρ. Determine the distribution ofX1− 3X2.
25. Suppose that X has the standard normal distribution,
and the conditional distribution of Y givenX is the normal
distribution with mean 2X − 3and variance 12. Determine
the marginal distribution of Y and the value of ρ(X, Y).
26. Suppose that $X_1$ and $X_2$ have a bivariate normal distribution with $\mathbb{E}[X2] = 0$. Evaluate $\mathbb{E}[X_1^2X_2]$.

