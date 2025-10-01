(sec-5-7)=
# 5.7 The Gamma Distributions

(sec-5-7-0)=
# Overview

*The family of gamma distributions is a popular model for random variables that are known to be positive. The family of exponential distributions is a subfamily of the gamma distributions. The times between successive occurrences in a Poisson process have an exponential distribution. The gamma function, related to the gamma distributions, is an extension of factorials from integers to all positive numbers.*

(sec-5-7-1)=
# 5.7.1 The Gamma Function

## Example 5.7.1

Mean and Variance of Lifetime of a Light Bulb. Suppopse that we model the lifetime of
a light bulb as a continuous random variable with the following p.d.f.:
f (x) =
 
e
−x for x >0,
0 otherwise.
5.7 The Gamma Distributions 317
If we wish to compute the mean and variance of such a lifetime, we need to compute
the following integrals:
  ∞
0
xe
−xdx, and
  ∞
0
x2e
−xdx. (5.7.1)
These integrals are special cases of an important function that we examine next.  
Definition
5.7.1
The Gamma Function. For each positive number α, let the value  (α) be defined by
the following integral:
 (α) =
  ∞
0
xα−1e
−x dx. (5.7.2)
The function   defined by Eq. (5.7.2) for α >0 is called the gamma function.
As an example,
 (1) =
  ∞
0
e
−x dx = 1. (5.7.3)
The following result, together with Eq. (5.7.3), shows that  (α) is finite for every
value of α >0.
Theorem
5.7.1
If α >1, then
 (α) = (α − 1) (α − 1). (5.7.4)
Proof We shall apply the method of integration by parts to the integral in Eq. (5.7.2).
If we let u = xα−1 and dv = e
−x dx, then du = (α − 1)xα−2 dx and v =−e
−x. Therefore,
 (α) =
  ∞
0
u dv = [uv]∞
0
−
  ∞
0
v du
= [−xα−1e
−x]∞
x=0
+ (α − 1)
  ∞
0
xα−2e
−x dx
= 0 + (α − 1) (α − 1).
For integer values of α, we have a simple expression for the gamma function.
Theorem
5.7.2
For every positive integer n,
 (n) = (n − 1)!. (5.7.5)
Proof It follows from Theorem 5.7.1 that for every integer n ≥ 2,
 (n) = (n − 1) (n − 1) = (n − 1)(n − 2) (n − 2)
= (n − 1)(n − 2) . . . 1 .  (1)
= (n − 1)! (1).
Since  (1) = 1= 0! by Eq. (5.7.3), the proof is complete.
Example
5.7.2
Mean and Variance of Lifetime of a Light Bulb. The two integrals in (5.7.1) are, respectively,
 (2) = 1!= 1 and  (3) = 2!= 2. It follows that the mean of each lifetime is 1,
and the variance is 2 − 12 = 1.  
In many statistical applications,  (α) must be evaluated when α is either a positive
integer or of the form α = n + (1/2) for some positive integer n. It follows from
318 Chapter 5 Special Distributions
Eq. (5.7.4) that for each positive integer n,
 


n + 1
2
 
=


n − 1
2
 

n − 3
2
 
. . .


1
2
 
 


1
2
 
. (5.7.6)
Hence, it will be possible to determine the value of  


n + 1
2
 
if we can evaluate
 


1
2
 
.
From Eq. (5.7.2),
 


1
2
 
=
  ∞
0
x
−1/2e
−x dx.
If we let x = (1/2)y2 in this integral, then dx = y dy and
 


1
2
 
= 21/2
  ∞
0
exp


−1
2
y2
 
dy. (5.7.7)
Because the integral of the p.d.f. of the standard normal distribution is equal to 1, it
follows that
  ∞
−∞
exp


−1
2
y2
 
dy = (2π)1/2. (5.7.8)
Because the integrand in (5.7.8) is symmetric around y = 0,
  ∞
0
exp


−1
2
y2
 
dy = 1
2
(2π)1/2 =


π
2
 1/2
