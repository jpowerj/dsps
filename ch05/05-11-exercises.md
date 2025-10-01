(sec-5-11)=
# 5.11 Supplementary Exercises

# Exercise 5.11.1

Let X and P be random variables. Suppose that the
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