.
It now follows from Eq. (5.7.7) that
 


1
2
 
= π1/2. (5.7.9)
For example, it is found from Eqs. (5.7.6) and (5.7.9) that
 


7
2
 
=


5
2
 

3
2
 

1
2
 
π1/2 = 15
8
π1/2.
We present two final useful results before we introduce the gamma distributions.
Theorem
5.7.3
For each α >0 and each β >0,
  ∞
0
xα−1 exp(βx)dx =  (α)
βα
. (5.7.10)

Proof Make the change of variables y = βx so that x = y/β and dx = dy/β. The
result now follows easily from Eq. (5.7.2).
There is a version of Stirling’s formula (Theorem 1.7.5) for the gamma function,
which we state without proof.

## Theorem 5.7.4: Stirling’s Formula

lim
x→∞
(2π)1/2xx−1/2e
−x
 (x)
= 1.


## Example 5.7.3: Service Times in a Queue

For i = 1, . . . , n, suppose that customer i in a queue must
wait time Xi for service once reaching the head of the queue. Let Z be the rate at
which the average customer is served. A typical probability model for this situation is to say that, conditional on Z = z, X1, . . . , Xn are i.i.d. with a distribution having the
conditional p.d.f. g1(xi
|z) = z exp(−zxi) for xi > 0. Suppose that Z is also unknown
and has the p.d.f. f2(z) = 2 exp(−2z) for z > 0. The joint p.d.f. of X1, . . . ,Xn, Z is
then
f (x1, . . . , xn, z) =
!n
i=1
g1(xi
|z)f2(z)
= 2zn exp
 
−z [2 + x1 + . . . + xn]
 
, (5.7.11)
if z, x1, . . . , xn > 0 and 0 otherwise. In order to calculate the marginal joint distribution
of X1, . . . , Xn, we must integrate z out of the the joint p.d.f. above.We can apply
Theorem 5.7.3 with α = n + 1 and β = 2 + x1 + . . . + xn together with Theorem 5.7.2
to integrate the function in Eq. (5.7.11). The result is
  ∞
0
f (x1, . . . , xn, z)dz = 2(n!)
 
2 + n
i=1 xi
 n+1 , (5.7.12)
for all xi > 0 and 0 otherwise. This is the same joint p.d.f. that was used in Example
3.7.5 on page 154.  

# The Gamma Distributions

Example
5.7.4
Service Times in a Queue. In Example 5.7.3, suppose that we observe the service times
of n customers and want to find the conditional distribution of the rate Z. We can
easily find the conditional p.d.f. g2(z|x1, . . . , xn) of Z given X1 = x1, . . . , Xn
= xn by
dividing the joint p.d.f. of X1, . . . , Xn, Z in Eq. (5.7.11) by the p.d.f. of X1, . . . , Xn in
Eq. (5.7.12). The calculation is simplified by defining y = 2 + n
i=1 xi .We then obtain
g2(z|x1, . . . , xn) =
 
yn+1
n!
e
−yz, for z > 0,
0 otherwise.
 
Distributions with p.d.f.’s like the one at the end of Example 5.7.4 are members
of a commonly used family, which we now define.

## Definition 5.7.2: Gamma Distributions

Let α and β be positive numbers.Arandom variable X has the
gamma distribution with parameters α and β if X has a continuous distribution for
which the p.d.f. is
f (x|α, β) =

 (α)
xα−1e
−βx for x >0,
0 for x ≤ 0.
(5.7.13)
That the integral of the p.d.f. in Eq. (5.7.13) is 1 follows easily fromTheorem 5.7.3.

## Example 5.7.5: Service Times in a Queue

In Example 5.7.4, we can easily recognize the conditional
p.d.f. as the p.d.f. of the gamma distribution with parameters α = n + 1 and β = y.
 
If X has a gamma distribution, then the moments of X are easily found from
Eqs. (5.7.13) and (5.7.10).

## Figure 5.7

Graphs of the
p.d.f.’s of several different
gamma distributions with
common mean of 1.
Gamma p.d.f.

## Theorem 5.7.5: Moments

Let X have the gamma distribution with parameters α and β. For k =
1, 2, . . . ,
E(Xk) =  (α + k)
βk (α)
= α(α + 1) . . . (α + k − 1)
βk
.
In particular, E(X) = α
β , and Var(X) = α
β2 .
Proof For k = 1, 2, . . . ,
E(Xk) =
  ∞
0
xkf (x|α, β) dx = βα
 (α)
  ∞
0
xα+k−1e
−βx dx
= βα
 (α)
.  (α + k)
βα+k
=  (α + k)
βk (α)
. (5.7.14)
The expression for E(X) follows immediately from (5.7.14). The variance can be
computed as
Var(X) = α(α + 1)
β2
−


α
β
 2
= α
β2
.
Figure 5.7 shows several gamma distribution p.d.f.’s that all have mean equal to
1 but different values of α and β.
Example
5.7.6
Service Times in a Queue. In Example 5.7.5, the conditional mean service rate given
the observations X1 = x1, . . . , Xn
= xn is
E(Z|x1, . . . , xn) = n + 1
2 + n
i=1 xi
.
For large n, the conditional mean is approximately 1 over the sample average of
the service times. This makes sense since 1 over the average service time is what we
generally mean by service rate.  
The m.g.f. ψ of X can be obtained similarly.
Theorem
5.7.6
Moment Generating Function. Let X have the gamma distribution with parameters α
and β. The m.g.f. of X is
ψ(t) =


β
β − t
 α
for t < β. (5.7.15)
5.7 The Gamma Distributions 321
Proof The m.g.f. is
ψ(t) =
  ∞
0
etxf (x|α, β) dx = βα
 (α)
  ∞
0
xα−1e
−(β−t)x dx.
This integral will be finite for every value of t such that t < β. Therefore, it follows
from Eq. (5.7.10) that, for t < β,
ψ(t) = βα
 (α)
.  (α)
(β − t)α
=


β
β − t
 α
.
We can now show that the sum of independent random variables that have
gamma distributions with a common value of the parameter β will also have a gamma
distribution.

## Theorem 5.7.7

If the random variables X1, . . . , Xk are independent, and if Xi has the gamma
distribution with parameters αi and β (i = 1, . . . , k), then the sum X1 + . . . + Xk
has the gamma distribution with parameters α1 + . . . + αk and β.
Proof If ψi denotes the m.g.f. of Xi , then it follows from Eq. (5.7.15) that for
i = 1, . . . , k,
ψi(t) =


β
β − t
 αi
for t < β.
If ψ denotes the m.g.f. of the sum X1 + . . . + Xk, then by Theorem 4.4.4,
ψ(t) =
!k
i=1
ψi(t) =


β
β − t
 α1+...+αk
for t < β.
The m.g.f. ψ can now be recognized as the m.g.f. of the gamma distribution with
parameters α1+ . . . + αk and β. Hence, the sumX1+ . . . + Xk must have this gamma
distribution.
The Exponential Distributions
Aspecial case of gamma distributions provide a common model for phenomena such
as waiting times. For instance, in Example 5.7.3, the conditional distribution of each
service time Xi given Z (the rate of service) is a member of the following family of
distributions.
Definition
5.7.3
Exponential Distributions. Letβ >0. A random variable X has the exponential distribution
with parameter β if X has a continuous distribution with the p.d.f.
f (x|β) =
 
βe
−βx for x >0,
0 for x ≤ 0.
(5.7.16)
A comparison of the p.d.f.’s for gamma and exponential distributions makes the
following result obvious.
Theorem
5.7.8
The exponential distribution with parameter β is the same as the gamma distribution
with parameters α = 1 and β. If X has the exponential distribution with parameter
β, then
E(X) = 1
β
and Var(X) = 1
β2
, (5.7.17)
322 Chapter 5 Special Distributions
and the m.g.f. of X is
ψ(t) = β
β − t
for t < β.
Exponential distributions have a memoryless property similar to that stated in
Theorem 5.5.5 for geometric distributions.
Theorem
5.7.9
Memoryless Property of Exponential Distributions. Let X have the exponential distribution
with parameter β, and let t > 0. Then for every number h>0,
Pr(X ≥ t + h|X ≥ t) = Pr(X ≥ h). (5.7.18)
Proof For each t > 0,
Pr(X ≥ t) =
  ∞
t
βe
−βx dx = e
−βt . (5.7.19)
Hence, for each t > 0 and each h>0,
Pr(X ≥ t + h|X ≥ t) = Pr(X ≥ t + h)
Pr(X ≥ t)
= e
−β(t+h)
e−βt
= e
−βh = Pr(X ≥ h). (5.7.20)
You can prove (see Exercise 23) that the exponential distributions are the only
continuous distributions with the memoryless property.
To illustrate the memoryless property, we shall suppose that X represents the
number of minutes that elapse before some event occurs. According to Eq. (5.7.20),
if the event has not occurred during the first t minutes, then the probability that the
event will not occur during the next h minutes is simply e
−βh. This is the same as the
probability that the event would not occur during an interval of h minutes starting
from time 0. In other words, regardless of the length of time that has elapsed without
the occurrence of the event, the probability that the event will occur during the next
h minutes always has the same value.
This memoryless property will not strictly be satisfied in all practical problems.
For example, suppose that X is the length of time for which a light bulb will burn
before it fails. The length of time for which the bulb can be expected to continue to
burn in the future will depend on the length of time for which it has been burning
in the past. Nevertheless, the exponential distribution has been used effectively as
an approximate distribution for such variables as the lengths of the lives of various
products.

# Life Tests

## Example 5.7.7: Light Bulbs

Suppose that n light bulbs are burning simultaneously in a test to determine
the lengths of their lives.We shall assume that the n bulbs burn independently of
one another and that the lifetime of each bulb has the exponential distribution with
parameter β. In other words, if Xi denotes the lifetime of bulb i, for i = 1, . . . , n,
then it is assumed that the random variables X1, . . . , Xn are i.i.d. and that each has
the exponential distribution with parameter β.What is the distribution of the length
of time Y1 until the first failure of one of the n bulbs?What is the distribution of the
length of time Y2 after the first failure until a second bulb fails?  
5.7 The Gamma Distributions 323
The random variable Y1 in Example 5.7.7 is the minimum of a random sample of
n exponential random variables. The distribution of Y1 is easy to find.

## Theorem 5.7.10

Suppose that the variables X1, . . . , Xn form a random sample from the exponential
distribution with parameter β. Then the distribution of Y1 = min{X1, . . . , Xn
} will be
the exponential distribution with parameter nβ.
Proof For every number t > 0,
Pr(Y1 > t) = Pr(X1 > t, . . . , Xn > t)
= Pr(X1 > t) . . . Pr(Xn > t)
= e
−βt . . . e
−βt = e
−nβt .
By comparing this result with Eq. (5.7.19), we see that the distribution of Y1 must be
the exponential distribution with parameter nβ.
The memoryless property of the exponential distributions allows us to answer
the second question at the end of Example 5.7.7, as well as similar questions about
later failures. After one bulb has failed, n − 1 bulbs are still burning. Furthermore,
regardless of the time at which the first bulb failed or which bulb failed first, it follows
from the memoryless property of the exponential distribution that the distribution
of the remaining lifetime of each of the other n − 1 bulbs is still the exponential
distribution with parameter β. In other words, the situation is the same as it would be
if we were starting the test over again from time t = 0 with n − 1new bulbs. Therefore,
Y2 will be equal to the smallest of n − 1 i.i.d. random variables, each of which has the
exponential distribution with parameter β. It follows from Theorem 5.7.10 that Y2
will have the exponential distribution with parameter (n − 1)β. The next result deals
with the remaining waiting times between failures.
Theorem
5.7.11
Suppose that the variables X1, . . . , Xn form a random sample from the exponential
distribution with parameter β. Let Z1 ≤ Z2 ≤ . . . ≤ Zn be the random variables
X1, . . . , Xn sorted from smallest to largest. For each k = 2, . . . , n, let Yk
= Zk
− Zk−1.
Then the distribution of Yk is the exponential distribution with parameter (n + 1−
k)β.
Proof At the time Zk−1, exactly k − 1 of the lifetimes have ended and there are
n + 1− k lifetimes that have not yet ended. For each of the remaining lifetimes, the
conditional distribution of what remains of that lifetime given that it has lasted at
least Zk−1 is still exponential with parameter β by the memoryless property. So, Yk
=
Zk
− Zk−1 has the same distribution as the minimum lifetime from a random sample
of size n + 1− k from the exponential distribution with parameter β. According to
Theorem 5.7.10, that distribution is exponential with parameter (n + 1− k)β.

# Relation to the Poisson Process

## Example 5.7.8: Radioactive Particles

Suppose that radioactive particles strike a target according to a
Poisson process with rate β, as defined in Definition 5.4.2. Let Zk be the time until the
kth particle strikes the target for k = 1, 2, . . .. What is the distribution of Z1? What
is the distribution of Yk
= Zk
− Zk−1 for k ≥ 2?  
Although the random variables defined at the end of Example 5.7.8 look similar
to those in Theorem 5.7.11, there are major differences. In Theorem 5.7.11, we were observing a fixed number n of lifetimes that all started simultaneously. The n lifetimes
are all labeled in advance, and each could be observed independently of the others.
In Example 5.7.8, there is no fixed number of particles being contemplated, and we
have no well-defined notion of when each particle “starts” toward the target. In fact,
we cannot even tell which particle is which until after they are observed.We merely
start observing at an arbitrary time and record each time a particle hits. Depending
on how long we observe the process, we could see an arbitrary number of particles
hit the target in Example 5.7.8, but we could never see more than n failures in the
setup of Theorem 5.7.11, no matter how long we observe. Theorem 5.7.12 gives the
distributions for the times between arrivals in Example 5.7.8, and one can see how
the distributions differ from those in Theorem 5.7.11.

## Theorem 5.7.12: Times between Arrivals in a Poisson Process

Suppose that arrivals occur according to
a Poisson process with rate β. Let Zk be the time until the kth arrival for k = 1, 2, . . . .
Define Y1 = Z1 and Yk
= Zk
− Zk−1 for k ≥ 2. Then Y1, Y2, . . . are i.i.d. and they each
have the exponential distribution with parameter β.
Proof Let t > 0, and define X to be the number of arrivals from time 0 until time t .
It is easy to see that Y1 ≤ t if and only if X ≥ 1. That is, the first particle strikes the
target by time t if and only if at least one particle strikes the target by time t. We
already know that X has the Poisson distribution with mean βt, where β is the rate
of the process. So, for t > 0,
Pr(Y1 ≤ t) = Pr(X ≥ 1) = 1− Pr(X = 0) = 1− e
−βt .
Comparing this to Eq. (5.7.19), we see that 1− e
−βt is the c.d.f. of the exponential
distribution with parameter β.
What happens in a Poisson process after time t is independent of what happens
up to time t . Hence, the conditional distribution given Y1 = t of the gap from time
t until the next arrival at Z2 is the same as the distribution of the time from time
0 until the first arrival. That is, the distribution of Y2 = Z2 − Z1 given Y1 = t (i.e.,
Z1 = t) is the exponential distribution with parameter β no matter what t is. Hence,
Y2 is independent of Y1 and they have the same distribution. The same argument can
be applied to find the distributions for Y3, Y4, . . . .
An exponential distribution is often used in a practical problem to represent
the distribution of the time that elapses before the occurrence of some event. For
example, this distribution has been used to represent such periods of time as the
period for which a machine or an electronic component will operate without breaking
down, the period required to take care of a customer at some service facility, and the
period between the arrivals of two successive customers at a facility.
If the events being considered occur in accordance with a Poisson process, then
both the waiting time until an event occurs and the period of time between any two
successive events will have exponential distributions. This fact provides theoretical
support for the use of the exponential distribution in many types of problems.

We can combine Theorem 5.7.12 with Theorem 5.7.7 to obtain the following.

## Corollary 5.7.1: Time until $k$th Arrival

In the situation of Theorem 5.7.12, the distribution of Zk is the
gamma distribution with parameters k and β.

# Summary

The gamma function is defined by  (α) =
  ∞
0 xα−1e
−x dx and has the property that
 (n) = (n − 1)! for n = 1, 2, . . . . If X1, . . . , Xn are independent random variables
with gamma distributions all having the same second parameter β, then
 n
i=1 Xi has
the gamma distribution with first parameter equal to the sum of the first parameters
of X1, . . . , Xn and second parameter equal to β. The exponential distribution with
parameter β is the same as the gamma distribution with parameters 1 and β. Hence,
the sum of a random sample of n exponential random variables with parameter β
has the gamma distribution with parameters n and β. For a Poisson process with rate
β, the times between successive occurrences have the exponential distribution with
parameter β, and they are independent. The waiting time until the kth occurrence
has the gamma distribution with parameters k and β.

# Exercises

1. Suppose that X has the gamma distribution with parameters
α and β, and c is a positive constant. Show that
cX has the gamma distribution with parameters α and β/c.
2. Compute the quantile function of the exponential distribution
with parameter β.
3. Sketch the p.d.f. of the gamma distribution for each of
the following pairs of values of the parameters α and β:
(a) α = 1/2 and β = 1, (b) α = 1 and β = 1, (c) α = 2 and
β = 1.
4. Determine the mode of the gamma distribution with
parameters α and β.
5. Sketch the p.d.f. of the exponential distribution for each
of the following values of the parameter β: (a) β = 1/2, (b)
β = 1, and (c) β = 2.
6. Suppose that X1, . . . , Xn form a random sample of
size n from the exponential distribution with parameter
β. Determine the distribution of the sample mean Xn.
7. Let X1, X2, X3 be a random sample from the exponential
distribution with parameter β. Find the probability
that at least one of the random variables is greater than
t , where t > 0.
8. Suppose that the random variables X1, . . . , Xk are independent
and Xi has the exponential distribution with
parameter βi (i = 1, . . . , k). Let Y = min{X1, . . . , Xk
}.
Show that Y has the exponential distribution with parameter
β1 + . . . + βk.
9. Suppose that a certain system contains three components
that function independently of each other and are
connected in series, as defined in Exercise 5 of Sec. 3.7,
so that the system fails as soon as one of the components
fails. Suppose that the length of life of the first component,
measured in hours, has the exponential distribution
with parameter β = 0.001, the length of life of the second
component has the exponential distribution with parameter
β = 0.003, and the length of life of the third component
has the exponential distribution with parameter β =0.006.
Determine the probability that the system will not fail before
100 hours.
10. Suppose that an electronic system contains n similar
components that function independently of each other
and that are connected in series so that the system fails
as soon as one of the components fails. Suppose also that
the length of life of each component, measured in hours,
has the exponential distribution with mean μ. Determine
the mean and the variance of the length of time until the
system fails.
11. Suppose that n items are being tested simultaneously,
the items are independent, and the length of life of each
item has the exponential distribution with parameter β.
Determine the expected length of time until three items
have failed. Hint: The required value is E(Y1 + Y2 + Y3) in
the notation of Theorem 5.7.11.
12. Consider again the electronic system described in Exercise
10, but suppose now that the system will continue
to operate until two components have failed. Determine
the mean and the variance of the length of time until the
system fails.
13. Suppose that a certain examination is to be taken by
five students independently of one another, and the number
of minutes required by any particular student to complete
the examination has the exponential distribution for
which the mean is 80. Suppose that the examination begins
at 9:00 a.m. Determine the probability that at least
one of the students will complete the examination before
9:40 a.m.
326 Chapter 5 Special Distributions
14. Suppose again that the examination considered in Exercise
13 is taken by five students, and the first student to
complete the examination finishes at 9:25 a.m. Determine
the probability that at least one other student will complete
the examination before 10:00 a.m.
15. Suppose again that the examination considered in Exercise
13 is taken by five students. Determine the probability
that no two students will complete the examination
within 10 minutes of each other.
16. It is said that a random variableX has thePareto distribution
with parameters x0 and α (x0 > 0 andα >0) ifX has
a continuous distribution for which the p.d.f. f (x|x0, α) is
as follows:

0 for x <x0.
Show that if X has this Pareto distribution, then the random
variable log(X/x0) has the exponential distribution
with parameter α.

17. Suppose that a random variable X has the normal
distribution with mean μ and variance σ2. Determine the
value of E[(X − μ)2n] for n = 1, 2, . . . .
18. Consider a random variable X for which Pr(X > 0) =
1, the p.d.f. is f , and the c.d.f. is F. Consider also the
function h defined as follows:
h(x) = f (x)
1− F(x)
for x >0.
The function h is called the failure rate or the hazard function
of X. Show that if X has an exponential distribution,
then the failure rate h(x) is constant for x > 0.

19. It is said that a random variable has theWeibull distribution
with parameters a and b (a >0 and b > 0) if X has
a continuous distribution for which the p.d.f. f (x|a, b) is
as follows:

−(x/a)b for x >0,
0 for x ≤ 0.
Show that if X has thisWeibull distribution, then the random
variable Xb has the exponential distribution with parameter
β = a
−b.

20. It is said that a random variable X has an increasing
failure rate if the failure rate h(x) defined in Exercise 18 is
an increasing function of x for x >0, and it is said that X
has a decreasing failure rate if h(x) is a decreasing function
of x forx >0. Suppose that X has theWeibull distribution
with parameters a and b, as defined in Exercise 19. Show
that X has an increasing failure rate if b > 1, and X has a
decreasing failure rate if b < 1.

21. Let X have the gamma distribution with parameters α >2 and β >0.

* a. Prove that the mean of 1/X is β/(α − 1).
* b. Prove that the variance of 1/X is β2/[(α − 1)2 (α − 2)].

22. Consider the Poisson process of radioactive particle
hits in Example 5.7.8. Suppose that the rate β of the Poisson
process is unknown and has the gamma distribution
with parameters α and γ . Let X be the number of particles
that strike the target during t time units. Prove that
the conditional distribution of β given X = x is a gamma
distribution, and find the parameters of that gamma distribution.

23. Let F be a continuous c.d.f. satisfying F(0) = 0, and
suppose that the distribution with c.d.f. F has the memoryless
property (5.7.18). Define  (x) = log[1− F(x)] for
x >0.

* a. Show that for all t, h > 0,
1− F(h) = 1− F(t + h)
1− F(t)

* b. Prove that  (t + h) =  (t) +  (h) for all t, h > 0.
* c. Prove that for all t > 0 and all positive integers k and m,  (kt/m) = (k/m) (t).
* d. Prove that for all t, c > 0,  (ct) = c (t).
* e. Prove that g(t) =  (t)/t is constant for t > 0.
* f. Prove that F must be the c.d.f. of an exponential distribution.

24. Review the derivation of the Black-Scholes formula
(5.6.18). For this exercise, assume that our stock price at
time u in the future is S0eμu+Wu, whereWu has the gamma
distribution with parameters αu and β withβ >1. Let r be
the risk-free interest rate.

* a. Prove that e−ruE(Su) = S0 if and only if μ = r −α log(β/[β − 1]).
* b. Assume that μ = r − α log(β/[β − 1]). Let R be 1 minus the c.d.f. of the gamma distribution with parameters
αu and 1. Prove that the risk-neutral price for
the option to buy one share of the stock for the price
q at time u is S0R(c[β − 1]) − qe
−ruR(cβ), where
c = log


* c. Find the price for the option being considered when
u = 1, q = S0, r = 0.06, α = 1, and β = 10.


