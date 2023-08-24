# Linear Statistical Models

## The Method of Least Squares

When each observation from an experiment is a pair of numbers, it is often
important to try to predict one of the numbers from the other. Least squares is
a method for constructing a predictor of one of the variables from the other by
making use of a sample of observed pairs.
Fitting a Straight Line
Example
11.1.1
Blood Pressure. Suppose that each of 10 patients is treated with the same amount of
two different drugs that can affect blood pressure. To be specific, each patient is first
treated with a standard drugA, and their change in blood pressure is measured. After
the effect of the drug wears off, the patient is treated with an equal amount of a new
drug B, and their change in blood pressure is measured again. These changes in blood
pressure will be called the reaction of the patient to each drug. For i = 1, . . . , 10, we
shall let xi denote the reaction, measured in appropriate units, of the ith patient to
drug A, and we shall let yi denote her reaction to drug B. The observed values of
the reactions are as given in Table 11.1. The 10 points (xi , yi) for i = 1, . . . , 10 are
plotted in Fig. 11.1. One purpose of the study is to try to predict a patient’s reaction
to drug B if their reaction to the standard drug A is already known.  
In Example 11.1.1, suppose that we are interested in describing the relationship
between the reaction y of a patient to drug B and her reaction x to drug A. In order
to obtain a simple expression for this relationship, we might wish to fit a straight line
to the 10 points plotted in Fig. 11.1. Although these 10 points obviously do not lie
exactly on a straight line, we might believe that the deviations from such a line are
caused by the fact that the observed change in the blood pressure of each patient is
affected not only by the two drugs but also by various other factors. In other words,
we might believe that if it were possible to control all of these other factors, the
observed points would actually lie on a straight line. We might believe further that
if we measured the reactions to the two drugs for a very large number of patients,
instead of for just 10 patients, we would then find that the observed points tend to
689
690 Chapter 11 Linear Statistical Models
Table 11.1 Reactions to two drugs
i xi yi
1 1.9 0.7
2 0.8 −1.0
3 1.1 −0.2
4 0.1 −1.2
5 −0.1 −0.1
6 4.4 3.4
7 4.6 0.0
8 1.6 0.8
9 5.5 3.7
10 3.4 2.0
Figure 11.1 A plot of the
observed values in Table 11.1.
x
y
 1
 1
1
2
3
4
5
1 2 3 4 5 6 7
cluster along a straight line. Perhaps we might also wish to be able to predict the
reaction y of a future patient to the new drug B on the basis of her reaction x to
the standard drug A. One procedure for making such a prediction would be to fit a
straight line to the points in Fig. 11.1, and to use this line for predicting the value of
y corresponding to each value of x.
It can be seen from Fig. 11.1 that if we did not have to consider the point (4.6, 0.0),
which is obtained from the patient for whom i = 7 in Table 11.1, then the other nine
points lie roughly along a straight line. One arbitrary line that fits reasonably well to
these nine points is sketched in Fig. 11.2. However, if we wish to fit a straight line
to all 10 points, it is not clear just how much the line in Fig. 11.2 should be adjusted
in order to accommodate the anomalous point.We shall now describe a method for
fitting such a line.
11.1 The Method of Least Squares 691
Figure 11.2 A straight line
fitted to nine of the points in
Table 11.1.
x
y
21
1
2
3
4
5
2 3 4 5 6 7
Figure 11.3 Vertical deviations
of the plotted points
from a straight line.
x
y
21
1
2
3
4
5
2 3 4 5 6 7
The Least-Squares Line
Example
11.1.2
Blood Pressure. In Example 11.1.1, suppose that we are interested in fitting a straight
line to the points plotted in Fig. 11.1 in order to obtain a simple mathematical
relationship for expressing the reaction y of a patient to the new drug B as a function
of her reaction x to the standard drug A. In other words, our main objective is to
be able to predict closely a patient’s reaction y to drug B from her reaction x to
drug A. We are interested, therefore, in constructing a straight line such that, for
each observed reaction xi , the corresponding value of y on the straight line will be
as close as possible to the actual observed reaction yi . The vertical deviations of the
10 plotted points from the line drawn in Fig. 11.2 are sketched in Fig. 11.3.  
One method of constructing a straight line to fit the observed values is called the
method of least squares, which chooses the line to minimize the sum of the squares of
the vertical deviations of all the points from the line.We shall now study the method
of least squares in more detail.
692 Chapter 11 Linear Statistical Models
Theorem
11.1.1
Least Squares. Let (x1, y1), . . . , (xn, yn) be a set of n points. The straight line that
minimzes the sum of the squares of the vertical deviations of all the points from the
line has the following slope and intercept:
ˆ β1 =
 n
i=1(yi
− y)(xi
− x)
 n
i=1(xi
− x)2
,
ˆ β0 = y − ˆ β1x,
(11.1.1)
where x = 1
n
 n
i=1 xi and y = 1
n
 n
i=1 yi .
Proof Consider an arbitrary straight line y = β0 + β1x, in which the values of the
constants β0 and β1 are to be determined. When x = xi , the height of this line is
β0 + β1xi . Therefore, the vertical distance between the point (xi , yi) and the line is
|yi
− (β0 + β1xi)|. Suppose that the line is to be fitted to n points. The sum of the
squares of the vertical distances at the n points is
Q =
 n
i=1
[yi
− (β0 + β1xi)]2. (11.1.2)
We shall minimize Q with respect to β0 and β1 by taking the partial derivatives and
setting them to 0.We have
∂Q
∂β0
=−2
 n
i=1
(yi
− β0 − β1xi) (11.1.3)
and
∂Q
∂β1
=−2
 n
i=1
(yi
− β0 − β1xi)xi . (11.1.4)
By setting each of these two partial derivatives equal to 0, we obtain the following
pair of equations:
β0n + β1
 n
i=1
xi
=
 n
i=1
yi,
β0
 n
i=1
xi
+ β1
 n
i=1
x2
i
=
 n
i=1
xiyi .
(11.1.5)
The equations (11.1.5) are called the normal equations for β0 and β1. By considering
the second-order derivatives of Q, we can show that the values of β0 and β1
that satisfy the normal equations will be the values for which the sum of squares Q
in Eq. (11.1.2) is minimized. Solving (11.1.5) yields the values in (11.1.1).
Definition
11.1.1
Least-Squares Line. Let ˆ β0 and ˆ β1 be as defined in (11.1.1). The line defined by the
equation y = ˆ β0 + ˆ β1x is called the least-squares line.
For the values given in Table 11.1, n = 10, and it is found from Eq. (11.1.1)
that ˆ β0 =−0.786 and ˆ β1 = 0.685. Hence, the equation of the least-squares line is
y =−0.786 + 0.685x. This line is sketched in Fig. 11.4.
Virtually all statistical computer software will compute the least-squares regression
line. Even some handheld calculators will do the calculation.
11.1 The Method of Least Squares 693
Figure 11.4 The leastsquares
straight line.
x
y
21
1
2
3
4
5
2 3 4 5 6 7
Fitting a Polynomial by the Method of Least Squares
Suppose now that instead of simply fitting a straight line to n plotted points, we wish
to fit a polynomial of degree k (k ≥ 2). Such a polynomial will have the following
form:
y = β0 + β1x + β2x2 + . . . + βkxk. (11.1.6)
The method of least squares specifies that the constants β0, . . . , βk should be chosen
so that the sumQof the squares of the vertical deviations of the points from the curve
is a minimum. In other words, these constants should be chosen so as to minimize
the following expression for Q:
Q =
 n
i=1
[yi
− (β0 + β1xi
+ . . . + βkxk
i )]2. (11.1.7)
If we calculate the k + 1 partial derivatives ∂Q/∂β0, . . . , ∂Q/∂βk, and we set
each of these derivatives equal to 0, we obtain the following k + 1 linear equations
involving the k + 1 unknown values β0, . . . , βk:
β0n + β1
 n
i=1
xi
+ . . . + βk
 n
i=1
xk
i
=
 n
i=1
yi,
β0
 n
i=1
xi
+ β1
 n
i=1
x2
i
+ . . . + βk
 n
i=1
xk+1
i
=
 n
i=1
xiyi,
...
β0
 n
i=1
xk
i
+ β1
 n
i=1
xk+1
i
+ . . . + βk
 n
i=1
x2k
i
=
 n
i=1
xk
i yi .
(11.1.8)
As before, these equations are called the normal equations. If the normal equations
have a unique solution, that solution provides the minimum value for Q. A
necessary and sufficient condition for a unique solution is that the determinant of
the (k + 1) × (k + 1) matrix formed by the coefficients of β0, . . . , βk in Eq. (11.1.8)
is not zero. We shall now assume that this is the case. If we denote the solution as
( ˆ β0, . . . , ˆ βk), then the least-squares polynomial is y = ˆ β0 + ˆ β1x + . . . + ˆ βkxk.
694 Chapter 11 Linear Statistical Models
Figure 11.5 The leastsquares
parabola.
x
y
22 21
1
2
3
4
5
2 3 4 5 6 7
Parabola
Straight line
Example
11.1.3
Fitting a Parabola. Suppose that we wish to fit a polynomial of the form y = β0 +
β1x + β2x2 (which represents a parabola) to the 10 points given in Table 11.1. In this
example, it is found that the normal equations 11.1.8 are as follows:
10β0 + 23.3β1 + 90.37β2 = 8.1,
23.3β0 + 90.37β1 + 401.0β2 = 43.59, (11.1.9)
90.37β0 + 401.0β1 + 1892.7β2 = 204.55.
The unique values of β0, β1, and β2 that satisfy these three equations are ˆ β0=−0.744,
ˆ β1 = 0.616, and ˆ β2 = 0.013. Hence, the least-squares parabola is
y =−0.744 + 0.616x + 0.013x2. (11.1.10)
This curve is sketched in Fig. 11.5 together with the least-squares straight line. Because
the coefficient of x2 in Eq. (11.1.10) is so small, the least-squares parabola
and the least-squares straight line are very close together over the range of values
included in Fig. 11.5.  
Example
11.1.4
Gasoline Mileage. Heavenrich and Hellman (1999) report several variables measured
on 173 different cars. Among those variables are gasoline mileage (in miles per
gallon) and engine horsepower.Aplot of miles per gallon versus horsepower is shown
in Fig. 11.6 together with a parabola fit by least squares. Even without the curve
Figure 11.6 Plot of miles
per gallon versus engine
horsepower for 173 cars in
Example 11.1.4. The leastsquares
parabola is also
drawn in the plot.
Engine horsepower
Miles per gallon
100 200 300 400
50
40
30
20
0
11.1 The Method of Least Squares 695
drawn in Fig. 11.6, it is clear that a straight line would not provide an adequate fit to
the relationship between these two variables. Some sort of curved relationship must
be fit. The least-squares parabola curves up for the largest values of horsepower,
which is somewhat counterintuitive. Indeed, this might be an example in which it
would pay to use some prior information to impose a constraint on the fitted curve.
Alternatively, we could replace gasoline mileage by a curved function of miles per
gallon and use this curved function as the y variable.  
Fitting a Linear Function of Several Variables
We shall now consider an extension of the example discussed at the beginning of this
section, in which we were interested in representing a patient’s reaction to a new drug
B as a linear function of her reaction to drug A. Suppose that we wish to represent
a patient’s reaction to drug B as a linear function involving not only her reaction to
drugAbut also some other relevant variables. For example, we may wish to represent
the patient’s reaction y to drug B as a linear function involving her reaction x1 to drug
A, her heart rate x2, and blood pressure x3 before she receives any drugs, and other
relevant variables x4, . . . , xk.
Suppose that for each patient i (i = 1, . . . , n) we measure her reaction yi to drug
B, her reaction xi1 to drug A, and also her values xi2, . . . , xik for the other variables.
Suppose also that in order to fit these observed values for the n patients, we wish to
consider a linear function having the form
y = β0 + β1x1 + . . . + βkxk. (11.1.11)
In this case, also, the values of β0, . . . , βk can be determined by the method of least
squares. For each given set of observed values xi1, . . . , xik, we again consider the
difference between the observed reaction yi and the value β0 + β1xi1 + . . . + βkxik
of the linear function given in Eq. (11.1.11). As before, it is required to minimize the
sum Q of the squares of these differences. Here,
Q =
 n
i=1
[yi
− (β0 + β1xi1 + . . . + βkxik)]2. (11.1.12)
We minimize this the same way that we minimized (11.1.7), namely, by setting the
partial derivatives of Q with respect to each βj equal to 0 for j = 0, . . . , k. In this
case, the k + 1 normal equations have the following form:
β0n + β1
 n
i=1
xi1 + . . . + βk
 n
i=1
xik
=
 n
i=1
yi,
β0
 n
i=1
xi1 + β1
 n
i=1
x2
i1
+ . . . + βk
 n
i=1
xi1xik
=
 n
i=1
xi1yi,
...
β0
 n
i=1
xik
+ β1
 n
i=1
xikxi1 + . . . + βk
 n
i=1
x2
ik
=
 n
i=1
xikyi .
(11.1.13)
If the normal equations have a unique solution, we shall denote that solution
( ˆ β0, . . . , ˆ βk), and the least-squares linear function will then be y = ˆ β0 + ˆ β1x1 + . . . +
ˆ βkxk. As before, a necessary and sufficient condition for a unique solution is that the
determinant of the (k + 1) × (k + 1) matrix formed by the coefficients of β0, . . . , βk
in Eq. (11.1.13) is not zero.
696 Chapter 11 Linear Statistical Models
Table 11.2 Reactions to two drugs and
heart rate
i xi1 xi2 yi
1 1.9 66 0.7
2 0.8 62 −1.0
3 1.1 64 −0.2
4 0.1 61 −1.2
5 −0.1 63 −0.1
6 4.4 70 3.4
7 4.6 68 0.0
8 1.6 62 0.8
9 5.5 68 3.7
10 3.4 66 2.0
Example
11.1.5
Fitting a Linear Function of Two Variables. Suppose that we expand Table 11.1 to
include the values given in the third column in Table 11.2. Here, for each patient
i (i = 1, . . . , 10), xi1 denotes her reaction to the standard drug A, xi2 denotes her
heart rate, and yi denotes her reaction to the new drug B. Suppose also that we wish
to fit a linear function to these values having the form y = β0 + β1x1 + β2x2.
In this example, it is found that the normal equations (11.1.13) are
10β0 + 23.3β1 + 650β2 = 8.1,
23.3β0 + 90.37β1 + 1563.6β2 = 43.59, (11.1.14)
650β0 + 1563.6β1 + 42, 334β2 = 563.1.
The unique values of β0, β1, and β2 that satisfy these three equations are ˆ β0 =
−11.4527, ˆ β1 = 0.4503, and ˆ β2 = 0.1725. Hence, the least-squares linear function is
y =−11.4527 + 0.4503x1 + 0.1725x2. (11.1.15)
 
It should be noted that the problem of fitting a polynomial of degree k involving
only one variable, as specified by Eq. (11.1.6), can be regarded as a special case of
the problem of fitting a linear function involving several variables, as specified by
Eq. (11.1.11). To make Eq. (11.1.11) applicable to the problem of fitting a polynomial
having the form given in Eq. (11.1.6), we define the k variables x1, . . . , xk simply as
x1 = x, x2 = x2, . . . , xk
= xk.
A polynomial involving more than one variable can also be represented in the
form of Eq. (11.1.11). For example, suppose that the values of four variables r, s, t ,
and y are observed for several different patients, and we wish to fit to these observed
values a function having the following form:
y = β0 + β1r + β2r2 + β3rs + β4s2 + β5t3 + β6rst. (11.1.16)
We can regard the function in Eq. (11.1.16) as a linear function having the form given
in Eq. (11.1.11) with k = 6 if we define the six variables x1, . . . , x6 as follows: x1 = r,
x2 = r2, x3 = rs, x4 = s2, x5 = t3, and x6 = rst .
11.1 The Method of Least Squares 697
Summary
The method of least squares allows the calculation of a predictor for one variable (y)
based on one or more other variables (x1, . . . , xk) of the form β0 + β1x1 + . . . + βkxk.
The coefficients β0, . . . , βk are chosen so that the sum of squared differences between
observed values of y and observed values of β0 + β1x1 + . . . + βkxk is as small as
possible. Algebraic formulas for the coefficients are given for the case k = 1, but
most statistical computer software will calculate the coefficients more easily.
Exercises
1. Prove that
 n
i=1(c1xi
+ c2)2 = c2
1
 n
i=1(xi
− x)2 +
n(c1x + c2)2.
2. Show that the value of ˆ β1 in Eq. (11.1.1) can be rewritten
in each of the following three forms:
a. ˆ β1 =
 n
i=1 xiyi
− nxy
 n
i=1 x2
i
− nx2
b. ˆ β1 =
 n
i=1(xi
− x)yi  n
i=1(xi
− x)2
c. ˆ β1 =
 n
i=1 xi(yi
− y)
 n
i=1(xi
− x)2
3. Show that the least-squares line y = ˆ β0 + ˆ β1x passes
through the point (x, y).
4. For i = 1, . . . , n, let ˆyi
= β0 + β1xi . Show that ˆ β0 and
ˆ β1, as given by Eq. (11.1.1), are the unique values of β0
and β1 such that
 n
i=1
(yi
− ˆyi) = 0 and
 n
i=1
xi(yi
− ˆyi) = 0.
5. Fit a straight line to the observed values given in
Table 11.1 so that the sum of the squares of the horizontal
deviations of the points from the line is a minimum. Sketch
on the same graph both this line and the least-squares line
given in Fig. 11.4.
6. Suppose that both the least-squares line and the leastsquares
parabola were fitted to the same set of points.
Explain why the sum of the squares of the deviations of
the points from the parabola cannot be larger than the
sum of the squares of the deviations of the points from
the straight line.
7. Suppose that eight specimens of a certain type of alloy
were produced at different temperatures, and the durability
of each specimen was then observed. The observed
values are given in Table 11.3, where xi denotes the temperature
(in coded units) at which specimen i was produced
and yi denotes the durability (in coded units) of
that specimen.
Table 11.3 Data for Exercise 7
i xi yi
1 0.5 40
2 1.0 41
3 1.5 43
4 2.0 42
5 2.5 44
6 3.0 42
7 3.5 43
8 4.0 42
a. Fit a straight line of the form y = β0 + β1x to these
values by the method of least squares.
b. Fit a parabola of the form y = β0 + β1x + β2x2 to
these values by the method of least squares.
c. Sketch on the same graph the eight data points, the
line found in part (a), and the parabola found in
part (b).
8. Let (xi , yi) for i = 1, . . . , k + 1, denote k + 1 given
points in the xy-plane such that no two of these points have
the same x-coordinate. Show that there is a unique polynomial
having the form y = β0 + β1x + . . . + βkxk that passes
through these k + 1 points.
9. The resilience y of a certain type of plastic is to be
represented as a linear function of both the temperature
x1 at which the plastic is baked and the number of minutes
x2 for which it is baked. Suppose that 10 pieces of
plastic are prepared by using different values of x1 and
x2, and the observed values in appropriate units are as
given in Table 11.4. Fit a function having the form y =
β0 + β1x1 + β2x2 to these observed values by the method
of least squares.
698 Chapter 11 Linear Statistical Models
10. Consider again the observed values presented inTable
11.4. Fit a function having the form y = β1x1+ β2x2 + β3x2
2
to these values by the method of least squares.
Table 11.4 Data for Exercise 9
i xi1 xi2 yi i xi1 xi2 yi
1 100 1 113 6 120 2 144
2 100 2 118 7 120 3 138
3 110 1 127 8 130 1 146
4 110 2 132 9 130 2 156
5 120 1 136 10 130 3 149
11. Consider again the observed values presented inTable
11.4, and consider also the two functions that were fitted
to these values in Exercises 9 and 10. Which of these two
functions fits the observed values better?
11.2 Regression
In Sec. 11.1, we introduced the method of least squares. This method computes
coefficients for a linear function to predict one variable y based on other variables
x1, . . . , xk. In this section, we assume that the y values are observed values of a
collection of random variables. In this case, there is a statistical model in which the
method of least squares turns out to produce the maximum likelihood estimates
of the parameters of the model.
Regression Functions
Example
11.2.1
Pressure and the Boiling Point of Water. Forbes (1857) reports the results from experiments
that were trying to obtain a method for estimating altitude. A formula
is available for altitude in terms of barometric pressure, but it was difficult to carry
a barometer to high altitudes in Forbes’ day. However, it might be easy for travelers
to carry a thermometer and measure the boiling point of water. Table 11.5
contains the measured barometric pressures and boiling points of water from 17 experiments.
We can use the method of least squares to fit a linear relationship between
boiling point and pressure. Let yi be the pressure for one of Forbes’ observations,
and let xi be the corresponding boiling point for i = 1, . . . , 17. Using the data in
Table 11.5, we can compute the least-squares line. The intercept and slope are, respectively,
ˆ β0 =−81.049 and ˆ β1 = 0.5228. Of course, we do not expect that the line
y =−81.049 + 0.5228x precisely gives the relationship between boiling point x and
pressure y. If we learn the boiling point x of water and want to compute the conditional
distribution of the unknown pressure Y , is there a statistical model that allows
us to say what the (conditional) distribution of pressure is given that the boiling point
is x?  
In this section, we shall describe a statistical model for problems such as the one
in Example 11.2.1. Fitting this statistical model will make use of the method of least
squares. We shall study problems in which we are interested in learning about the
conditional distribution of some random variable Y for given values of some other
variables X1, . . . , Xk. The variables X1, . . . , Xk may be random variables whose
values are to be observed in an experiment along with the values of Y , or they may be
control variables whose values are to be chosen by the experimenter. In general, some
11.2 Regression 699
Table 11.5 Boiling point of water in degrees Fahrenheit
and atmospheric pressure in inches of mercury
from Forbes’ experiments. These data are
taken from Weisberg (1985, p. 3).
Boiling Point Pressure
194.5 20.79
194.3 20.79
197.9 22.40
198.4 22.67
199.4 23.15
199.9 23.35
200.9 23.89
201.1 23.99
201.4 24.02
201.3 24.01
203.6 25.14
204.6 26.57
209.5 28.49
208.6 27.76
210.7 29.04
211.9 29.88
212.2 30.06
of these variables might be random variables, and some might be control variables. In
any case, we can study the conditional distribution of Y given X1, . . . , Xk.We begin
with some terminology.
Definition
11.2.1
Response/Predictor/Regression. The variables X1, . . . , Xk are called predictors, and
the random variable Y is called the response. The conditional expectation of Y
for given values x1, . . . , xk of X1, . . . ,Xk is called the regression function of Y on
X1, . . . , Xk, or simply the regression of Y on X1, . . . , Xk.
The regression of Y onX1, . . . , Xk is a function of the values x1, . . . , xk ofX1, . . . , Xk.
In symbols, this function is E(Y|x1, . . . , xk).
In this chapter, we shall assume that the regression function E(Y|x1, . . . , xk) is
a linear function having the following form:
E(Y|x1, . . . , xk) = β0 + β1x1 + . . . + βkxk. (11.2.1)
The coefficients β0, . . . , βk in Eq. (11.2.1) are called regression coefficients.We shall
suppose that these regression coefficients are unknown. Therefore, they are to be
regarded as parameters whose values are to be estimated. We shall suppose also
that n vectors of observations are obtained. For i = 1, . . . , n, we shall assume that
the ith vector (xi1, . . . , xik, yi) consists of a set of controlled or observed values of
X1, . . . , Xk and the corresponding observed value of Y .
700 Chapter 11 Linear Statistical Models
One set of estimators of the regression coefficients β0, . . . , βk that can be calculated
from these observations is the set of values ˆ β0, . . . , ˆ βk that are obtained by
the method of least squares, as described in Sec. 11.1. These estimators are called the
least-squares estimators of β0, . . . , βk. We shall now specify some further assumptions
about the conditional distribution of Y given X1, . . . , Xk in order to be able to
determine in greater detail the properties of these least-squares estimators.
Simple Linear Regression
We shall consider first a problem in which we wish to study the regression of Y on just
a single variableX.We shall assume that for each valueX = x, the random variable Y
can be represented in the form Y = β0 + β1x + ε, where ε is a random variable that has
the normal distribution with mean 0 and variance σ2. It follows from this assumption
that the conditional distribution of Y given X = x is the normal distribution with
mean β0 + β1x and variance σ2.
A problem of this type is called a problem of simple linear regression. Here the
term simple refers to the fact that we are considering the regression of Y on just a
single variable X, rather than on more than one variable; the term linear refers to
the fact that the regression function E(Y|x) = β0 + β1x is a linear function of the
parameters β0 and β1. For example, a problem in which E(Y|x) is a polynomial, like
the right side of Eq. (11.1.6), would also be a linear regression problem, but not
simple.
Throughout this section (and the next two sections), we shall consider the problem
in which we shall observe n pairs (x1, Y1), . . . , (xn, Yn). We shall make the following
five assumptions. Each of these assumptions has a natural generalization to
the case in which there is more than one predictor, but we shall postpone discussion
of that case until Sec. 11.5.
Assumption
11.2.1
Predictor is known. Either the values x1, . . . , xn are known ahead of time or they are
the observed values of random variables X1, . . . , Xn on whose values we condition
before computing the joint distribution of (Y1, . . . , Yn).
Assumption
11.2.2
Normality. For i = 1, . . . , n, the conditional distribution of Yi given the values
x1, . . . , xn is a normal distribution.
Assumption
11.2.3
Linear Mean. There are parameters β0 and β1 such that the conditional mean of Yi
given the values x1, . . . , xn has the form β0 + β1xi for i = 1, . . . , n.
Assumption
11.2.4
Common Variance. There is a parameter σ2 such that the conditional variance of Yi
given the values x1, . . . , xn is σ2 for i = 1, . . . , n. This assumption is often called homoscedasticity.
Random variables with different variances are called heteroscedastic.
Assumption
11.2.5
Independence. The random variables Y1, . . . , Yn are independent given the observed
x1, . . . , xn.
Abrief word is in order about Assumption 11.2.1. In Example 11.1.1, we saw that
the reaction xi of patient i to standard drug A is observed as part of the experiment
along with the reaction yi to drug B. Hence, the predictors are not known in advance.
In this case, all probability statements that we make in this example are conditional on
(x1, . . . , xn). In other examples, one might be trying to predict an economic variable
using the year in which it was measured. In such cases, such as Example 11.5.1, which
11.2 Regression 701
we will see later, the values of at least some of the predictors are truely known in
advance.
Assumptions 11.2.1–11.2.5 specify the conditional joint distribution of Y1, . . . , Yn
given the vector x = (x1, . . . , xn) and the parameters β0, β1, and σ2. In particular, the
conditional joint p.d.f. of Y1, . . . , Yn is
fn( y|x, β0, β1, σ2) = 1
(2πσ2)n/2 exp
 
− 1
2σ2
 n
i=1
(yi
− β0 − β1xi)2
 
. (11.2.2)
We can now find the M.L.E.’s of β0, β1, and σ2.
Theorem
11.2.1
Simple Linear Regression M.L.E.’s. Assume Assumptions 11.2.1–11.2.5. The M.L.E.’s
of β0 and β1 are the least-squares estimates, and the M.L.E. of σ2 is
ˆσ
2 = 1
n
 n
i=1
(yi
− ˆ β0 − ˆ β1xi)2. (11.2.3)
Proof For each observed vector y = (y1, . . . , yn), the p.d.f. (11.2.2) will be the likelihood
function of the parameters β0, β1, and σ2. In Eq. (11.2.2), β0 and β1 appear
only in the sum of squares
Q =
 n
i=1
(yi
− β0 − β1xi)2,
which in turn appears in the exponent multiplied by −1/[2σ2]. Regardless of the
value of σ2, the exponent is maximized over β0 and β1 by minimizing Q. It follows
that the M.L.E.’s can be found in sequence by first minimizingQover β0 and β1, then
inserting the values ˆ β0 and ˆ β1 that provide the minimum ofQ, and finally minimizing
the result over σ2. The reader will note that Q is the same as the sum of squares in
Eq. (11.1.2), which is minimized by the method of least squares. Thus, the M.L.E.’s
of the regression coefficients β0 and β1 are precisely the same as the least-squares
estimates. The exact form of these estimates ˆ β0 and ˆ β1 was given in Eq. (11.1.1).
To find the M.L.E. of σ2, perform the the second and third steps described in the
preceding paragraph, namely, first replace β0 and β1 in Eq. (11.2.2) by their M.L.E.’s
ˆ β0 and ˆ β1, and then maximize the resulting expression with respect to σ2. The details
are left to Exercise 1 at the end of this section, and the result is (11.2.3).
The Distribution of the Least-Squares Estimators
We shall now present the joint distribution of the estimators ˆ β0 and ˆ β1 when they
are regarded as functions of the random variables Y1, . . . , Yn for given values of
x1, . . . , xn. Specifically, the estimators are
ˆ β1 =
 n
i=1(Yi
− y)(xi
− x)
 n
i=1(xi
− x)2
,
ˆ β0 = Y − ˆ β1x,
where Y = 1
n
 n
i=1 Yi .
It is convenient, both for this section and the next, to introduce the symbol
sx
=
 
 n
i=1
(xi
− x)2
 1/2
. (11.2.4)
702 Chapter 11 Linear Statistical Models
Theorem
11.2.2
Distributions of Least-Squares Estimators. Under Assumptions 11.2.1–11.2.5, the distribution
of ˆ β1 is the normal distribution with mean β1 and variance σ2/s2
x. The
distribution of ˆ β0 is the normal distribution with mean β0 and variance
σ2
 
1
n
+ x 2
s 2
x
 
. (11.2.5)
Finally, the covariance of ˆ β1 and ˆ β0 is
Cov( ˆ β0, ˆ β1)=−xσ2
s2
x
. (11.2.6)
(All of the distributional statements in this theorem are conditional on Xi
= xi for
i = 1, . . . , n if X1, . . . , Xn are random variables.)
Proof To determine the distribution of ˆ β1, it is convenient to write ˆ β1 as follows (see
Exercise 2 at the end of Sec. 11.1):
ˆ β1 =
 n
i=1(xi
− x)Yi
s2
x
. (11.2.7)
It can be seen from Eq. (11.2.7) that ˆ β1 is a linear function of Y1, . . . , Yn. Because the
random variables Y1, . . . , Yn are independent and each has a normal distribution, it
follows that ˆ β1 will also have a normal distribution. Furthermore, the mean of this
distribution will be
E( ˆ β1) =
 n
i=1(xi
− x)E(Yi)
s2
x
.
Because E(Yi) = β0 + β1xi for i = 1, . . . , n, it can now be found (see Exercise 2 at
the end of this section) that
E( ˆ β1) = β1. (11.2.8)
Furthermore, because the random variables Y1, . . . , Yn are independent and each
has variance σ2, it follows from Eq. (11.2.7) that
Var( ˆ β1) =
 n
i=1(xi
− x)2 Var(Yi)
s4
x
= σ2
s2
x
. (11.2.9)
Next, consider the distribution of ˆ β0 = Y − ˆ β1x. Because both Y and ˆ β1 are linear
functions of Y1, . . . , Yn, it follows that ˆ β0 is also a linear function of Y1, . . . , Yn. Hence,
ˆ β0 will have a normal distribution. The mean of ˆ β0 can be determined from the
relation E( ˆ β0) = E(Y) − xE( ˆ β1). It can be shown (see Exercise 3) that E( ˆ β0) = β0.
Furthermore, it can be shown (see Exercise 4) thatVar( ˆ β0) is given by (11.2.5).Finally,
it can be shown (see Exercise 5) that the value of the covariance between ˆ β0 and ˆ β1
is given by (11.2.6).
Asimple corollary to Theorem 11.2.2 is that ˆ β0 and ˆ β1 are, respectively, unbiased
estimators of the corresponding parameters β0 and β1.
To complete the description of the joint distribution of ˆ β0 and ˆ β1, it will be shown
in Sec. 11.3 that this joint distribution is the bivariate normal distribution for which
the means, variances, and covariance are as stated in Theorem 11.2.2.
11.2 Regression 703
Example
11.2.2
Pressure and the Boiling Point ofWater. In Example 11.2.1, we found the least-squares
line for predicting pressure from boiling point of water. Suppose that we use the linear
regression model just described as a model for the data in this experiment. That is,
let Yi be the pressure for one of Forbes’ observations, and let xi be the corresponding
boiling point for i = 1, . . . , 17. We model the Yi as being independent with means
β0 + β1xi and variance σ2. The average temperature is x = 202.95 and s2
x
= 530.78
with n = 17. From these values, we can now compute the variances and covariances of
the least-squares estimators using the formulas derived in this section. For example,
Var( ˆ β1) = σ2
530.78
= 0.00188σ2,
Var( ˆ β0) = σ2
 
1
17
+ 202.952
530.78
 
= 77.66σ2,
Cov( ˆ β0, ˆ β1)=−202.95σ2
530.78
= 0.382σ2.
It is easy to see that we expect to get a much more precise estimate of β1 than of β0.
 
The statement at the end of Example 11.2.2 about getting more precise estimates
of β1 than of β0 is a bit deceptive. We must multiply β1 by a number on the order of
200 before it is on the same scale as β0. Hence, it might make more sense to compare
the variance of 200 ˆ β1 to the variance of ˆ β0. In general, we can find the variance of
any linear combination of the least-squares estimators.
Example
11.2.3
The Variance of a Linear Combination. Very often, we need to compute the variance
of a linear combination of the least-squares estimators. One example is prediction,
as discussed later in this section. Suppose that we wish to compute the variance of
T = c0
ˆ β0 + c1
ˆ β1 + c∗. The variance of T can be found by substituting the values of
Var( ˆ β0), Var( ˆ β1), and Cov( ˆ β0, ˆ β1) given in Eqs. (11.2.5), (11.2.9), and (11.2.6) in the
following relation:
Var(T ) = c2
0 Var( ˆ β0) + c2
1 Var( ˆ β1) + 2c0c1 Cov( ˆ β0, ˆ β1).
When these substitutions have been made, the result can be written in the following
form:
Var(T ) = σ2
 
c2
0
n
+ (c0x − c1)2
s2
x
 
. (11.2.10)
For the specific case of Example 11.2.2, we have c0 = 0 and c1 = 200, so the variance
of 200 ˆ β1 is 2002σ2/s2
x
= 75.36σ2. This is pretty close to the variance of ˆ β0, namely,
77.66σ2.  
Prediction
Example
11.2.4
Predicting Pressure from the Boiling Point of Water. In Example 11.2.1, Forbes was
trying to find a way to use the boiling point of water to estimate the barometric
pressure. Suppose that a traveler measures the boiling point of water to be 201.5
degrees. What estimate of barometric pressure should they give and how much
uncertainty is there about this estimate?  
704 Chapter 11 Linear Statistical Models
Suppose that n pairs of observations (x1, Y1), . . . , (xn, Yn) are to be obtained in a
problem of simple linear regression, and on the basis of these n pairs, it is necessary
to predict the value of an independent observation Y that will be obtained when a
certain specified value x is assigned to the control variable. Since the observation Y
will have the normal distribution with mean β0 + β1x and variance σ2, it is natural to
use the value ˆ Y = ˆ β0 + ˆ β1x as the predicted value of Y . We shall now determine the
M.S.E. E[( ˆ Y − Y)2] of this prediction, where both ˆ Y and Y are random variables.
Theorem
11.2.3
M.S.E. of Prediction. In the prediction problem just described,
E[( ˆ Y − Y)2]= σ2
 
1+ 1
n
+ (x − x)2
s2
x
 
. (11.2.11)
Proof In this problem, E( ˆ Y ) = E(Y) = β0 + β1x. Thus, if we let μ = β0 + β1x, then
E[( ˆ Y − Y)2]= E{[( ˆ Y − μ) − (Y − μ)]2}
= Var( ˆ Y ) + Var(Y ) − 2 Cov( ˆ Y, Y).
(11.2.12)
However, the random variables ˆ Y and Y are independent, because ˆ Y is a function
of the first n pairs of observations and Y is an independent observation. Therefore,
Cov( ˆ Y, Y) = 0, and it follows that
E[( ˆ Y − Y)2]= Var( ˆ Y ) + Var(Y ). (11.2.13)
Finally, because ˆ Y = ˆ β0 + ˆ β1x, the value of Var( ˆ Y ) is given by Eq. (11.2.10)
with c0 = 1 and c1 = x. Also Var(Y ) = σ2. Substituting these into Eq. (11.2.13) gives
(11.2.11).
Example
11.2.5
Predicting Pressure from the Boiling Point of Water. In Example 11.2.4, we wanted to
predict barometric pressure when the boiling point of water is 201.5 degrees. The
least-squares line is y =−81.049 + 0.5228x, and ˆσ 2 = 0.0478. Fig. 11.7 shows the data
plotted together with the least-squares regression line and the location of the point
on the line that has x = 201.5. The M.S.E. of the prediction of pressure Y is obtained
from Eq. (11.2.11):
E[( ˆ Y − Y)2]= σ2
 
1+ 1
17
+ (201.5 − 202.95)2
530.78
 
= 1.0628σ2,
and the observed value of the prediction is ˆ Y =−81.06 + 0.5229 × 201.5= 24.30. The
calculation of ˆ Y is illustrated in Fig. 11.7. The M.S.E. 1.0628σ2 can be interpreted as
follows: If we knew the values of β0 and β1 and tried to predict Y , the M.S.E. would
be Var(Y ) = σ2. Having to estimate β0 and β1 only costs us an additional 0.0628σ2 in
M.S.E.  
Note: M.S.E. of Prediction Increases as x Moves Away from Observed Data. The
M.S.E. in Eq. (11.2.11) increases as x moves away from x, and it is smallest when
x = x. This indicates that it is harder to predict Y when x is not near the center of
the observed values x1, . . . , xn. Indeed, if x is larger than the largest observed xi or
smaller than the smallest one, it is quite difficult to predict Y with much precision.
Such predictions outside the range of the observed data are called extrapolations.
11.2 Regression 705
Figure 11.7 Plot of pressure
versus boiling point
with regression line for Example
11.2.5. Dotted line
illustrates prediction of pressure
when boiling point is
201.5.
Boiling point
Pressure
195 200 205 210
30
28
26
24
22
0
201.5
24.30
Design of the Experiment
Consider a problem of simple linear regression in which the variable X is a control
variable whose values x1, . . . , xn can be chosen by the experimenter.We shall discuss
methods for choosing these values so as to obtain good estimators of the regression
coefficients β0 and β1.
Suppose first that the values x1, . . . , xn are to be chosen so as to minimize the
M.S.E. of the least-squares estimator ˆ β0. Since ˆ β0 is an unbiased estimator of β0, the
M.S.E. of ˆ β0 is equal to Var( ˆ β0), as given in Eq. (11.2.5). It follows from Eq. (11.2.5)
thatVar( ˆ β0) ≥ σ2/n for all values x1, . . . , xn, and there will be equality in this relation
if and only if x = 0. Hence, Var( ˆ β0) will attain its minimum value σ2/n whenever
x = 0. Of course, this will be impossible in any application in which X is constrained
to be positive.
Suppose next that the values x1, . . . , xn are to be chosen so as to minimize the
M.S.E. of the estimator ˆ β1. Again, the M.S.E. of ˆ β1 will be equal to Var( ˆ β1), as given
in Eq. (11.2.9). It can be seen from Eq. (11.2.9) that Var( ˆ β1) will be minimized by
choosing the values x1, . . . , xn so that the value of s2
x is maximized. If the values
x1, . . . , xn must be chosen from some bounded interval (a, b) of the real line, and if
n is an even integer, then the value of s2
x will be maximized by choosing xi
= a for
exactly n/2 values and choosing xi
= b for the other n/2 values. If n is an odd integer,
all the values should again be chosen at the endpoints a and b, but one endpoint must
now receive one more observation than the other endpoint.
It follows from this discussion that if the experiment is to be designed so as to
minimize both the M.S.E. of ˆ β0 and the M.S.E. of ˆ β1, then the values x1, . . . , xn should
be chosen so that exactly, or approximately, n/2 values are equal to some number c
that is as large as is feasible in the given experiment, and the remaining values are
equal to −c. In this way, the value of x will be exactly, or approximately, equal to 0,
and the value of s2
x will be as large as possible.
Finally, suppose that the linear combination θ = c0β0 + c1β1 + c∗ is to be estimated,
where c0  = 0, and that the experiment is to be designed so as to minimize
the M.S.E. of ˆ θ, that is, to minimize Var( ˆ θ). For example, if Y is a future observation
with corresponding predictor x, then we could set c0 = 1, c2 = x, and c∗ = 0 in order
to make θ = E(Y|x). In Example 11.2.3, we computed Var(T ), where T = ˆ θ, as the
sum of two nonnegative terms in Eq. (11.2.10). The second term is the only one that
706 Chapter 11 Linear Statistical Models
depends on the values of x1, . . . , xn, and it equals 0 (its smallest possible value) if
and only if x = c1/c0. In this case, Var( ˆ θ) will attain its minimum value c2
0σ2/n.
In practice, an experienced statistician would not usually choose all the values
x1, . . . , xn at a single point or at just the two endpoints of the interval (a, b), as the
optimal designs that we have just derived would dictate. The reason is that when all
n observations are taken at just one or two values of X, the experiment provides
no possibility of checking the assumption that the regression of Y on X is a linear
function. In order to check this assumption without unduly increasing the M.S.E.
of the least-squares estimators, many of the values x1, . . . , xn should be chosen at
the endpoints a and b, but at least some of the values should be chosen at a few
interior points of the interval. Linearity can then be checked by visual inspection of
the plotted points and the fitting of a polynomial of degree two or higher.
Summary
We considered the following statistical model. The values x1, . . . , xn are assumed
known. The random variables Y1, . . . , Yn are independent with Yi having the normal
distribution with mean β0 + β1xi and variance σ2. Here, β0, β1, and σ2 are unknown
parameters. These are the assumptions of the simple linear regression model. Under
this model, the joint distribution of the least-squares estimators ˆ β0 and ˆ β1 is a bivariate
normal distribution with ˆ βi having mean βi for i = 1, 2. The variances are given
in Eqs. (11.2.5) and (11.2.9). The covariance is given in Eq. (11.2.6). If we consider
predicting a future Y value with corresponding predictor x, we might use the prediction
ˆ Y = ˆ β0 + ˆ β1x. In this case, Y − ˆ Y has the normal distribution with mean 0 and
variance given by Eq. (11.2.11).
Exercises
1. Show that the M.L.E. of σ2 is given by Eq. (11.2.3).
2. Show that E( ˆ β1) = β1.
3. Show that E( ˆ β0) = β0.
4. Show that Var( ˆ β0) is as given in Eq. (11.2.5).
5. Show that Cov( ˆ β0, ˆ β1) is as given in Eq. (11.2.6). Hint:
Use the result in Exercise 8 in Sec. 4.6.
6. Show that in a problem of simple linear regression, the
estimators ˆ β0 and ˆ β1 will be independent if x = 0.
7. Consider a problem of simple linear regression in which
a patient’s reaction Y to a new drug B is to be related to
his reaction X to a standard drug A. Suppose that the 10
pairs of observed values given in Table 11.1 are obtained.
a. Determine the values of the M.L.E.’s ˆ β0, ˆ β1, and ˆσ 2.
b. Determine the values of Var( ˆ β0) and Var( ˆ β1).
c. Determine the value of the correlation of ˆ β0 and ˆ β1.
8. Consider again the conditions of Exercise 7, and suppose
that it is desired to estimate the value of θ = 3β0 −
2β1 + 5. Determine an unbiased estimator of θ and find its
M.S.E.
9. Consider again the conditions of Exercise 7, and let θ =
3β0 + c1β1, where c1 is a constant. Determine an unbiased
estimator ˆ θ of θ. For what value of c1 will the M.S.E. of ˆ θ
be smallest?
10. Consider again the conditions of Exercise 7. If a particular
patient’s reaction to drug A has the value x = 2,
what is the predicted value of his reaction to drug B, and
what is the M.S.E. of this prediction?
11. Consider again the conditions of Exercise 7. For what
value x of a patient’s reaction to drug A can his reaction
to drug B be predicted with the smallest M.S.E.?
11.3 Statistical Inference in Simple Linear Regression 707
12. Consider a problem of simple linear regression in
which the durability Y of a certain type of alloy is to be
related to the temperature X at which it was produced.
Suppose that the eight pairs of observed values given
in Table 11.3 are obtained. Determine the values of the
M.L.E.’s ˆ β0, ˆ β1, and ˆσ 2, and also the values of Var( ˆ β0) and
Var( ˆ β1).
13. For the conditions of Exercise 12, determine the value
of the correlation of ˆ β0 and ˆ β1.
14. Consider again the conditions of Exercise 12, and suppose
that it is desired to estimate the value of θ = 5 −
4β0 + β1. Find an unbiased estimator ˆ θ of θ. Determine
the value of ˆ θ and the M.S.E. of ˆ θ.
15. Consider again the conditions of Exercise 12, and let
θ = c1β1 − β0, where c1 is a constant. Determine an unbiased
estimator ˆ θ of θ. For what value of c1 will the M.S.E.
of ˆ θ be smallest?
16. Consider again the conditions of Exercise 12. If a specimen
of the alloy is to be produced at the temperature
x = 3.25, what is the predicted value of the durability of
the specimen, and what is the M.S.E. of this prediction?
17. Consider again the conditions of Exercise 12. For what
value of the temperature x can the durability of a specimen
of the alloy be predicted with the smallest M.S.E.?
18. Moore and McCabe (1999, p. 174) report prices paid
for several species of seafood in 1970 and 1980. These
values are in Table 11.6. If we were interested in trying
to predict 1980 seafood prices from 1970 prices, a linear
regression model might be used.
a. Find the least-squares regression coefficients for predicting
1980 prices from 1970 prices.
b. If an additional species sold for 21.4 in 1970, what
would you predict for the 1980 selling price?
c. What is the M.S.E. for predicting the 1980 price of a
species that sold for 21.4 in 1970?
Table 11.6 Fish prices in 1970 and 1980 for
Exercise 18
1970 1980 1970 1980
13.1 27.3 26.7 80.1
15.3 42.4 47.5 150.7
25.8 38.7 6.6 20.3
1.8 4.5 94.7 189.7
4.9 23 61.1 131.3
55.4 166.3 135.6 404.2
39.3 109.7 47.6 149
19. In the 1880s, Francis Galton studied the inheritance
of physical characteristics. Galton found that the sons of
tall men tended to be taller than average, but shorter than
their fathers. Similarly, sons of short men tended to be
shorter than average, but taller than their fathers. Thus,
the average heights of the sons were closer to the mean
height of the population, regardless of whether the fathers
were taller or shorter than average. From these observations,
one might conclude that the variability of height decreases
over successive generations, both tall persons and
short persons tend to be eliminated, and the population
“regresses” toward some average height. This conclusion
is an example of the regression fallacy. In this problem you
will prove that the regression fallacy arises in the bivariate
normal distribution even when both coordinates have
the same variance. In particular, assume that the vector
(X1, X2) has the bivariate normal distribution with common
mean μ, common variance σ2, and positive correlation
ρ <1. Prove that E(X2|x1) is closer to μ than x1 is to
μ for every value x1. (This occurs despite the fact that X1
and X2 have the same mean and the same variance.)
11.3 Statistical Inference in Simple Linear Regression
Many of the inference procedures introduced in Chapters 8 and 9 that were used for
samples from a normal distribution can be extended to the simple linear regression
model. The theorems that allowed us to conclude that various statistics had t
distributions will continue to apply in the regression case.
Joint Distribution of the Estimators
Example
11.3.1
Pressure and the Boiling Point ofWater. Consider the traveler in Example 11.2.4, who is
interested in the barometric pressure when the boiling point of water is 201.5 degrees.
Suppose that this traveler would like to know whether the pressure is 24.5. For
example, the traveler might wish to test the null hypothesis H0 : β0 + 201.5β1 = 24.5.
708 Chapter 11 Linear Statistical Models
Alternatively, the traveler might desire an interval estimate of β0 + 201.5β1. Such
inferences are possible once we find the joint distribution of the estimators of all of
the parameters (β0, β1, and σ2) of the regression model.  
It was stated after the proof of Theorem 11.2.2 that, in a problem of simple linear
regression, the joint distribution of the M.L.E.’s ˆ β0 and ˆ β1 is the bivariate normal
distribution for which the means, the variances, and the covariance are specified
in Theorem 11.2.2. In this section, we shall prove this fact. We shall also consider
the M.L.E. ˆσ 2, which was presented in Eq. (11.2.3), and we shall derive the joint
distribution of ˆ β0, ˆ β1, and ˆσ 2. In particular, we shall show that the estimator ˆσ 2 is
independent of ˆ β0 and ˆ β1.
We continue to make Assumptions 11.2.1–11.2.5. The derivation of the joint
distribution of ˆ β0, ˆ β1, and ˆσ 2, which we shall present, is based on the properties of
orthogonal matrices, as described in Sec. 8.3.
We shall continue to use the definition of sx in Eq. (11.2.4). Also, let a1 =
(a11, . . . , a1n) and a2 = (a21, . . . , a2n) be n-dimensional vectors, which are defined
as follows:
a1j
= 1
n1/2 for j = 1, . . . , n, (11.3.1)
and
a2j
= 1
sx
(xj
− x) for j = 1, . . . , n. (11.3.2)
It is easily verified that
 n
j=1 a2
1j
= 1,
 n
j=1 a2
2j
= 1, and
 
j=1 a1ja2j
= 0.
Because the vectors a1 and a2 have these properties, it is possible to construct
an n × n orthogonal matrix Asuch that the coordinates of a1 form the first row of A,
and coordinates of a2 form the second row of A. (To see how this is done, consult a
linear algebra text, such as Cullen, 1972, p. 162, for the Gram-Schmidt method.)We
shall assume that such a matrix A has been constructed:
A=
⎡
⎢⎢⎢⎣
a11 . . . a1n
a21 . . . a2n ...
. . .
...
an1 . . . ann
⎤
⎥⎥⎥⎦
.
We shall now define a new random vector Z by the relation Z = AY, where
Y =
⎡
⎢⎣
Y1
...
Yn
⎤
⎥⎦
and Z =
⎡
⎢⎣
Z1
...
Zn
⎤
⎥⎦
.
The joint distribution of Z1, . . . ,Zn can be found from the following theorem, which
is an extension of Theorem 8.3.4.
Theorem
11.3.1
Suppose that the random variables Y1, . . . , Yn are independent, and each has a
normal distribution with the same variance σ2. If A is an orthogonal n × n matrix
and Z = AY, then the random variables Z1, . . . , Zn also are independent, and each
has a normal distribution with variance σ2.
Proof Let E(Yi) = μi for i = 1, . . . , n (it is not assumed in the theorem that Y1, . . . ,
Yn have the same mean), and let
11.3 Statistical Inference in Simple Linear Regression 709
μ =
⎡
⎣
μ1
...
μn
⎤
⎦.
Also, let X = (1/σ )(Y − μ). Since it is assumed that the coordinates of the random
vector Y are independent, then the coordinates of the random vector X will also
be independent. Furthermore, each coordinate of X will have the standard normal
distribution. Therefore, it follows from Theorem 8.3.4 that the coordinates of the
n-dimensional random vector AX will also be independent, and each will have the
standard normal distribution.
But
AX = 1
σ
A(Y − μ) = 1
σ
Z − 1
σ
Aμ.
Hence,
Z = σAX + Aμ. (11.3.3)
Since the coordinates of the random vector AX are independent, and each has the
standard normal distribution, then the coordinates of the random vector σAX will
also be independent, and each will have the normal distribution with mean 0 and
variance σ2. When the vector Aμ is added to the random vector σAX, the mean of
each coordinate will be shifted, but the coordinates will remain independent, and the
variance of each coordinate will be unchanged. It now follows from Eq. (11.3.3) that
the coordinates of the random vector Z will be independent, and each will have a
normal distribution with variance σ2.
In a problem of simple linear regression, the observations Y1, . . . , Yn satisfy the
conditions of Theorem 11.3.1. Therefore, the coordinates of the random vector Z =
AY will be independent, and each will have a normal distribution with variance σ2.
We can use these facts to find the joint distribution of ( ˆ β0, ˆ β1, ˆσ 2).
Theorem
11.3.2
In the simple linear regression problem described above, the joint distribution of
( ˆ β0, ˆ β1) is the bivariate normal distribution for which the means, variances, and
covariance are as stated inTheorem 11.2.2. Also, if n ≥ 3, ˆσ 2 is independent of ( ˆ β0, ˆ β1)
and nˆσ 2/σ 2 has the χ2 distribution with n − 2 degrees of freedom.
Proof The first two coordinates Z1 and Z2 of the random vector Z can easily be
derived. The first coordinate is
Z1 =
 n
j=1
a1jYj
= 1
n1/2
 n
j=1
Yj
= n1/2Y . (11.3.4)
Since ˆ β0 = Y − x ˆ β1, we may also write
Z1 = n1/2( ˆ β0 + x ˆ β1). (11.3.5)
The second coordinate is
Z2 =
 n
j=1
a2jYj
= 1
sx
 n
j=1
(xj
− x)Yj . (11.3.6)
By Eq. (11.2.7), we may also write
Z2 = sx
ˆ β1. (11.3.7)
710 Chapter 11 Linear Statistical Models
Together, Eqs. (11.3.5) and (11.3.7) imply that
ˆ β0 = n
−1/2Z1 − x
sx
Z2,
ˆ β1 = 1
sx
Z2.
(11.3.8)
Since Z1 and Z2 are independent normal random variables, they have a bivariate
normal joint distribution. Eqs. (11.3.8) express ˆ β0 and ˆ β1 as linear combinations of
Z1 andZ2.These linear combinations satisfy the conditions of Exercise 10 of Sec. 5.10,
which says in turn that ˆ β0 and ˆ β1 have a bivariate normal distribution. We already
calculated the means, variances, and covariance in Theorem 11.2.2.
Now let the random variable S2 be defined as follows:
S2 =
 n
i=1
(Yi
− ˆ β0 − ˆ β1xi)2. (11.3.9)
(It is easy to see that the M.L.E. of σ2, as given in Eq. (11.2.3), is ˆσ 2 = S2/n.)We shall
show that S2 and the random vector ( ˆ β0, ˆ β1) are independent. Since ˆ β0 = Y − x ˆ β1,
we may rewrite S2 as follows:
S2 =
 n
i=1
[Yi
− Y − ˆ β1(xi
− x)]2
=
 n
i=1
(Yi
− Y)2 − 2 ˆ β1
 n
i=1
(xi
− x)(Yi
− Y) + ˆ β2
1 s2
x.
It now follows from Eq. (11.1.1) that
S2 =
 n
i=1
Y 2
i
− nY
2 − s2
x
ˆ β2
1 . (11.3.10)
Since Z = AY, where A is an orthogonal matrix, we know from Theorem 8.3.4
that
 n
i=1 Y 2
i
= n
i=1 Z2
i . By using this fact, we can now obtain the following relation
from Eq. (11.3.4), (11.3.7), and (11.3.10):
S2 =
 n
i=1
Z2
i
− Z2
1
− Z2
2
=
 n
i=3
Z2
i .
The random variables Z1, . . . , Zn are independent, and we have now shown that
S2 is equal to the sum of the squares of only Z3, . . . , Zn. It follows, therefore, that
S2 and the random vector (Z1, Z2) are independent. But ˆ β0 and ˆ β1 are functions of
Z1 and Z2 only, as seen in Eq. (11.3.8). Hence, S2 and the random vector ( ˆ β0, ˆ β1) are
independent.
We shall now derive the distribution of S2. For i = 3, . . . , n, we have Zi
=  n
j=1 aijYj . Hence,
11.3 Statistical Inference in Simple Linear Regression 711
E(Zi) =
 n
j=1
aijE(Yj ) =
 n
j=1
aij(β0 + β1xj )
=
 n
j=1
aij [β0 + β1x + β1(xj
− x)] (11.3.11)
= (β0 + β1x)
 n
j=1
aij
+ β1
 n
j=1
aij(xj
− x).
Since the matrix Ais orthogonal, the sum of the products of the corresponding terms
in any two different rows must be 0. In particular, for i = 3, . . . , n,
 n
j=1
aija1j
= 0 and
 n
j=1
aija2j
= 0.
It now follows from the expressions for a1j and a2j given in Eqs. (11.3.1) and (11.3.2)
that for i = 3, . . . , n,
 n
j=1
aij
= 0 and
 n
j=1
aij(xj
− x) = 0.
When these values are substituted into Eq. (11.3.11), it is found that E(Zi) = 0 for
i = 3, . . . , n.
We now know that the n − 2 random variables Z3, . . . , Zn are independent,
and that each has the normal distribution with mean 0 and variance σ2. Since S2 =  n
i=3 Z2
i , it follows that the random variable S2/σ 2 has the χ2 distribution with n − 2
degrees of freedom.
Finally, we know that ˆσ 2 = S2/n, and hence ˆσ 2 is independent of the estimators
ˆ β0 and ˆ β1, and the distribution of nˆσ 2/σ 2 is the χ2 distribution with n − 2 degrees of
freedom.
Tests of Hypotheses about the Regression Coefficients
It will be convenient, for the remainder of the discussion of simple linear regression,
to let
σ
  =
 
S2
n − 2
 1/2
. (11.3.12)
This random variable will appear in all of the test statistics and confidence intervals
that we derive. It is analogous to the random variable with the same name that
appears in Eqs. (8.4.3) and (8.4.5) and played a similar role in tests and confidence
intervals for the mean of a single normal distribution.
We proved earlier that the joint distribution of ( ˆ β0, ˆ β1) is bivariate normal. This
implies that every linear combination c0
ˆ β0 + c1
ˆ β1 has a normal distribution.We shall
use this fact to simplify the discussion of inference about regression coefficients.We
shall begin by deriving tests of hypotheses concerning a general linear combination
c0β0 + c1β1 of the regression parameters. Then, specific cases will be introduced by
choosing special values for c0 and c1. For example, c0 = 1 and c1 = 0 makes the linear
combination β0, while c0 = 0 and c1 = 1 leads to β1.
712 Chapter 11 Linear Statistical Models
Tests of Hypotheses about a Linear Combination of β0 and β1 Let c0, c1, and c∗
be specified numbers, where at least one of c0 and c1 is nonzero, and suppose that we
are interested in testing the following hypotheses:
H0 : c0β0 + c1β1 = c∗,
H1 : c0β0 + c1β1  = c∗.
(11.3.13)
We shall derive a test of these hypotheses based on the random variables c0
ˆ β0 + c1
ˆ β1
and σ
 .
Theorem
11.3.3
For each 0 < α0 < 1, a level α0 test of the hypotheses (11.3.13) is to reject H0 if
|U01| ≥ T
−1
n−2(1− α0/2), where
U01 =
 
c2
0
n
+ (c0x − c1)2
s2
x
 −1/2  
c0
ˆ β0 + c1
ˆ β1 − c∗
σ 
 
, (11.3.14)
and T
−1
n−2 is the quantile function of the t distribution with n − 2 degrees of freedom.
Proof In general, the mean of c0
ˆ β0 + c1
ˆ β1 is c0β0 + c1β1, and its variance was found
in Eq. (11.2.10). Therefore, when H0 is true, the following random variable W01 has
the standard normal distribution:
W01 =
 
c2
0
n
+ (c0x − c1)2
s2
x
 −1/2 
c0
ˆ β0 + c1
ˆ β1 − c∗
σ
 
.
Because the value of σ is unknown, a test of the hypotheses (11.3.13) cannot be based
simply on the random variable W01. However, the random variable S2/σ 2 has the χ2
distribution with n − 2 degrees of freedom for all possible values of the parameters
β0, β1, and σ2. Moreover, because ( ˆ β0, ˆ β1) is independent of S2, it follows that W01
and S2 are also independent. Hence, when the hypothesis H0 is true, the random
variable
W01  

1
n − 2
   
S2
σ2
  1/2 (11.3.15)
has the t distribution with n − 2 degrees of freedom. It is straightforward to show
that the expression in (11.3.15) also equals U01 in Eq. (11.3.14), which is a function of
the observable data alone. It follows that the test specified in the theorem is a level
α0 test of the hypotheses (11.3.13).
The test procedure in Theorem 11.3.3 is also the likelihood ratio test procedure
for the hypotheses (11.3.13), but the proof will not be given here.
Tests of One-Sided Hypotheses The same derivation just finished can also be used
to form tests of hypotheses such as
H0 : c0β0 + c1β1 ≤ c∗,
H1 : c0β0 + c1β1 > c∗,
(11.3.16)
or
H0 : c0β0 + c1β1 ≥ c∗,
H1 : c0β0 + c1β1 < c∗.
(11.3.17)
11.3 Statistical Inference in Simple Linear Regression 713
The proof of the following result is similar to the proof of Theorem 11.3.3 and will
not be given here.
Theorem
11.3.4
A level α0 test of (11.3.16) is to reject H0 if U01 ≥ T
−1
n−2(1− α0). A level α0 test of
(11.3.17) is to reject H0 if U01≤−T
−1
n−2(1− α0).
The only part of the proof of Theorem 11.3.4 that differs significantly from the
corresponding part of Theorem 11.3.3 is the proof that the tests actually have level
of significance α0. The proof of this is similar to the proof of Theorem 9.5.1 and is left
to the reader in Exercise 23.
We shall next present examples of how to test several common hypotheses
concerning β0 and β1 by making use of the fact that U01 in Eq. (11.3.14) has the t
distribution with n − 2 degrees of freedom.These examples will correspond to setting
c0, c1, and c∗ equal to specific values.
Tests of Hypotheses about β0 Let β
∗
0 be a specified number (−∞ < β
∗
0 <∞),
and suppose that it is desired to test the following hypotheses about the regression
coefficient β0:
H0 : β0 = β
∗
0 ,
H1 : β0  = β
∗
0 .
(11.3.18)
These hypotheses are the same as those in Eq. (11.3.13) if we make the substitutions
c0 = 1, c1 = 0, and c∗ = β
∗
0 . If we substitute these values into the formula for U01 in
Eq. (11.3.14), we obtain the following random variable, U0,
U0 =
ˆ β0 − β
∗
0
σ 
 
1
n
+ x 2
s 2
x
 1/2 , (11.3.19)
which then has the t distribution with n − 2 degrees of freedom if H0 is true.
Suppose that in a problem of simple linear regression, we are interested in testing
the null hypothesis that the regression line y = β0 + β1x passes through the origin
against the alternative hypothesis that the line does not pass through the origin.These
hypotheses can be stated in the following form:
H0 : β0 = 0,
H1 : β0  = 0.
(11.3.20)
Here the hypothesized value β
∗
0 is 0.
Let u0 denote the value of U0 calculated from a given set of observed values (xi ,
yi) for i = 1, . . . , n. Then the tail area (p-value) corresponding to this value is the
two-sided tail area
Pr(U0 ≥ |u0|) + Pr(U0 ≤−|u0|).
For example, suppose that n = 20 and the calculated value of U0 is 2.1. It is found
from a table of the t distribution with 18 degrees of freedom that the corresponding
tail area is 0.05. Hence, at each level of significance α0 < 0.05, the null hypothesis H0
would not be rejected. At every level of significance α0 ≥ 0.05, H0 would be rejected.
Tests of Hypotheses about β1 Let β
∗
1 be a specified number (−∞ < β
∗
1 <∞),
and suppose that it is desired to test the following hypotheses about the regression
714 Chapter 11 Linear Statistical Models
coefficient β1:
H0 : β1 = β
∗
1 ,
H1 : β1  = β
∗
1 .
(11.3.21)
These hypotheses are the same as those in Eq. (11.3.13) if we make the substitutions
c0 = 0, c1 = 1, and c∗ = β
∗
1 . If we substitute these values into the formula for U01 in
Eq. (11.3.14), we obtain the following random variable, U1,
U1 = sx
ˆ β1 − β
∗
1
σ  , (11.3.22)
which then has the t distribution with n − 2 degrees of freedom if H0 is true.
Suppose that in a problem of simple linear regression we are interested in testing
the hypothesis that the variable Y is actually unrelated to the variable X. Under
Assumptions 11.2.1–11.2.5, this hypothesis is equivalent to the hypothesis that the
regression function E(Y|x) is constant and not actually a function of x. Since it is
assumed that the regression function has the form E(Y|x) = β0 + β1x, this hypothesis
is in turn equivalent to the hypothesis that β1 = 0. Thus, the problem is one of testing
the following hypotheses:
H0 : β1 = 0,
H1 : β1  = 0.
Here the hypothesized value β
∗
1 is 0.
Let u1 denote the value of U1 calculated from a given set of observed values (xi ,
yi) for i = 1, . . . , n. Then the p-value corresponding to these data is
Pr(U1 ≥ |u1|) + Pr(U1≤−|u1|).
Example
11.3.2
Gasoline Mileage. Consider the two variables gasoline mileage and engine horsepower
in Example 11.1.4. This time, let Y be 1 over gasoline mileage, that is, gallons
per mile. Also, let X be engine horsepower. A plot of the observed (xi, yi)
pairs is given in Fig. 11.8 together with the fitted least-squares regression line. Notice
how much straighter the relationship is between the two variables in Fig. 11.8
than between the two variables in Fig. 11.6. The least-squares estimates for a simple
linear regression of gallons per mile on engine horsepower are ˆ β0 = 0.01537 and
ˆ β1 = 1.396 × 10−4. Also, σ
  = 7.181× 10−3, x = 183.97, and sx
= 1036.9. Suppose that
Figure 11.8 Plot of gallons
per mile versus engine
horsepower for 173 cars in
Example 11.3.2. The leastsquares
regression line is
drawn on the plot.
Engine horsepower
Gallons per mile
100 200 300 400
0.07
0.06
0.05
0.04
0.03
0.02
0
11.3 Statistical Inference in Simple Linear Regression 715
we wanted to test the null hypothesis H0 : β1 ≥ 0 against the alternative H1 : β1 < 0.
The observed value of the statistic U1 in Eq. (11.3.22) is
u1 = 1036.9
1.396 × 10−4 − 0
7.139 × 10−3
= 20.15,
which is larger than the 1− 10−16 quantile of the t distribution with 171 degrees of
freedom. So, we would reject H0 at every level α0 ≤ 10−16.  
Tests of Hypotheses about the Mean of a Future Observation Suppose that we
are interested in testing the hypothesis that the regression line y = β0 + β1x passes
through a particular point (x
∗, y
∗), where x
∗  = 0. In other words, suppose that we
are interested in testing the following hypotheses:
H0 : β0 + β1x
∗ = y
∗
,
H1 : β0 + β1x
∗  = y
∗
.
These hypotheses have the same form as the hypotheses (11.3.13) with c0 = 1, c1= x
∗,
and c∗ = y
∗. Hence, they can be tested by carrying out a t test with n − 2 degrees of
freedom that is based on the statistic U01.
Example
11.3.3
Pressure and the Boiling Point ofWater. In Example 11.3.1, the traveler was interested
in testing the null hypothesis that H0 : β0 + 201.5β1 = 24.5 versus H1 : β0 + 201.5β1  =
24.5. We shall make use of the statistic U01 in Eq. (11.3.14) with c0 = 1 and c1 =
201.5. Based on the data in Table 11.5, we have already computed the least-squares
estimates ˆ β0 =−81.049 and ˆ β1 = 0.5228. We can also compute n = 17, s2
x
= 530.78,
x = 202.95, and σ
  = 0.2328. Then
U01 =
 
1
17
+ (202.95 − 201.5)2
530.78
 1/2
−81.049 + 201.5 × 0.5228 − 24.5
0.2328
=−0.2204.
If H0 is true, then U0,1 has the t distribution with n − 2 = 15 degrees of freedom. The
p-value corresponding to the observed value −0.2204 is 0.8285. The null hypothesis
would be rejected at level α0 only if α0 ≥ 0.8285.  
Confidence Intervals
Aconfidence interval for β0, β1, or any linear combination of the two can be obtained
from the corresponding test procedure.
Theorem
11.3.5
Let c0 and c1 be scalar constants that are not both 0. The open interval between the
two random variables
c0
ˆ β0 + c1
ˆ β1 ± σ
 
 
c2
0
n
+ (c0x − c1)2
s2
x
 1/2
T
−1
n−2


1− α0
2
 
(11.3.23)
is a coeficient 1− α0 confidence interval for c0β0 + c1β1.
Proof Consider the general hypotheses (11.3.13). Theorem 9.1.1 tells us that the set
of all values of c∗ for which the null hypothesisH0 would not be rejected at the level of
significance α0 forms a confidence interval for c0β0 + c1β1 with confidence coefficient
1− α0. It is straightforward to check that c∗ is between the two random variables in
(11.3.23) if and only if |U01|<T
−1
n−2(1− α0/2), which specifies when the level α0 would
not reject H0 according to Theorem 11.3.3.
716 Chapter 11 Linear Statistical Models
Example
11.3.4
Gasoline Mileage. In Example 11.3.2, we rejected the null hypothesis that β1 ≤ 0, but
we might wish to form an interval estimate of β1. Apply Theorem 11.3.5 with c0 = 0
and c1 = 1. The endpoints of a coefficient 1− α0 confidence interval are then
ˆ β1 ± σ
 
sx
T
−1
n−2


1− α0
2
 
.
For example, suppose that we desire a coefficient 0.8 confidence interval for β1. We
find T
−1
171(0.9) = 1.287 using computer software (or we could have interpolated in the
table in the back of the text). The remaining values needed to compute the endpoints
are given in Example 11.3.2, and the observed interval is (1.307×10−4, 1.485×10−4).
 
Other special cases of Theorem 11.3.5 are when c0 = 1 and c1= 0, which provides
a confidence interval for β0, and when c0 = 1 and c1 = x, which provides a confidence
interval for the mean of Y when X = x. The second of these can also be described as
the height θ = β0 + β1x of the regression line at a given point x. The corresponding
confidence interval has the endpoints
ˆ β0 + ˆ β1x ± T
−1
n−2


1− α0
2
 
σ
 
 
1
n
+ (x − x)2
s2
x
 1/2
. (11.3.24)
Prediction Intervals On page 703, we discussed predicting a new Y value (independent
of the observed data) when we knew the corresponding value of x. Suppose that
we want an interval that should contain Y with some specified probability 1− α0. We
can construct such an interval by considering the joint distribution of Y , ˆ Y = ˆ β0 + ˆ β1x,
and S2.
Theorem
11.3.6
In the simple linear regression problem, let Y be a new observation with predictor
x such that Y is independent of Y1, . . . , Yn. Let ˆ Y = ˆ β0 + ˆ β1x. Then the probability
that Y is between the following two random variables is 1− α0:
ˆ Y ± T
−1
n−2


1− α0
2
 
σ
 
 
1+ 1
n
+ (x − x)2
s2
x
 1/2
. (11.3.25)
Proof Since Y is independent of the observed data, we have that Y , ˆ Y , and S2 are all
independent. Hence, the following two random variables are independent:
Z = Y − ˆ Y
σ
 
1+ 1
n
+ (x − x)2
s2
x
 1/2, W= S2
σ2
.
Since Y and ˆ Y are independent and normally distributed, Z has a normal distribution.
Since E(Y) = E( ˆ Y ), the mean of Z is 0. It follows from Eq. (11.2.13) that the variance
of Z is 1. It follows from Theorem 11.3.2 that W has the χ2 distribution with n − 2
degrees of freedom. It follows that Z/(W/[n − 2])1/2 has the t distribution with n − 2
degrees of freedom. It is easy to see that Z/(W/[n − 2])1/2 is the same as
Ux
= Y − ˆ Y
σ 
 
1+ 1
n
+ (x−x)2
s2
x
 1/2 . (11.3.26)
11.3 Statistical Inference in Simple Linear Regression 717
It follows that Pr(|Ux
|<T
−1
n−2(1− α0/2)) = 1− α0. It is then straightforward to show
that Y is between the two random variables in (11.3.25) if and only if |Ux
|<T
−1
n−2(1−
α0/2).
Definition
11.3.1
Prediction Interval. The random interval whose endpoints are given by (11.3.25) is
called a coefficient 1− α0 prediction interval for Y .
Prior to observing the data, when σ
 , ˆ β0, ˆ β1, and Y are all still random variables,
the endpoints in (11.3.25) have the property that the probability is 1− α0 that Y will
be between the endpoints, and hence in the interval. After the data are observed,
the interpretation of the interval whose endpoints are in (11.3.25) is similar to the
interpretation of a confidence interval, but with the added complication that Y is still
a random variable.
Example
11.3.5
Gasoline Mileage. Suppose that we wish to predict the gasoline mileage for a car with
a particular engine horsepower x in Example 11.3.2. In particular, let x = 100, and
we shall use α0 = 0.1 to form a prediction interval as above. Using the values computed
in Example 11.3.2 and Eq. (11.3.25), we obtain the interval (0.01737, 0.04127)
for predicting Y gallons per mile. Since Y is in this interval if and only if 1/Y is
between 1/0.01737 = 57.56 and 1/0.04127 = 24.23, we can claim that the following
interval is the observed value of a 90 percent prediction interval for miles per gallon:
(24.23, 57.56).  
The Analysis of Residuals
Whenever a statistical analysis is carried out, it is important to verify that the observed
data appear to satisfy the assumptions on which the analysis is based. For
example, in the statistical analysis of a problem of simple linear regression, we have
assumed that the regression of Y on X is a linear function and that the observations
Y1, . . . , Yn are independent. The M.L.E.’s of β0 and β1 and the tests of hypotheses
about β0 and β1 were developed on the basis of these assumptions, but the data were
not examined to find out whether or not these assumptions were reasonable.
One way to make a quick and informal check of these assumptions is to examine
the discrepancies between the observed values y1, . . . , yn and the fitted regression
line.
Definition
11.3.2
Residuals/Fitted Values. For i = 1, . . . , n, the observed values of ˆyi
= ˆ β0 + ˆ β1xi are
called the fitted values. For i = 1, . . . , n, the observed values of ei
= yi
− ˆyi are called
the residuals.
Specifically, suppose that the n points (xi , ei), for i = 1, . . . , n are plotted in the
xe-plane. It must be true (see Exercise 4 at the end of Sec. 11.1) that
 n
i=1 ei
= 0
and
 n
i=1 xiei
= 0. However, subject to these restrictions, the positive and negative
residuals should be scattered randomly among the points (xi , ei). If the positive
residuals ei tend to be concentrated at either the extreme values of xi or the central
values of xi , then either the assumption that the regression of Y on X is a linear
function or the assumption that the observations Y1, . . . , Yn are independent may be
violated. In fact, if the plot of the points (xi, ei) exhibits any type of regular pattern,
the assumptions may be violated.
Example
11.3.6
Pressure and the Boiling Point of Water. The residuals from a least-squares fit to the
data in Example 11.2.2 can be computed using the coefficients reported in Example
11.2.5: ˆ β0=−81.06 and ˆ β1= 0.5229. Table 11.7 contains the original data together
718 Chapter 11 Linear Statistical Models
Table 11.7 Data from Table 11.5 together with fitted values, residuals
from least-squares fit, and logarithm of pressure
xi yi
ˆy
i
=−81.06 + 0.5229xi ei
= yi
− ˆyi log(yi)
194.5 20.79 20.64 0.1512 3.034
194.3 20.79 20.53 0.2557 3.034
197.9 22.40 22.42 −0.0167 3.109
198.4 22.67 22.68 −0.0081 3.121
199.4 23.15 23.20 −0.0510 3.142
199.9 23.35 23.46 −0.1125 3.151
200.9 23.89 23.99 −0.0954 3.173
201.1 23.99 24.09 −0.0999 3.178
201.4 24.02 24.25 −0.2268 3.179
201.3 24.01 24.19 −0.1845 3.178
203.6 25.14 25.40 −0.2572 3.224
204.6 26.57 25.92 0.6499 3.280
209.5 28.49 28.48 0.0078 3.350
208.6 27.76 28.01 −0.2516 3.324
210.7 29.04 29.11 −0.0697 3.369
211.9 29.88 29.74 0.1428 3.397
212.2 30.06 29.89 0.1660 3.403
with the fitted values ˆyi
=−81.06 + 0.5229xi and the residuals ei
= yi
− ˆyi for all i.
A plot of the residuals versus boiling point is shown in Fig. 11.9. This plot has two
striking features. One is the exceptionally large positive residual corresponding to
xi
= 204.6 at the top of the plot. Observations with such large residuals are sometimes
called outliers. Perhaps either the xi or yi value corresponding to this observation was
recorded incorrectly or this observation was taken under conditions different from
those of the other observations. Or perhaps that particular yi value just happened to
be very far from its mean. The other striking feature of the plot is that, aside from
the outlier, the other residuals seem to form a U-shaped pattern. This sort of pattern
suggests that the relationship between the two variables might be better described
by a curve rather than a straight line.
Techniques for dealing with the two features that we noticed in Fig. 11.9 can
be found in books devoted to regression methodology such as Belsley, Kuh, and
Welsch (1980), Cook and Weisberg (1982), Draper and Smith (1998), and Weisberg
(1985). One possible technique to deal with the curved look of the residual plot is to
transform one or both of the two variables Y andX before performing the regression.
Indeed, Forbes (1857) suspected that the logarithm of pressure would be linearly
related to boiling point. Table 11.7 also contains the logarithms of pressure. If we
perform a regression of the logarithm of pressure on the boiling point, we obtain
the least-squares estimates ˆ β0 =−0.9709 and ˆ β1 = 0.0206. The observed value of
σ
  is 8.730 × 10−3. Residuals from this fit can be computed as log(yi) − (−0.9709 +
0.0206xi), and they are plotted in Fig. 11.10. The one large residual still appears in
11.3 Statistical Inference in Simple Linear Regression 719
Figure 11.9 Plot of residuals
versus boiling point for
Example 11.3.6.
Boiling point
Residuals
195 200 205 210
0.6
0.4
0.2
20.2
Figure 11.10 Plot of residuals
from regression of logpressure
versus boiling point
for Example 11.3.6.
Residuals
195 200 205 210
0.03
0.02
0.01
0.0
0 Boiling point
Fig. 11.10, but the curved shape of the remaining residuals has vanished. To see what
effect that one observation has on the regression, we can fit the regression using only
the other 16 observations. In this case, the estimated coefficients are ˆ β0 =−0.9518
and ˆ β1 = 0.0205 with σ
  = 2.616 × 10−3. The coefficients don’t change much, but the
estimated standard deviation drops to less than one-third of its previous value.  
Note: Both Models Cannot Be Correct in Example 11.3.6. It cannot be the case
that both the mean of pressure and the mean of the logarithm of pressure are linear
functions of boiling point.When the residual plot in Fig. 11.9 revealed a curved shape,
we began to suspect that the mean of pressure was not a linear function of boiling
point. In this case, the probabilistic calculations performed in Examples 11.2.2, 11.2.5,
and 11.3.3 become suspect as well.
Note: What to Do with Outliers. The data point with X = 204.6 in Example 11.3.6
makes it difficult to interpret the results of the regression analysis. Forbes (1857)
labels this point “Evidently a mistake.” Generally, when such data points appear
in our data sets, we should try to verify whether they were collected under the
same conditions as the remaining data. Sometimes the process by which the data
are collected changes during the experiment. If the removal of the outlier makes a
noticeable difference to the analysis, then that observation must be dealt with. If it
is not possible to show that the observation should be removed based on how it was
collected, it might be that the distribution of the Yi values is different from a normal
distribution. It might be that the distribution has higher probability of producing
720 Chapter 11 Linear Statistical Models
extremely large deviations from the mean. In this case, one might have to resort to
robust regression procedures similar to the robust procedures described in Sec. 10.7.
Interested readers should consult Hampel et al. (1986) or Rousseeuw and Leroy
(1987).
Normal Quantile Plots Another plot that is helpful in assessing the assumptions of
the regression model is the normal quantile plot, sometimes called a normal scores
plot or a normal Q-Q plot. Assume that the residuals are reasonable estimates of
εi
= Yi
− (β0 + β1xi). Each εi has the normal distribution with mean 0 and variance
σ2 according to the linear regression model. The normal quantile plot compares
quantiles of a normal distribution with the ordered values of the residuals. We
expect about 25 percent of the residuals to be below the 0.25 quantile of the normal
distribution.We expect about 80 percent of the residuals to be below the 0.8 quantile
of the normal distribution, and so forth. We can see how closely these expectations
are met by plotting the ordered residuals against quantiles of the normal distribution.
Let r1 ≤ r2 ≤ . . . ≤ rn be the residuals ordered from smallest to largest. The points
that we plot are ( 
−1(i/[n + 1]), ri) for i = 1, . . . , n, where  
−1 is the standard
normal quantile function.The numbers 
−1(i/[n + 1]) for i = 1, . . . , nare n quantiles
of the standard normal distribution that divide the standard normal distribution
into intervals of equal probability, including the intervals below the first quantile
and above the last one. If the plotted points lie roughly along the line y = x, then
roughly 25 percent of the residuals lie below the 0.25 quantile of the standard normal
distribution, and roughly 80 percent of the residuals lie below the 0.8 quantile, and
so on. If the points lie on a different line y = ax + b, then we could multiply the first
coordinate of each point by a and add b to the first coordinate. This would make the
new points lie on the line y = x, and the first coordinate of each point is now a quantile
of the normal distribution with mean b and variance a2. So roughly 25 percent of
the residuals lie below the 0.25 quantile of the normal distribution with mean b and
variance a2, and so on. So, we examine the normal quantile plot to see how close the
points are to lying on a straight line. We don’t care which line it is, because we only
care whether the data look like they come from some normal distribution.We fit the
regression model to help decide which normal distribution.
Example
11.3.7
Pressure and the Boiling Point of Water. As an illustration of the normal quantile
plot, we deleted the troublesome observation (number 12) from the data set of
Example 11.3.6 and fit the model in which the logarithm of pressure is regressed
on the boiling point. The resulting normal quantile plot is shown in Fig. 11.11. The
points in Fig. 11.11 lie roughly on a line, although it is not difficult to detect some
curvature in the plot. It is usually the case that the extreme residuals (lowest and
highest) do not line up well with the others, so one normally pays closest attention
to the middle of the plot. Extreme observations that fall very far from the pattern
of the others suggest a more serious problem. Outliers will typically show up in this
way as well as in the other residual plots.  
If we know the order in which the observations were taken, there are some
additional plots that can help reveal whether there is some dependence between
the observations. We will introduce these plots when we discuss multiple regression
later in this chapter. Readers desiring a deeper understanding of graphics associated
with linear regression should read Cook and Weisberg (1994).
11.3 Statistical Inference in Simple Linear Regression 721
Figure 11.11 Normal quantile
plot for regression of
log-pressure on boiling point
with observation number 12
removed.
Normal quantiles
Residuals
21.5 21.0 20.5 0.5 1.0 1.5
0.002
0.004
20.002
20.004
Inference about Both β0 and β1 Simultaneously
Tests of Hypotheses about Both β0 and β1 Suppose next that β
∗
0 and β
∗
1 are given
numbers and that we are interested in testing the following hypotheses about the
values of β0 and β1:
H0 : β0 = β
∗
0 and β1 = β
∗
1 ,
H1 : The hypothesis H0 is not true.
(11.3.27)
These hypotheses are not a special case of (11.3.13); hence, we shall not be able to test
these hypotheses using U01 from Eq. (11.3.14). Instead, we shall derive the likelihood
ratio test procedure for the hypotheses (11.3.27).
The likelihood function fn( y|x, β0, β1, σ2) is given by Eq. (11.2.2).We know from
Sec. 11.2 that the likelihood function attains its maximum value when β0, β1, and σ2
are equal to the M.L.E.’s ˆ β0, ˆ β1, and ˆσ 2, as given by Eq. (11.1.1) and Eq. (11.2.3).
When the null hypothesis H0 is true, the values of β0 and β1 must be β
∗
0 and β
∗
1 ,
respectively. For these values of β0 and β1, the maximum value of fn( y|x, β
∗
0, β
∗
1, σ2)
over all the possible values of σ2 will be attained when σ2 has the following value ˆσ 2
0:
ˆσ
2
0
= 1
n
 n
i=1
(yi
− β
∗
0
− β
∗
1xi)2.
Now consider the statistic
 ( y|x) =
supσ2 fn( y|x, β
∗
0, β
∗
1, σ2)
supβ0,β1,σ 2 fn( y|x, β0, β1, σ2)
.
By using the results that have just been described, it can be shown that
 ( y|x) =
 
ˆσ
2
ˆσ
2
0
 n/2
=
  n
i=1(yi
− ˆ β0 − ˆ β1xi)2
 n
i=1(yi
− β
∗
0
− β
∗
1xi)2
 n/2
. (11.3.28)
722 Chapter 11 Linear Statistical Models
The denominator of the final expression in Eq. (11.3.28) can be rewritten as follows:
 n
i=1
(yi
− β
∗
0
− β
∗
1xi)2
=
 n
i=1
[(yi
− ˆ β0 − ˆ β1xi) + ( ˆ β0 − ˆ β
∗
0 ) + ( ˆ β1 − ˆ β
∗
1 )xi]2.
(11.3.29)
To simplify this expression further, let the statistic S2 be defined by Eq. (11.3.9), and
let the statistic Q2 be defined as follows:
Q2 = n( ˆ β0 − β
∗
0 )2 +
 
 n
i=1
x2
i
 
( ˆ β1 − β
∗
β1
)2
+ 2nx( ˆ β0 − β
∗
0 )( ˆ β1 − β
∗
1 ).
(11.3.30)
We shall now expand the right side of Eq. (11.3.29) and use the following relations,
which were established in Exercise 4 of Sec. 11.1:
 n
i=1
(yi
− ˆ β0 − ˆ β1xi) = 0 and
 n
i=1
xi(yi
− ˆ β0 − ˆ β1xi) = 0.
We then obtain the relation
 n
i=1
(yi
− β
∗
0
− β
∗
1xi)2 = S2 + Q2.
It now follows from Eq. (11.3.28) that
 ( y|x) =
 
S2
S2 + Q2
 n/2
=
 
1+ Q2
S2
 −n/2
. (11.3.31)
The likelihood ratio test procedure specifies rejecting H0 when  ( y|x) ≤ k. It can
be seen from Eq. (11.3.31) that this procedure is equivalent to rejecting H0 when
Q2/S2 ≥ k
 , where k
  is a suitable constant. To put this procedure in a more standard
form, we shall let the statistic U2 be defined as follows:
U2 =
1
2Q2
σ 2 . (11.3.32)
Then the likelihood ratio test procedure specifies rejecting H0 when U2 ≥ γ , where
γ is a suitable constant.
We shall now determine the distribution of the statistic U2 when the hypothesis
H0 is true. It can be shown (see Exercises 7 and 8) that when H0 is true, the random
variable Q2/σ 2 has the χ2 distribution with two degrees of freedom. Also, because
the random variable S2 and the random vector ( ˆ β0, ˆ β1) are independent, and because
Q2 is a function of ˆ β0 and ˆ β1, it follows that the random variables Q2 and S2 are
independent.Finally,we know that S2/σ 2 has the χ2 distribution with n−2 degrees of
freedom.Therefore, whenH0 is true, the statisticU2 defined by Eq. (11.3.32) will have
the F distribution with 2 and n − 2 degrees of freedom. Since the null hypothesisH0 is
rejected if U2 ≥ γ , the value of γ corresponding to a specified level of significance α0
(0<α0 < 1) will be the 1− α0 quantile of this F distribution, namely, F
−1
2, n−2(1− α0).
Joint Confidence Set Next, consider the problem of constructing a confidence set
for the pair of unknown regression coefficients β0 and β1. Such a confidence set can
11.3 Statistical Inference in Simple Linear Regression 723
be obtained from the statistic U2 defined by Eq. (11.3.32), which was used to test the
hypotheses (11.3.27). Specifically, let F
−1
2, n−2(1− α0) be the 1− α0 quantile of the F
distribution with 2 and n − 2 degrees of freedom. Then the set of all pairs of values
of β
∗
0 and β
∗
1 such that U2 <F
−1
2 ,n−2(1− α0) will form a confidence set for the pair
(β0, β1) with confidence coefficient 1− α0. It can be shown (see Exercise 16) that
this confidence set will contain all the points (β0, β1) inside a certain ellipse in the
β0β1-plane. In other words, this confidence set will actually be a confidence ellipse.
The confidence ellipse that has just been derived for β0 and β1 can be used to
construct a confidence set for the entire regression line y = β0 + β1x. Corresponding
to each point (β0, β1) inside the ellipse, we can draw a straight line y = β0 + β1x in
the xy-plane. The collection of all these straight lines corresponding to all points (β0,
β1) inside the ellipse will be a confidence set with confidence coefficient 1− α0 for
the actual regression line. A rather lengthy and detailed analysis, which will not be
presented here [see Scheff´e (1959, section 3.5)], shows that the upper and lower limits
of this confidence set are the curves defined by the following relations:
y = ˆ β0 + ˆ β1x ± [2F
−1
2,n−2(1− α0)]1/2σ
 
 
1
n
+ (x − x)2
s2
x
 1/2
. (11.3.33)
In other words, with confidence coefficient 1− α0, the actual regression line y =
β0 + β1x will lie between the curve obtained by using the plus sign in (11.3.33) and
the curve obtained by using the minus sign in (11.3.33). The region between these
curves is often called a confidence band or confidence belt for the regression line.
In similar fashion, the confidence ellipse can be used to construct simultaneous
confidence intervals for every linear combination of β0 and β1. The coefficient 1− α0
interval for c0β0 + c1β1 has the endpoints
c0
ˆ β0 + c1
ˆ β1 ± σ
 
 
c2
0
n
+ (c0x − c1)2
s2
x
 1/2 #
2F
−1
2,n−2(1− α0)
$1/2
. (11.3.34)
This differs from the individual confidence interval given in Eq. (11.3.23) solely in
the replacement of the 1− α0/2 quantile of the tn−2 distribution by the square root of
2 times the 1− α0 quantile of the F2,n−2 distribution. The simultaneous intervals are
wider than the individual intervals because they satisfy a more restrictive requirement.
The probability (prior to observing the data) is 1− α0 that all of the intervals
of the form (11.3.34) simultaneously contain their corresponding parameters. Each
interval of the form (11.3.23) contains its corresponding parameter with probability
1− α0, but the probability that two or more of them simultaneously contain their
corresponding parameters is less than 1− α0.
Alternative Tests and Confidence Sets The hypotheses (11.3.27) are a special case
of (9.1.26), and they can be tested by the same method outlined immediately after
(9.1.26). The resulting test leads to an alternative confidence set for the pair (β0, β1).
The alternative level α0 test of (11.3.27) merely combines the two level α0/2 tests of
(11.3.20) and (11.3.21). To be specific, the alternative level α0 test δ of (11.3.27) is to
reject H0 if either
|U0| ≥ T
−1
n−2


1− α0
4
 
or |U1| ≥ T
−1
n−2


1− α0
4
 
or both, (11.3.35)
where U0 and U1 are, respectively, the statistics in (11.3.19) and (11.3.22) that would
be used for testing (11.3.20) and (11.3.21).
724 Chapter 11 Linear Statistical Models
 1.00  0.98  0.96  0.94  0.92  0.90
0.0202
0.0204
0.0206
Elliptical
Rectangular
0.0208
b1
b0
Figure 11.12 Elliptical and rectangular joint coefficient 0.95
confidence sets for (β0, β1) in Example 11.3.8.
The corresponding joint confidence set for (β0, β1) is the set of all (β
∗
0, β
∗
1 ) pairs
such that both |U0| and |U1| are strictly less than T
−1
n−2(1− α0/4). This alternative
confidence set will be rectangular in shape rather than elliptical. This confidence
rectangle also provides simulaneous confidence intervals for all linear combinations
of the form c0β0 + c1β1. The formulas for the endpoints are not so pretty as (11.3.34).
Let C be the joint confidence rectangle. Then the confidence interval for c0β0 + c1β1
is the following:
 
inf
(β
∗
0 ,β
∗
1 )∈C
c0β
∗
0
+ c1β
∗
1 , sup
(β
∗
0 ,β
∗
1 )∈C
c0β
∗
0
+ c1β
∗
1
 
. (11.3.36)
The sup and inf will each occur at one of the four corners of the rectangle, so one
need only compute four values of c0β
∗
0
+ c1β
∗
1 to determine the interval. Some special
cases are worked out in Exercise 24.
Example
11.3.8
Pressure and the Boiling Point of Water. In Examples 11.2.1 and 11.2.2, we computed
the least-squares estimates and the variances and covariance of the estimates. Figure
11.12 shows both the elliptical and the rectangular coefficient 0.95 joint confidence
sets for the pair (β0, β1). If all that we wanted were confidence intervals for
the two parameters, we could extract those from both confidence sets. For the elliptical
region, (11.3.34) gives the intervals (−1.0149, −0.8886) and (0.020207, 0.020830)
for β0 and β1, respectively. Notice that the endpoints of these intervals are, respectively,
the minimum and maximum values of β0 and β1 in the elliptical joint confidence
set in Fig. 11.12. Similarly, the joint confidence intervals from the rectangular joint
confidence set are, respectively, (−1.0097, −0.8938) and (0.020233, 0.020804), whose
endpoints are also the minimum and maximum values of β0 and β1 in the rectangular
joint confidence set in Fig. 11.12.
Finally, suppose that, in addition to confidence intervals for the two parameters
β0 and β1, we also want a confidence band for the regression function, namely, the
mean log-pressure at all temperatures x. This mean is of the form c0β0 + c1β1 with
c0 = 1 and c1 = x. The confidence bands are plotted in Fig. 11.13 based both on the
elliptical and rectangular joint confidence sets. For example, at x = 201.5, we get the
intervals (3.1809, 3.1846) and (3.0672, 3.2983) from the elliptical and rectangular sets,
respectively.
11.3 Statistical Inference in Simple Linear Regression 725
Elliptical
Rectangular
195 200 205
Boiling point
Prediction
210
2.9
0
3.0
3.1
3.2
3.3
3.4
3.5
Figure 11.13 Coefficient 0.95 confidence bands for the regression
function in Example 11.3.8. Bands are computed based both
on the elliptical and on the rectangular joint confidence sets.
The joint confidence intervals for the two individual parameters are slightly
shorter when computed from the rectangular confidence set compared to the elliptical
set. But the confidence band for the regression function (Fig. 11.13) is much wider
when computed from the rectangular set compared to the elliptical set.  
In Example 11.3.8, if one were interested solely in simultaneous confidence
intervals for the three parameters β0, β1, and β0 + 201.5β1, instead of the entire
regression function, one could obtain shorter intervals from a generalization of
the rectangular joint confidence set. The generalization is based on the Bonferroni
inequality from Theorem 1.5.8.
Theorem
11.3.7
Suppose that we are interested in forming simultaneous confidence intervals for
several parameters θ1, . . . , θn. For each i, let (Ai, Bi) be a coefficient 1− αi confidence
interval for θi . Then the probability that all n confidence intervals simultaneously
cover their corresponding parameters is at least 1− n
i=1 αi .
Proof For each i = 1, . . . , n, define the event Ei
= {Ai < θi <Bi
}. Because (Ai, Bi)
is a coefficient 1− αi confidence interval for θi , we have Pr(Ec
i ) ≤ αi for every i,
and the probability that all n intervals simultaneously cover their corresponding
parameters is Pr
  n
i=1 Ei
 
. By the Bonferroni inequality, this last probability is at
least 1− n
i=1 αi .
Theorem 9.1.5 gives the corresponding result for a test of the joint hypotheses
H0 : θi
= θ
∗
i for all i ,H1 : not H0, (11.3.37)
If we want simultaneous coefficient 1− α0 confidence intervals for three parameters,
let αi
= α0/3.
Example
11.3.9
Pressure and the Boiling Point of Water. Suppose that we are interested solely in simultaneous
coefficient 0.95 confidence intervals for the three parameters β0, β1,
and β0 + 201.5β1 in Example 11.3.8. Then we can use coefficient 1− 0.05/3= 0.9833
confidence intervals for each parameter. The necessary quantile of the t distribution
is T
−1
14 (0.9917) = 2.7178. The three intervals for β0, β1, and β0 + 201.5β1 are
726 Chapter 11 Linear Statistical Models
(−1.0146, −0.8889), (0.020296, 0.020828), and (3.1809, 3.1845), respectively. Notice
that these are all shorter than the corresponding intervals based on the elliptical
joint confidence set. The first two of these intervals are longer than the corresponding
intervals from the rectangular joint confidence set in Example 11.3.8, but the
third interval is much shorter than the corresponding interval based on that same
rectangular set.  
Finally, there is a way to construct a narrower confidence band for the entire regression
function based on the Bonferroni inequality, but we leave the details to
Exercise 25.
So, which confidence intervals should one use? Also, which test of (11.3.27)
should one use? None of the tests that we have constructed are uniformly most powerful.
Some are more powerful at some alternatives, while others are more powerful
at other alternatives. The test corresponding to the rectangular joint confidence set is
more powerful than the elliptical test if either β0 or β1 is a little larger or smaller than
its hypothesized value while the other parameter is close to its hypothesized value.
The elliptical test is more powerful than the rectangular test if both β0 and β1 are
a little different from their hypothesized values, even if neither is far enough away
to cause the rectangular test to reject. Without any specification of which alternatives
are most important to detect, one might choose the elliptical test. On the other
hand, if one’s sole need is for a few confidence intervals and not a confidence band
for the entire regression function, the intevals based on the Bonferroni inequality
will generally be shorter. The different tests and confidence intervals differ solely by
which quantiles are used in their construction. The larger the quantile, the longer the
confidence interval. Table 11.8 gives the quantiles needed for the intervals based on
the elliptical joint confidence set (which do not depend on how many intervals one
constructs) and the quantiles needed for various numbers of intervals based on the
Bonferroni inequality. One can see that the Bonferroni intervals will generally be
shorter if one wants only three or fewer.
Summary
For constants c0 and c1 that are not both 0, we saw that
 
c2
0
n
+ (c0x − c1)2
s2
x
 −1/2
c0
ˆ β0 + c1
ˆ β1 − (c0β0 + c1β1)
σ  (11.3.38)
has the t distribution with n − 2 degrees of freedom under the assumptions of simple
linear regression. We can use the random variable in (11.3.38) to test hypotheses
about or to construct confidence intervals for β0, β1, and linear combinations of the
two. We also learned how to form a prediction interval for a future observation Y
when the corresponding value for X is known.
Tests about both β0 and β1 simultaneously are based on the statistic U2 in
Eq. (11.3.32), which has the F distribution with 2 and n − 2 degrees of freedom
when the null hypothesis H0 in Eq. (11.3.27) is true. A confidence band for the entire
regression line y = β0 + β1x (a collection of confidence intervals, one for each x,
such that all of the intervals simultaneously cover the true values of β0 + β1x with
probability 1− α0) is given by Eq. (11.3.33). The intervals in the confidence band are
slightly wider than the individual confidence intervals with each separate x.
11.3 Statistical Inference in Simple Linear Regression 727
Table 11.8 Comparison of the quantiles needed to compute k
simultaneous joint confidence intervals based on the
Bonferroni inequality and based on the elliptical joint
confidence set
T
−1
n−2(1− α0/[2k])
α0 n k= 1 k = 2 k = 3 k =4 [2F
−1
2,n−2(1− α0)]1/2
0.05 5 3.18 4.18 4.86 5.39 4.37
10 2.31 2.75 3.02 3.21 2.99
15 2.16 2.53 2.75 2.90 2.76
20 2.10 2.45 2.64 2.77 2.67
60 2.00 2.30 2.47 2.58 2.51
120 1.98 2.27 2.43 2.54 2.48
∞ 1.96 2.24 2.40 2.50 2.45
0.01 5 5.84 7.45 8.58 9.46 7.85
10 3.36 3.83 4.12 4.33 4.16
15 3.01 3.37 3.58 3.73 3.66
20 2.88 3.20 3.38 3.51 3.47
60 2.66 2.92 3.06 3.16 3.16
120 2.62 2.86 3.00 3.09 3.10
∞ 2.58 2.81 2.94 3.03 3.04
It is good practice to plot residuals from a regression against the predictor X.
Such plots can reveal evidence of departures from the assumptions that underly
the distribution theory developed in this section. In particular, one should look for
patterns and unusual points in the plot of residuals. Plots of residuals against X
help reveal departures from the assumed form of the mean of Y . Plots of sorted
residuals against normal quantiles help reveal departures from the assumption that
the distribution of each Yi is normal.
Exercises
1. Suppose that in a problem of simple linear regression,
the 10 pairs of observed values of xi and yi given
in Table 11.9 are obtained. Test the following hypotheses
at the level of significance 0.05:
H0 : β0 = 0.7,
H1 : β0  = 0.7.
2. For the data presented in Table 11.9, test at the level
of significance 0.05 the hypothesis that the regression line
passes through the origin in the xy-plane.
3. For the data presented in Table 11.9, test at the level
of significance 0.05 the hypothesis that the slope of the
regression line is 1.
Table 11.9 Data for Exercise 1
i xi yi i xi yi
1 0.3 0.4 6 1.0 0.8
2 1.4 0.9 7 2.0 0.7
3 1.0 0.4 8 −1.0 −0.4
4 −0.3 −0.3 9 −0.7 −0.2
5 −0.2 0.3 10 0.7 0.7
728 Chapter 11 Linear Statistical Models
4. For the data presented in Table 11.9, test at the level of
significance 0.05 the hypothesis that the regression line is
horizontal.
5. For the data presented in Table 11.9, test the following
hypotheses at the level of significance 0.10:
H0 : β1 = 5β0,
H1 : β1  = 5β0.
6. For the data presented in Table 11.9, test the hypothesis
that when x = 1, the height of the regression line is y = 1
at the level of significance 0.01.
7. In a problem of simple linear regression, let D = ˆ β0 +
ˆ β1x. Show that the random variables ˆ β1 and D are uncorrelated,
and explain why ˆ β1 and D must therefore be
independent.
8. Let the random variable D be defined as in Exercise
7, and let the random variable Q2 be defined by
Eq. (11.3.30).
a. Show that
Q2
σ2
=
( ˆ β1 − β
∗
1 )2
Var( ˆ β1)
+
(D − β
∗
0
− β
∗
1x)2
Var(D)
.
b. Explain why the random variable Q2/σ 2 will have
the χ2 distribution with two degrees of freedom
when the hypothesis H0 in (11.3.27) is true.
9. For the data presented in Table 11.9, test the following
hypotheses at the level of significance 0.05:
H0 : β0 = 0 and β1 = 1,
H1 : At least one of the values β0 = 0 and
β1 = 1 is incorrect.
10. For the data presented in Table 11.9, construct a confidence
interval for β0 with confidence coefficient 0.95.
11. For the data presented in Table 11.9, construct a confidence
interval for β1 with confidence coefficient 0.95.
12. For the data presented in Table 11.9, construct a confidence
interval for 5β0 − β1+ 4 with confidence coefficient
0.90.
13. For the data presented in Table 11.9, construct a confidence
interval with confidence coefficient 0.99 for the
height of the regression line at the point x = 1.
14. For the data presented in Table 11.9, construct a confidence
interval with confidence coefficient 0.99 for the
height of the regression line at the point x = 0.42.
15. Suppose that in a problem of simple linear regression,
a confidence interval with confidence coefficient 1− α0
(0<α0 < 1) is constructed for the height of the regression
line at a given value of x. Show that the length of this
confidence interval is shortest when x = x.
16. Let the statistic U2 be as defined by Eq. (11.3.32), and
let γ be fixed positive constant. Show that for all observed
values (xi , yi), for i = 1, . . . , n, the set of points (β
∗
0 , β
∗
1 )
such that U2 < γ is the interior of an ellipse in the β
∗
0β
∗
1 -
plane.
17. For the data presented in Table 11.9, construct a confidence
ellipse for β0 and β1 with confidence coefficient
0.95.
18.
a. For the data presented in Table 11.9, sketch a confidence
band in the xy-plane for the regression line
with confidence coefficient 0.95.
b. On the same graph, sketch the curves which specify
the limits at each point x of a confidence interval
with confidence coefficient 0.95 for the value of the
regression line at the point x.
19. Determine a value of c such that in a problem of simple
linear regression, the statistic c
 n
i=1(Yi
− ˆ β0 − ˆ β2xi)2
will be an unbiased estimator of σ2.
20. Suppose that a simple linear regression of miles per
gallon (Y ) on car weight (X) has been performed with n =
32 observations. Suppose that the least-squares estimates
are ˆ β0 = 68.17 and ˆ β1=−1.112, with σ
  = 4.281. Other
useful statistics are x = 30.91, and
 n
i=1(xi
− x)2 = 2054.8.
a. Suppose that we want to predict miles per gallon
Y for a new observation with weight X = 24. What
would be our prediction?
b. For the prediction in part (a), find a 95 percent prediction
interval for the unobserved Y value.
21. Use the data in Table 11.6 on page 707. You should
perform the least-squares regression requested in Exercise
18 in Sec. 11.2 before starting this exercise.
a. Plot the residuals from the least-squares regression
against the 1970 price. Do you see a pattern?
b. Transform both prices to their natural logarithms
and repeat the least-squares regression. Now plot
the residuals against logarithm of 1970 price. Does
this plot look any better than the one in part (a)?
22. Perform a least-squares regression of the logarithm of
the 1980 fish price on the 1970 fish price, using the raw data
in Table 11.6 on page 707.
a. Test the null hypothesis that the slope β1 is less than
2.0 at level α0 = 0.01.
b. Find a 90 percent confidence interval for the slope β1.
c. Find a 90 percent prediction interval for the 1980
price of a species that cost 21.4 in 1970. (Note that
21.4 is the 1970 price, not the logarithm of the 1970
price.)
11.4 Bayesian Inference in Simple Linear Regression 729
23. Prove that the first test in Theorem 11.3.4 does indeed
have level α0. Hint: Use an argument similar to that used
to prove part (ii) of Theorem 9.5.1.
24. Find explicit formulas (no sup or inf) for the endpoints
of the interval in Eq. (11.3.36) for the following special
cases:
a. c0 = 1 and c1 =x >0.
b. c0 = 1 and c1 =x <0.
Hint: In both cases the endpoints are of the form
ˆ β0 + ˆ β1x plus or minus linear functions of x that depend on
the lengths of the sides of the rectangular joint confidence
set.
25. In this problem, we will construct a narrower confidence
band for a regression function using Theorem
11.3.7. Let ˆ β0 and ˆ β1 be the least-squares estimators, and
let σ
  be the estimator of σ used in this section. Let x0 <x1
be two possible values of the predictor X.
a. Find formulas for the simultaneous coefficient 1− α0
confidence intervals for β0 + β1x0 and β0 + β1x1.
b. For each real number x, find the formula for the
unique α such that x = αx0 + (1 − α)x1. Call that
value α(x).
c. Call the intervals found in part (a) (A0, B0) and
(A1, B1), respectively. Define the event
C = {A0 <β0 + β1x0 <B0 and A1<β0 + β1x1<B1}.
For each real x, define L(x) and U(x) to be, respectively,
the smallest and largest of the following four
numbers:
α(x)A0 + [1− α(x)]A1, α(x)B0 + [1− α(x)]A1,
α(x)A0 + [1− α(x)]B1, α(x)B0 + [1− α(x)]B1.
If the event C occurs, prove that, for every real x,
L(x) < β0 + β1x <U(x).
  11.4 Bayesian Inference in Simple Linear Regression
In Sec. 8.6, we introduced an improper prior distribution for the mean μ and
precision τ of a normal distribution. This prior simplified several calculations
associated with the posterior distribution of the parameters. The prior also made
some of the resulting inferences bear striking resemblance to inferences based on
the sampling distributions of statistics. Something very similar occurs in the simple
linear regression setting.
Improper Priors for Regression Parameters
Example
11.4.1
Gasoline Mileage. Once again, consider Example 11.3.2 on page 714. Suppose that
we are interested in saying something about how far we think β1 is from 0 and how
strongly we believe that. For example, suppose that we would like to be able to say
how likely it is that |β1| is at most c for arbitrary values of c. To do this requires us
to compute a distribution for β1. The posterior distribution of β1 given the observed
data would serve this purpose.  
We shall continue to assume that we will observe pairs of variables (Xi, Yi) for i =
1, . . . , n. We shall also assume that the conditional distribution of Y1, . . . , Yn, given
X1 = x1, . . . , Xn
= xn and parameters β0, β1, and σ2, is that the Yi are independent
with Yi having the normal distribution with mean β0 + β1xi and variance σ2. Let
τ = 1/σ 2 be the precision, as we did in Sec. 8.6. If we let the parameters have an
improper prior with “p.d.f.” ξ(β0, β1, τ) = 1/τ , then it is not difficult to find the
posterior distribution of the parameters.
Theorem
11.4.1
Suppose that Y1, . . . , Yn are independent given x1, . . . , xn and β0, β1, and τ , with
Yi having the normal distribution with mean β0 + β1xi and precision τ . Let the
prior distribution be improper with “p.d.f.” ξ(β0, β1, τ) = 1/τ . Then the posterior
distribution of β0, β1, and τ is as follows. Conditional on τ , the joint distribution of
β0 and β1 is the bivariate normal distribution with correlation −nx/(n
 n
i=1 x2
i )1/2
730 Chapter 11 Linear Statistical Models
Table 11.10 Posterior means and variances for simple
linear regression with improper prior
Parameter Mean Variance
β0
ˆ β0 ( 1
n
+ x2/s2
x)/τ
β1
ˆ β1 (s2
xτ)
−1
Table 11.11 Relation between Eq. (5.10.2) and
Theorem 11.4.1
(5.10.2) Theorem 11.4.1
ρ −nx/(n
 n
i=1 x2
i )1/2
σ2
1 ( 1
n
+ x2/s2
x)/τ
σ2
2 (s2
xτ)
−1
x1 β0
μ1
ˆ β0
x2 β1
μ2
ˆ β1
and means and variances as given in Table 11.10. The posterior distribution of τ is
the gamma distribution with parameters (n − 2)/2 and S2/2, where S2 is defined in
Eq. (11.3.9). The marginal posterior distribution of
 
c2
0
n
+ (c0x − c1)2
s2
x
 −1/2
c0β0 + c1β1 − [c0
ˆ β0 + c1
ˆ β1]
σ  (11.4.1)
is the t distribution with n − 2 degrees of freedom if c0 and c1 are not both 0.
Proof The posterior p.d.f. is proportional to the product of the prior p.d.f. and
the likelihood function. The likelihood is the conditional p.d.f. of the data Y =
(Y1, . . . , Yn) given the parameters (and x = (x1, . . . , xn)), namely,
fn( y|β0, β1, τ, x) = (τ/[2π])n/2 exp
 
−τ
2
 n
i=1
(yi
− β0 − β1xi)2
 
. (11.4.2)
To show that the posterior distribution is as stated in the theorem, it suffices to prove
that 1/τ times (11.4.2) is proportional (as a function of β0, β1, and τ ) to the proposed
posterior p.d.f.
The proposed posterior p.d.f. of τ is proportional (as a function of τ) to
τ (n−2)/2−1e
−S2τ/2. (11.4.3)
The proposed conditional posterior p.d.f. of (β0, β1) given τ is the bivariate normal
p.d.f. in Eq. (5.10.2) on page 338 with the substitutions in Table 11.11.
11.4 Bayesian Inference in Simple Linear Regression 731
The key to simplifying the substitutions in Eq. (5.10.2) is to note that
1− ρ2 =
s2
  x n
i=1 x2
i
, σ2
1
=
 n
i=1 x2
i
ns2
xτ
, and ρ
σ1σ2
=−
nxs2
x
τ
 n
i=1 x2
i
.
The substitutions in Table 11.11 show that the proposed conditional posterior for
(β0, β1) given τ is proportional to
τ exp
 
−τ
2
 
n(β0 − ˆ β0)2 + 2nx(β0 − ˆ β0)(β1 − ˆ β1) +
 
 n
i=1
x2
i
 
(β1 − ˆ β1)2
  
.
(11.4.4)
The product of (11.4.3) and (11.4.4) is the proposed joint posterior p.d.f., and it is
proportional to
τ n/2−1 exp
 
−τ
2
#
S2 + n(β0 − ˆ β0)2 + 2nx(β0 − ˆ β0)(β1 − ˆ β1)
+
  n
i=1
x2
i
 
(β1 − ˆ β1)2
$ 
.
(11.4.5)
We shall now show that 1/τ times the right side of Eq. (11.4.2) is proportional
to (11.4.5). The summation in the exponent of Eq. (11.4.2) is exactly the same as the
summation in Eq. (11.3.29) if we remove the asterisks from (11.3.29). In Sec. 11.3,
we rewrote (11.3.29) as
S2 + n(β0 − ˆ β0)2 +
 
 n
i=1
x2
i
 
(β1 − ˆ β1)2 + 2nx(β0 − ˆ β0)(β1 − ˆ β1), (11.4.6)
where the asterisks have been removed from (11.4.6). Notice that (11.4.6) is the same
as the factor in the exponent of (11.4.5) that is multiplied by −τ 2/2. Also, notice that
1/τ times the factor multiplying the exponential in (11.4.2) equals τ n/2−1. It follows
that 1/τ times (11.4.2) is proportional to (11.4.5).
Finally, we prove that the random variable in (11.4.1) has the t distribution
with n − 2 degrees of freedom. Since (β0, β1) has a bivariate normal distribution
conditional on τ , it follows that c0β0 + c1β1 has a normal distribution conditional
on τ . Its mean is c0
ˆ β0 + c1
ˆ β1. Its variance (given τ ) is obtained from Eq. (5.10.9) and
Table 11.10 (after some tedious algebra) as v/τ where
v =
c2
0
n
+ c2
0
x2
s2
x
+ c2
1
1
s2
x
− 2c0c1
x
s2
x
=
c2
0
n
+ (c0x − c1)2
s2
x
.
Define the random variable
Z =


τ
v
 1/2
(c0β0 + c1β1 − [c0
ˆ β0 + c1
ˆ β1]),
and notice that Z has the standard normal distribution given τ and hence is independent
of τ . The distribution of W = S2τ is the gamma distribution with parameters
(n − 2)/2 and 1/2, which is also the χ2 distribution with n − 2 degrees of freedom. It
follows from the definition of the t distribution that Z/(W/[n − 2])1/2 has the t distribution
with n − 2 degrees of freedom. Since σ
 2 = S2/(n − 2), it is straightforward
to verify that Z/(W/[n − 2])1/2 is the same as the random variable in (11.4.1).
732 Chapter 11 Linear Statistical Models
Example
11.4.2
Pressure and the Boiling Point ofWater. At the end of Example 11.3.6, we estimated the
coefficients of the regression of log-pressure on the boiling point using only 16 of the
17 observations in Forbes’ original data.We obtained ˆ β0=−0.9518 and ˆ β1 = 0.0205
with σ
  = 2.616 × 10−3.With one observation removed, we have n = 16, x = 202.85,
and s2
x
= 527.9.We can now apply Theorem 11.4.1 to make an inference based on the
posterior distributions of the parameters.For example, suppose thatweare interested
in an interval estimate of β1. Letting c0 = 0 and c1 = 1 in (11.4.1), we find that the
posterior distribution of
sx
σ  (β1 − ˆ β1) = 449.2(β1 − 0.0205) (11.4.7)
is the t distribution with 15 degrees of freedom. If we want our interval to contain
a portion of the posterior distribution with probability 1− α0, then we can note
that the posterior probability is 1− α0 that |449.2(β1 − 0.0205)| ≤ T
−1
14 (1− α0/2).
For example, if α0 = 0.1, then T
−1
14 (1− 0.1/2) = 1.761. The interval estimate is then
0.0205 ± 1.761/449.2 = (0.0166, 0.0244).  
The reader should note that the random variable in Eq. (11.4.7) is the same as U1
in Eq. (11.3.22) when β1= β
∗
1 .This implies that a coefficient 1− α0 confidence interval
for β1 will be the same as an interval containing posterior probability 1− α0 when we
use the improper prior in Theorem 11.4.1. Indeed, the random variable in (11.4.1)
is the same as U01 in Eq. (11.3.14) for all c0 and c1 so long as c0β0 + c1β1 = c∗. This
implies that coefficient 1− α0 confidence intervals for all linear combinations of the
regression parameters will also contain probability 1−α0 of the posterior distribution
when the improper prior inTheorem 11.4.1 is used.The reader can prove these claims
in Exercises 1 and 2 in this section.
Note: There is a Conjugate Family of Proper Prior Distributions. The posterior
distribution of the parameters given in Theorem 11.4.1 has the following form: τ
has a gamma distribution, and, conditional on τ , (β0, β1) has a bivariate normal
distribution with variances and covariances that are multiples of 1/τ . The collection
of distributions of the form just described is a conjugate family of prior distributions
for the parameters of simple linear regression. Readers interested in the details of
using such priors can consult a text like Broemeling (1985).
Prediction Intervals
On page 716, we showed how to form intervals for predicting future observations.
In the Bayesian framework, we can also form intervals for predicting future observations.
Let Y be a future observation with corresponding predictor x. Then
Z1 = τ 1/2(Y − β0 − β1x) has the standard normal distribution conditional on the parameters
and the data; hence, it is independent of the parameters and the data. Let
ˆ Y = ˆ β0 + ˆ β1x as we did on page 716. It can be shown that the conditional distribution
of Z2 = τ 1/2(β0 + β1x − ˆ Y )given τ , and the data is the normal distribution with mean
0 and variance
1
n
+ (x − x)2
s2
x
,
and hence it is independent of τ and the data. (See Exercise 3.) Since Z1 is independent
of all of the parameters, it is independent of Z2, also. It follows that the
conditional distribution of Z1+ Z2 = τ 1/2(Y − ˆ Y ), given τ and the data, is the normal
11.4 Bayesian Inference in Simple Linear Regression 733
distribution with mean 0 and variance
1+ 1
n
+ (x − x)2
s2
x
.
As in the proof of Theorem 11.4.1, S2τ has the χ2 distribution with n − 2 degrees
of freedom and is independent of Z1 + Z2. It follows from the definition of the t
distribution that the random variable
Ux
= Y − ˆ Y
σ 
 
1+ 1
n
+ (x−x)2
s2
x
 1/2
has the t distribution with n − 2 degrees of freedom given the data. Hence, the
conditional probability, given the data, is 1− α0 that Y is in the interval with endpoints
ˆ Y ± T
−1
n−2


1− α0
2
 
σ
 
 
1+ 1
n
+ (x − x)2
s2
x
 1/2
. (11.4.8)
Notice that the Ux defined above is identical to the Ux defined in Eq. (11.3.26). Also,
the interval (11.4.8) is the same as the one given in Eq. (11.3.25). The interpretation
of the prediction interval based on the posterior distribution is somewhat simpler
than the interpretation given after (11.3.25) because the probability is conditional
on all of the known quantities (that is, the data). The probability only concerns the
distribution of the unknown quantity Y conditional on the data.
Example
11.4.3
Pressure and the Boiling Point of Water. Suppose that we are interested in predicting
pressure when the boiling point of water is 208 degrees. We shall find an interval
such that the posterior probability is 0.9 that the pressure will be in the interval. That
is, we shall use Eq. (11.4.8) with α0 = 0.1 and x = 208. We can find T14(0.95) = 1.761
from the table of the t distribution in this book. The rest of the necessary values
are given in Example 11.4.2. In particular, with Y standing for log-pressure, ˆ Y =
−0.9518 + 0.0205 × 208 = 3.3122, and
σ
 
 
1+ 1
n
+ (x − x)2
s2
x
 1/2
= 2.616 × 10−3
 
1+ 1
16
+ (208 − 202.85)2
527.9
 1/2
= 2.759 × 10−3.
So our interval for log-pressure has endpoints 3.3122 ± 1.761× 2.759 × 10−3, which
are 3.307 and 3.317. The interval for pressure itself is then
(e3.307, e3.317) = (27.31, 27.58).
The reason that we can convert the interval for log-pressure into the interval for
pressure so simply is that 3.307 < Y <3.317 if and only if 27.31< eY < 27.58. So,
the posterior probability of the first set of inequalities is the same as the posterior
probability of the second set of inequalities.  
Tests of Hypotheses
On page 607, we began a discussion of tests based on the posterior distribution. If
the cost of type I error is w0 and the cost of type II error is w1, we found that the
Bayes test was to reject the null hypothesis if the posterior probability of the null
hypothesis is less than w1/(w0 + w1). Suppose that we use the improper prior and
734 Chapter 11 Linear Statistical Models
that the null hypothesis is H0 : c0β0 + c1β1 = c∗. Since the posterior distribution of
c0β0 + c1β1 is a continuous distribution, it is clear that the posterior probability of
the null hypothesis is 0. For this reason, we shall begin by considering Bayes tests
only for one-sided hypotheses. Suppose that the hypotheses of interest are
H0 : c0β0 + c1β1 ≤ c∗,
H1 : c0β0 + c1β1 > c∗.
(11.4.9)
The other direction can be handled in a similar fashion. Let α0 = w1/(w0 + w1). The
posterior probability that the null hypothesis is true is the posterior probability that
c0β0 + c1β1 ≤ c∗.We have already derived the posterior distribution of c0β0 + c1β1 in
Theorem 11.4.1. So, we can compute
Pr(c0β0 + c1β1 ≤ c∗)
= Pr
⎛
⎝
 
c2
0
n
+ (c0x − c1)2
s2
x
 −1/2
c0β0 + c1β1 − [c0
ˆ β0 + c1
ˆ β1]
σ 
≤
 
c2
0
n
+ (c0x − c1)2
s2
x
 −1/2
c∗ − [c0
ˆ β0 + c1
ˆ β1]
σ 
⎞
⎠
= Tn−2
⎛
⎝
 
c2
0
n
+ (c0x − c1)2
s2
x
 −1/2
c∗ − [c0
ˆ β0 + c1
ˆ β1]
σ 
⎞
⎠
= Tn−2(−U01),
where Tn−2 denotes the c.d.f. of the t distribution with n − 2 degrees of freedom
and U01 is the random variable defined in Eq. (11.3.14). It is simple to see that
Tn−2(−U01) ≤ α0 if and only if U01 ≥ T
−1
n−2(1− α0). Hence, the Bayes test of the
hypotheses (11.4.9) is the same as the level α0 test of these same hypotheses that
was derived after Eq. (11.3.16). Hence, all of the one-sided tests that we learned how
to perform in Sec. 11.3 are also Bayes tests when the improper prior is used.
On page 610, we began a discussion of how to deal with two-sided alternatives
when the posterior distribution of the parameter was continuous. The same approach
can be used in linear regression problems. We shall illustrate with an example.
Example
11.4.4
Gasoline Mileage. In Example 11.4.1, we wanted to make use of the posterior distribution
of the slope parameter β1 from Example 11.3.2 in order to be able to say how
likely we believe it is that β1 is close to 0. We can draw a plot of the posterior c.d.f.
of |β1| by making use of Theorem 11.4.1. The posterior distribution of sx(β1 − ˆ β1)/σ
 
is the t distribution with n − 2 degrees of freedom. In Example 11.3.2, we computed
sx
= 1036.9, σ
  = 7.191× 10−3, ˆ β1 = 1.396 × 10−4, and n = 173. It follows that, for all
positive c,
Pr(|β1| ≤ c) = Pr(−c ≤ β1 ≤ c) = T171


1036.9
7.181× 10−3
(c − 1.396 × 10−4)
 
− T171


1036.9
7.181× 10−3
(−c − 1.396 × 10−4)
 
,
where T171 is the c.d.f. of the t distribution with 171 degrees of freedom. Figure 11.14
contains a plot of the posterior c.d.f. of |β1|. We can see that the probability is
essentially 1 that |β1| < 1.6 × 10−4, but it is also essentially 1 that |β1| > 1.2 × 10−4.
These numbers may look small. However, remember that β1 must get multiplied by
11.4 Bayesian Inference in Simple Linear Regression 735
Figure 11.14 Plot of posterior
c.d.f. of |β1| in Example
11.4.4.
c
0.00010 0.00012 0.00014 0.00016 0.00018
1.0
0.8
0.6
0.4
0.2
0
Pr(|b2|<c)
horsepower, which is typically a number in the 50–300 range. So, even if β1 is as small
as 1.2 × 10−4, the difference between gallons per mile at 100 and 200 horsepower
will be 0.012, which is a sizeable difference in gallons per mile.We can also translate
this result into miles per gallon. Suppose that β1 = 1.2 × 10−4, and suppose that β0
equals its conditional mean given that β1 = 1.2 × 10−4. This conditional mean can be
computed using the method of Exercise 7, and it equals 0.01897. Then the miles per
gallon for a 200 horsepower car is 23.27, and the miles per gallon for a 100 horsepower
car is 32.23.  
Summary
We have used improper prior distributions for the parameters of the simple linear
regression model, and we have found the posterior distributions of the parameters
after observing n data points. The posterior distributions of the intercept and slope
parameters are t distributions with n − 2 degrees of freedom that have been shifted
and rescaled. These posterior distributions show striking similarities to the sampling
distributions of the least-squares estimators. Indeed, posterior probability intervals
for the parameters are exactly the same as confidence intervals, prediction intervals
for future observations are the same as those based on the sampling distributions, and
level α0 tests of one-sided null and alternative hypotheses reject the null hypotheses
when the posterior probability of the null hypothesis is less than α0. The only significant
lack of connection between posterior calculations and those based on sampling
distributions is the testing of hypotheses in which the alternative is two-sided.
Exercises
1. Assume the usual conditions for simple linear regression.
Assume that we use the improper prior discussed in
this section. Let (a, b) be the observed value of a coefficient
1− α0 confidence interval for β1 constructed as in
Sec. 11.3. Prove that the posterior probability is 1− α0 that
a <β1< b.
2. Assume the usual conditions for simple linear regression.
Assume that we use the improper prior discussed
in this section. Let (a, b) be the observed value of a coefficient
1− α0 confidence interval for c0β0 + c1β1 constructed
as in Sec. 11.3. Prove that the posterior probability
is 1− α0 that a <c0β0 + c1β1< b.
3. Assume a simple linear regression model with the improper
prior. Show that, conditional on τ , the posterior
distribution of τ 1/2(β0 + β1x − ˆ Y ) is the normal distribution
with mean 0 and variance
1
n
+ (x − x)2
s2
x
.
736 Chapter 11 Linear Statistical Models
4. We wish to fit a simple linear regression model to the
data in Table 11.9 on page 727. Use an improper prior
distribution.
a. Find the posterior distribution of the parameters.
b. Find a bounded interval that contains 90 percent of
the posterior distribution of β1.
c. Find the probability that β0 is between 0 and 2.
5. Use the data in Table 11.9, and suppose that we wish
to fit a simple linear regression model to the data. Use the
improper prior.
a. Find the posterior distribution of the slope parameter
β1.
b. Find the posterior distribution of β0 + β1, the mean
of a future observation Y corresponding to x = 1.
c. Draw a graph of the posterior c.d.f. of |β1 − 0.7|.
6. Use the data in Table 11.6 on page 707. Assume that we
wish to fit a simple linear regression model for predicting
logarithm of 1980 price from logarithm of 1970 price.
a. Find the posterior distribution of the slope parameter
β1.
b. Find the posterior probability that β1 ≤ 2.
c. Find a 95 percent prediction interval for the 1980
price of a species that cost 21.4 in 1970.
7. In a simple linear regression problem with the usual
improper prior, prove that the conditional mean of β0
given β1 is ˆ β0 − x(β1 − ˆ β1). Hint: Use the fact that (β0, β1)
has a bivariate normal distribution as described in Theorem
11.4.1, and then use Eq. (5.10.6) to find the conditional
mean.
11.5 The General Linear Model and
Multiple Regression
The simple linear regression model can be extended to allow the mean of Y to be a
function of several predictor variables. Much of the resulting distribution theory,
is very similar to the simple regression case.
The General Linear Model
Example
11.5.1
Unemployment in the 1950s. The data in Table 11.12 provide the unemployment rates
during the 10 years from 1950 to 1959 together with an index of industrial production
from the Federal Reserve Board. It might make sense to think that unemployment
is related to industrial production. Other factors also play a role, and those other
factors most likely changed over the course of the decade. As a surrogate for these
other factors, some function of the year could be included as a predictor. Figure 11.15
shows plots of unemployment against each of the two predictor variables. It is not
clear from the plots precisely how unemployment varies with the two predictors, but
there appear to be some relationships. In this section, we shall show how to fit a
regression model with more than one predictor to these and other data.  
In this section, we shall study regression problems in which the observations
Y1, . . . , Yn satisfy assumptions like Assumptions 11.2.1–11.2.5 that were made in
Sections 11.2 and 11.3. In particular, we shall again assume that each observation
Yi has a normal distribution, that the observations Y1, . . . , Yn are independent, and
that the observations Y1, . . . , Yn have the same variance σ2. Instead of a single
predictor being associated with each Yi , we assume that a p-dimensional vector
zi
= (zi0, . . . , zip−1) is associated with each Yi . The assumptions that we make can
now be restated in this framework.
Assumption
11.5.1
Predictor is known. Either the vectors z1, . . . , zn are known ahead of time, or they
are the observed values of random vectors Z1, . . . , Zn on whose values we condition
before computing the joint distribution of (Y1, . . . , Yn).
11.5 The General Linear Model and Multiple Regression 737
Table 11.12 Unemployment data for Example 11.5.1
Unemployment Index of production Year
3.1 113 1950
1.9 123 1951
1.7 127 1952
1.6 138 1953
3.2 130 1954
2.7 146 1955
2.6 151 1956
2.9 152 1957
4.7 141 1958
3.8 159 1959
Figure 11.15 Plots of
unemployment against the
two predictor variables for
Example 11.5.1.
Index of production
Unemployment
120 130 140 150 160
1.5
0
2.0
2.5
3.0
3.5
4.0
4.5
•
Year
1950 1952 1954 1956 1958
Unemployment
1.5
0
2.0
2.5
3.0
3.5
4.0
4.5
Assumption
11.5.2
Normality. For i = 1, . . . , n, the conditional distribution of Yi given the vectors
z1, . . . , zn is a normal distribution.
Assumption
11.5.3
Linear Mean. There is a vector of parameters β = (β0, . . . , βp−1) such that the conditional
mean of Yi given the values z1, . . . , zn has the form
zi0β0 + zi1β1 + . . . + zip−1βp−1, (11.5.1)
for i = 1, . . . , n.
Assumption
11.5.4
Common Variance. There is a parameter σ2 such that the conditional variance of Yi
given the values z1, . . . , zn is σ2 for i = 1, . . . , n.
Assumption
11.5.5
Independence. The random variables Y1, . . . , Yn are independent given the observed
z1, . . . , zn.
738 Chapter 11 Linear Statistical Models
The generalization that we introduce here is that the mean of each observation Yi
is a linear combination of p unknown parameters β0, . . . , βp−1 as in (11.5.1). Each
value zij either may be fixed by the experimenter before the experiment is started
or may be observed in the experiment along with the value of Yi . In the latter case,
Eq. (11.5.1) gives the conditional mean of Yi given the observed zij values.
Definition
11.5.1
General Linear Model. The statistical model in which the observations Y1, . . . , Yn
satisfy Assumptions 11.5.1–11.5.5 is called the general linear model.
In Definition 11.5.1, the term linear refers to the fact that the expectation of each
observation Yi is a linear function of the unknown parameters β0, . . . , βp−1.
Many different types of regression problems are examples of general linear
models. For example, in a problem of simple linear regression, E(Yi) = β0 + β1xi for
i = 1, . . . , n. This expectation can be represented in the form given in Eq. (11.5.1),
with p = 2, by letting zi0 = 1 and zi1 = xi for i = 1, . . . , n. Similarly, if the regression
of Y on X is a polynomial of degree k, then, for i = 1, . . . , n,
E(Yi) = β0 + β1xi
+ . . . + βkxk
i . (11.5.2)
In this case, p = k + 1 and E(Yi) can be represented in the form given in Eq. (11.5.1)
by letting zij
= x
j
i for j = 0, . . . , k.
As a final example, consider a problem in which the regression of Y on k variables
X1, . . . , Xk is a function like that given in Eq. (11.2.1).Aproblem of this type is called
a problem of multiple linear regression because we are considering the regression of Y
on k variablesX1, . . . , Xk, rather than on just a single variableX, and we are assuming
also that this regression is a linear function of the parameters β0, . . . , βk. In a problem
of multiple linear regression, we obtain n vectors of observations (xi1, . . . , xik, Yi), for
i = 1, . . . , n. Here xij is the observed value of the variable Xj for the ith observation.
Then E(Yi) is given by the relation
E(Yi) = β0 + β1xi1 + . . . + βkxik. (11.5.3)
This expectation can also be represented in the form given in Eq. (11.5.1), with
p = k + 1, by letting zi0 = 1 and zij
= xij for j = 1, . . . , k.
Example
11.5.2
Unemployment in the 1950s. In Example 11.5.1, we can let Y stand for the unemployment
rate, while X1 stands for the index of production and X2 stands for the year.
 
Our discussion has indicated that the general linear model is general enough to
include problems of simple and multiple linear regression, problems in which the
regression function is a polynomial, problems in which the regression function has
the form given in Eq. (11.1.16), and many other problems.
Some books devoted to regression and other linear models are Cook andWeisberg
(1999), Draper and Smith (1998), Graybill and Iyer (1994), andWeisberg (1985).
Maximum Likelihood Estimators
We shall now describe a procedure for determining the M.L.E.’s of β0, . . . , βp−1 in
the general linear model. Since E(Yi) is given by Eq. (11.5.1) for i = 1, . . . , n, the
likelihood function after observing values y1, . . . , yn will have the following form:
1
(2πσ2)n/2 exp
 
− 1
2σ2
 n
i=1
(yi
− zi0β0 − . . . − zip−1βp−1)2
 
. (11.5.4)
11.5 The General Linear Model and Multiple Regression 739
Since the M.L.E.’s are the values that maximize the likelihood function (11.5.4), it
can be seen that the estimates ˆ β0, . . . , ˆ βp−1 will be the values of β0, . . . , βp−1 for
which the following sum of squares Q is minimized:
Q =
 n
i=1
(yi
− zi0β0 − . . . − zip−1βp−1)2. (11.5.5)
Since Q is the sum of the squares of the deviations of the observed values from the
linear function given in Eq. (11.5.1), it follows that the M.L.E.’s ˆ β0, . . . , ˆ βp−1 will be
the same as the least-squares estimates.
To determine the values of ˆ β0, . . . , ˆ βp−1, we can calculate the p partial derivatives
∂Q/∂βj for j = 0, . . . , p − 1 and can set each of these derivatives equal to 0.
The resulting p equations, which are called the normal equations, will form a set of p
linear equations in β0, . . . , βp−1. We shall assume that the p × p matrix formed by
the coefficients of β0, . . . , βp−1 in the normal equations is nonsingular. Then these
equations will have a unique solution ˆ β0, . . . , ˆ βp−1, and ˆ β0, . . . , ˆ βp−1 will be both
the M.L.E.’s and the least-squares estimates of β0, . . . , βp−1.
For a problem of polynomial regression in which E(Yi) is given by Eq. (11.5.2),
the normal equations were presented as the relations (11.1.8). For a problem of multiple
linear regression in which E(Yi) is given by Eq. (11.5.3), the normal equations
were presented as the relations (11.1.13).
If we substitute ˆ βi for βi for i = 0, . . . , p − 1 in the formula forQin Eq. (11.5.5),
we obtain
S2 =
 n
i=1
(Yi
− zi0
ˆ β0 − . . . − zip−1
ˆ βp−1)2. (11.5.6)
Eq. (11.5.6) is the natural generalization of Eq. (11.3.9) to the multiple regression
case. It can be shown using the same method outlined in the proof of Theorem 11.2.1
that the M.L.E. of σ2 in the general linear model is
ˆσ
2 = S2
n
. (11.5.7)
The details are left to Exercise 1 at the end of this section. In analogy to Eq. (11.3.12),
we define the useful quantity
σ
  =
 
S2
n − p
 1/2
. (11.5.8)
This makes σ
 2 an unbiased estimator of σ2. (See Exercise 2.)
Explicit Form of the Estimators
In order to derive the explicit form and the properties of the estimators ˆ β0, . . . , ˆ βp−1,
it is convenient to use the notation and techniques of vectors and matrices.We shall
let the n × p matrix Z be defined as follows:
Z =
⎡
⎢⎢⎢⎣
z10 . . . z1p−1
z20 . . . z2p−1
...
. . .
...
zn0 . . . znp−1
⎤
⎥⎥⎥⎦
. (11.5.9)
740 Chapter 11 Linear Statistical Models
This matrix Z distinguishes one regression problem from another, because the entries
in Z determine the particular linear combinations of the unknown parameters
β0, . . . , βp−1 that are relevant in a given problem.
Definition
11.5.2
Design Matrix. The matrix Z in Eq. (11.5.9) for a general linear model is called the
design matrix of the model.
The name “design matrix” comes from the case in which the zij are chosen by the
experimenter to achieve a well-designed experiment. It should be kept in mind,
however, that some or all of the entries in Z may be simply the observed values
of certain variables, and may not actually be controlled by the experimenter.
We shall also let y be the n × 1 vector of observed values of Y1, . . . , Yn, β be the
p × 1 vector of parameters, and ˆ
β be the p × 1 vector of estimates. These vectors may
be represented as follows:
y =
⎡
⎢⎣
y1
...
yn
⎤
⎥⎦
, β =
⎡
⎢⎣
β0
...
βp−1
⎤
⎥⎦
, and ˆ
β =
⎡
⎢⎣
ˆ β0
...
ˆ βp−1
⎤
⎥⎦
.
The transpose of a vector or matrix v will be denoted by v .
Theorem
11.5.1
General Linear Model Estimators. The least squares estimator (and M.L.E.) of β is
ˆβ
= (Z Z)
−1Z Y. (11.5.10)
Proof The sum of squares Q given in Eq. (11.5.5) can be written in the following
form:
Q = ( y − Zβ)
 
( y − Zβ).
Since Q is a quadratic function of the coordinates of β, it is straightforward to take
the partial derivatives of Q with respect to these coordinates and set them equal to
0. For example, the partial derivative with respect to β0 is
∂Q
∂β0
=−2
 n
i=1
zi0yi
+ 2
 p−1
j=0
βj
 n
i=1
zi0zij . (11.5.11)
Each of the other partial derivatives produces an equation similar to (11.5.11). Set
the right-hand sides of each of these p equations to 0, and arranged them into the
following matrix equation:
Z Zβ = Z y. (11.5.12)
Because it is assumed that the p × p matrix Z Z is nonsingular, the vector of estimates
ˆβ
will be the unique solution of Eq. (11.5.12). In order for Z Z to be nonsingular,
the number of observations n must be at least p, and there must be at least
p linearly independent rows in the matrix Z. When this assumption is satisfied, it
follows from Eq. (11.5.12) that ˆ
β = (Z Z)
−1Z y. Thus, if we replace the vector y of
observed values by the vector Y of random variables, the form for the vector of
estimators ˆ
β will be (11.5.10).
Virtually every statistical computer package will calculate least-squares estimates for
a multiple linear regression. Even some handheld calculators will perform multiple
linear regression. The matrix (Z Z)
−1 is useful for more than just computing ˆ
β in
11.5 The General Linear Model and Multiple Regression 741
Eq. (11.5.10), as we shall see later in this section. Not every piece of regression
software makes it easy to access this matrix.
It follows from Eq. (11.5.10) that each of the estimators ˆ β0, . . . , ˆ βp−1 will be
a linear combination of the coordinates Y1, . . . , Yn of the vector Y. Since each of
these coordinates has a normal distribution and they are independent, it follows that
each estimator ˆ βj will also have a normal distribution. Indeed, the entire vector ˆ
β
has a joint normal distribution (called a multivariate normal distribution), which is
a generalization of the bivariate normal distribution to more than two coordinates.
We shall not discuss the multivariate normal distribution in detail in this text, but
we shall merely point out one feature that it has in common with the bivariate
normal distribution: If a vector ˆ
β has a multivariate normal distribution, then every
linear combination of the coordinates of ˆ
β has a normal distribution. Indeed, every
collection of linear combinations of the coordinates of ˆ
β has a multivariate normal
distribution.
Example
11.5.3
Unemployment in the 1950s. The matrix Z in Example 11.5.1 has three columns. The
first column is the number 1 ten times. The second column is the second column of
Table 11.12. In order to avoid some numerical problems, we shall let the third column
of Z be the third column of Table 11.12 minus 1949. The vector y is the first column
of Table 11.12.We can then compute the matrix (Z Z)
−1 and the vector Z y:
(Z Z)
−1 =
⎛
⎝
38.35 −0.3323 1.383
−0.3323 2.915 × 10−3 −0.01272
1.383 −0.01272 0.06762
⎞
⎠ Z y =
⎛
⎝
28.2
3931
144.1
⎞
⎠ .
We can then use Eq. (11.5.10) to compute
ˆβ
=
⎛
⎝
13.45
−0.1033
0.6594
⎞
⎠.
We shall examine the residuals later in this section.  
Mean Vector and Covariance Matrix
We shall now derive the means, variances, and covariances of ˆ β0, . . . , ˆ βp−1. Suppose
that Y is an n-dimensional random vector with coordinates Y1, . . . , Yn. Thus,
Y =
⎡
⎢⎣
Y1
...
Yn
⎤
⎥⎦
. (11.5.13)
The expectation E(Y ) of this random vector is defined to be the n-dimensional vector
whose coordinates are the expectations of the individual coordinates of Y. Hence,
E(Y ) =
⎡
⎢⎣
E(Y1)
...
E(Yn)
⎤
⎥⎦
.
Definition
11.5.3
Mean Vector/Covariance Matrix. IfY is a random vector, then the vector E(Y ) is called
the mean vector of Y. The covariance matrix of Y is defined to be the n × n matrix
such that, for i = 1, . . . , n and j = 1, . . . , n, the element in the ith row and jth column
is Cov(Yi, Yj ). We shall let Cov(Y ) denote this covariance matrix.
742 Chapter 11 Linear Statistical Models
For example, if Cov(Yi, Yj ) = σij for all i and j , then
Cov(Y ) =
⎡
⎢⎣
σ11 . . . σ1n
...
. . .
...
σn1 . . . σnn
⎤
⎥⎦
.
For i = 1, . . . , n, Var(Yi) = Cov(Yi , Yi) = σii . Therefore, the n diagonal elements
of the matrix Cov(Y ) are the variances of Y1, . . . , Yn. Furthermore, since
Cov(Yi, Yj ) = Cov(Yj, Yi), then σij
= σji. Therefore, the matrix Cov(Y ) must be
symmetric.
The mean vector and the covariance matrix of the random vectorY in the general
linear model can easily be determined. It follows from Eq. (11.5.1) that
E(Y ) = Zβ. (11.5.14)
Also, the coordinates Y1, . . . , Yn of Y are independent, and the variance of each of
these coordinates is σ2. Therefore,
Cov(Y ) = σ2I, (11.5.15)
where I is the n × n identity matrix.
The following result helps us find the mean vector and covariance matrix of ˆ
β.
Theorem
11.5.2
Suppose that Y is an n-dimensional random vector as specified by Eq. (11.5.13),
for which the mean vector E(Y ) and the covariance matrix Cov(Y ) exist. Suppose
also that A is a p × n matrix whose elements are constants, and that W is a pdimensional
random vector defined by the relationW = AY. Then E(W ) = AE(Y )
and Cov(W ) = ACov(Y )A .
Proof Let the elements of matrix A be denoted as follows:
A=
⎡
⎢⎣
a01 . . . a0n
.... .
.
...
ap−11 . . . ap−1n
⎤
⎥⎦
.
Then the ith coordinate of the vector E(W ) is
E(Wi) = E
⎛
⎝
 n
j=1
aijYj
⎞
⎠ =
 n
j=1
aijE(Yj ). (11.5.16)
It can be seen that the final summation in Eq. (11.5.16) is the ith coordinate of the
vector AE(Y ). Hence, E(W ) = AE(Y ).
Next, for i = 0, . . . , p − 1 and j = 0, . . . , p − 1, the element in the ith row and
jth column of the p × p matrix Cov(W ) is
Cov(Wi, Wj ) = Cov
 
 n
r=1
airYr ,
 n
s=1
ajsYs
 
.
Therefore, by Exercise 8 of Sec. 4.6,
Cov(Wi, Wj ) =
 n
r=1
 n
s=1
airajs Cov(Yr, Ys). (11.5.17)
11.5 The General Linear Model and Multiple Regression 743
Using the formula for matrix multiplication, one finds that the right side of
Eq. (11.5.17) is the element in the ith row and jth column of the p × p matrix
ACov(Y )A . Hence, Cov(W ) = ACov(Y )A .
The means, the variances, and the covariances of the estimators ˆ β0, . . . , ˆ βp−1 can
be obtained by applying Theorem 11.5.2.
Theorem
11.5.3
In the general linear model, E(
ˆβ
) = β, and Cov(
ˆβ
) = σ2(Z Z)
−1.
Proof Eq. (11.5.10) says that ˆ
β can be represented in the form ˆ
β = AY, where
A= (Z Z)
−1Z . Therefore, it follows from Theorem 11.5.2 and Eq. (11.5.14) that
E(
ˆβ
) = (Z Z)
−1Z 
E(Y ) = (Z Z)
−1Z Zβ = β.
Also, it follows from Theorem 11.5.2 and Eq. (11.5.15) that
Cov(
ˆβ
) = (Z Z)
−1Z  Cov(Y )Z(Z Z)
−1
= (Z Z)
−1Z 
(σ 2I)Z(Z Z)
−1
= σ2(Z Z)
−1.
Thus, E( ˆ βj ) = βj for j = 0, . . . , p − 1, and for j = 1, . . . , n, Var( ˆ βj ) equals σ2 times
the jth diagonal entry of the matrix (Z Z)
−1. Also, for i  = j , Cov( ˆ βi , ˆ βj ) will be equal
to σ2 times the entry in the ith row and jth column of the matrix (Z Z)
−1.
Example
11.5.4
Dishwasher Shipments. The United States Department of Commerce collects data on
factory shipments of durable goods as well as other economic indicators. Table 11.13
contains the numbers of factory shipments of dishwashers (in thousands) and private
residential investment in billions of 1972 dollars for the years 1960 through 1985.
Figure 11.16 shows plots of dishwasher shipments against year and private residential
investment. Let Y stand for dishwasher shipments.We could fit a model in which the
mean of Y is given by Eq. (11.5.3) with k = 2. The matrix Z would have three columns
and 26 rows. The first column would be all the number 1. The second column would
have time, expressed as the year minus 1960 for numerical stability. The third column
would have private residential investment.We can then compute
(Z Z)
−1 =
⎛
⎝
1.152 0.01279 −0.02660
0.01279 0.001136 −0.0005636
−0.02660 −0.0005636 0.0007026
⎞
⎠.
The correlation between ˆ β1 and ˆ β2 can be computed as
ρ = Cov( ˆ β1, ˆ β2)
(Var( ˆ β1) Var( ˆ β2))1/2
=
−0.0005636σ2
(0.001136σ2 × 0.0007026σ2)1/2
=−0.6309.
Notice that the correlation does not depend on the unknown value of σ2, but only on
the design matrix. Also notice that the correlation is negative and sizeable. If one of
the coefficients is overestimated, the other one will tend to be underestimated.  
744 Chapter 11 Linear Statistical Models
Table 11.13 Dishwasher shipments and residential investment from
1960–1985
Dishwasher shipments Private residential investment
Year (thousands) (billions of 1972 dollars)
1960 555 34.2
1961 620 34.3
1962 720 37.7
1963 880 42.5
1964 1050 43.1
1965 1290 42.7
1966 1528 38.2
1967 1586 37.1
1968 1960 43.1
1969 2118 43.6
1970 2116 41.0
1971 2477 53.7
1972 3199 63.8
1973 3702 62.3
1974 3320 48.2
1975 2702 42.2
1976 3140 51.2
1977 3356 60.7
1978 3558 62.4
1979 3488 59.1
1980 2738 47.1
1981 2484 44.7
1982 2170 37.8
1983 3092 52.7
1984 3491 60.3
1985 3536 61.4
Figure 11.16 Plots of dishwasher
shipments against
year (left) and private residential
investment (right).
Year
Dishwasher shipments
1965 1975 1985
3500
3000
2500
2000
1500
1000
500
0
Dishwasher shipments
3500
3000
2500
2000
1500
1000
500
0
Private residential investment
35 40 45 50 55 60
11.5 The General Linear Model and Multiple Regression 745
The Joint Distribution of the Estimators
Let the random variable S2 be defined as in Eq. (11.5.6). The sum of squares S2 can
also be represented in the following form:
S2 = (Y − Zˆ
β)
 
(Y − Zˆ
β). (11.5.18)
The method in the proof of Theorem 11.3.2 can be extended by making use of
methods that are beyond the scope of this book in order to prove the following two
facts. First, S2/σ 2 has the χ2 distribution with n − p degrees of freedom. Second, S2
and the random vector ˆ
β are independent.
From Eq. (11.5.7), we see that ˆσ 2 = S2/n. Hence, the random variable nˆσ 2/σ 2
has the χ2 distribution with n − p degrees of freedom, and the estimators ˆσ 2 and ˆ
β
are independent.
The following result summarizes what we have proven and stated without proof
concerning the joint distribution of ˆ
β and ˆσ 2.
Corollary
11.5.1
Let the entries in the symmetric p × p matrix (Z Z)
−1 be denoted as follows:
(Z Z)
−1 =
⎡
⎢⎣
ζ00 . . . ζ0p−1
...
. . .
...
ζp−10 . . . ζp−1p−1
⎤
⎥⎦
. (11.5.19)
For j = 0, . . . , p − 1, the estimator ˆ βj has the normal distribution with mean βj and
variance ζjjσ2. Furthermore, for i  = j , we have Cov( ˆ βi, ˆ βj ) = ζijσ2. Also, the entire
vector ˆ
β has a multivariate normal distribution. Finally, ˆσ 2 is independent of ˆ
β and
nˆσ 2/σ 2 has the χ2 distribution with n − p degrees of freedom.
Note that ˆ
β is also independent of σ
 2 from Eq. (11.5.8).
Testing Hypotheses
Suppose that it is desired to test the hypothesis that one of the regression coefficients
βj has a particular value β
∗
j . In other words, suppose that the following hypotheses
are to be tested:
H0 : βj
= β
∗
j ,
H1 : βj
 = β
∗
j .
(11.5.20)
Since Var( ˆ βj ) = ζjjσ2, it follows that when H0 is true, the following random variable
Wj will have the standard normal distribution:
Wj
=
( ˆ βj
− β
∗
j )
ζ
1/2
jj σ
.
Furthermore, since the random variable S2/σ 2 has the χ2 distribution with n − p
degrees of freedom, and since S2 and ˆ βj are independent, it follows that when H0 is
true, the following random variable Uj will have the t distribution with n − p degrees
746 Chapter 11 Linear Statistical Models
of freedom:
Uj
=
Wj  
1
n − p
 
S2
σ2
  1/2
=
( ˆ βj
− β
∗
j )
(ζjj )1/2σ  . (11.5.21)
The level α0 test of the hypotheses (11.5.20) specifies that the null hypothesis H0
should be rejected if |Uj
| ≥ T
−1
n−p(1− α0/2), where T
−1
n−p is the quantile function of
the t distribution with n − p degrees of freedom. Furthermore, if u is the value of Uj
observed in a given problem, the corresponding p-value is
Pr(Uj
≥ |u|) + Pr(Uj
≤−|u|). (11.5.22)
Tests for one-sided hypotheses can be derived in a similar fashion.
Example
11.5.5
Dishwasher Shipments. In Example 11.5.4, the least-squares estimates for the model
are ˆ β0 =−1314, ˆ β1 = 66.91, and ˆ β2 = 58.86. The observed value of σ
  is 352.9. Now
suppose that we are interested in testing the hypotheses
H0 : β1 = 0,
H1 : β1  = 0,
where β1 is the coefficient of time in the multiple linear regression model. Using the
matrix (Z Z)
−1 found in Example 11.5.4, we can calculate
U1 = 66.91− 0
(0.001136)1/2 × 352.9
= 5.625.
The degrees of freedom are 26 − 3= 23, and 5.625 is larger than every quantile listed
in the table of the t distribution in this book. Using a computer program, we find that
the p-value is about 1× 10−5.  
Example
11.5.6
Unemployment in the 1950s. In Example 11.5.3, we regressed unemployment on a
Federal Reserve Board index of production and time. The least-squares estimates
are ˆ β0 = 13.45, ˆ β1=−0.1033, and ˆ β2 = 0.6594. The observed value of σ
  is 0.4011.
Now suppose that we wish to test the hypotheses
H0 : β2 ≤ 0.4,
H1 : β2 > 0.4.
To test these hypotheses, we reject H0 if U2 is too large. We calculate U2 using the
matrix (Z Z)
−1 computed in Example 11.5.3:
U2 = 0.6594 − 0.4
(0.06762)1/2 × 0.4011
= 2.487.
The degrees of freedom are 10 − 3 = 7, and 2.487 falls between the 0.975 and 0.99
quantiles of the t distribution with seven degrees of freedom. The p-value is actually
0.0209, so we would reject H0 at every level α0 ≥ 0.0209.  
Problems of testing hypotheses that specify the values of two coefficients βi and
βj are discussed in Exercises 17 to 21 at the end of this section. Problems of testing
hypotheses about linear combinations of β0, . . . , βp−1 are the subject of Exercise 26.
Some computer programs make it easy to test hypotheses about individual βj ’s.
Indeed, most software automatically supplies the value of the test statistic Uj for
11.5 The General Linear Model and Multiple Regression 747
testing the following hypotheses for each j (j = 0, . . . , k):
H0 : βj
= 0,
H1 : βj
 = 0.
(11.5.23)
Some programs also compute the corresponding p-values that are found from the
expression (11.5.22).
Power of the Test If the null hypothesis in (11.5.20) is false, then the statistic Uj
has the noncentral t distribution with n − p degrees of freedom and noncentrality
parameter ψ = (βj
− β
∗
j )/(ζ
1/2
jj σ). Plots such as those in Figures 9.12 and 9.14 or
computer programs can be used to calculate the power of the t test for specific
parameter values.
Prediction
Let z  = (z0, . . . , zp−1) be a vector of predictors for a future observation Y .We wish
to predict Y using ˆ Y = z ˆ
β, and we want to know the M.S.E. We shall assume that Y
is independent of the observed data. This makes Y and ˆ Y independent.We can write
ˆ Y = z ˆ
β = z 
(Z Z)
−1Z Y,
so that ˆ Y is a linear combination of the original data Y. Since the coordinates of Y are
independent normal random variables, Theorem 11.3.1 tells us that ˆ Y has a normal
distribution. The mean of ˆ Y is easily seen to be
E( ˆ Y ) = z 
E(
ˆβ
) = z 
β.
The variance of ˆ Y is obtained from Theorem 11.5.2:
Var( ˆ Y ) = z 
(Z Z)
−1Z  Cov(Y )Z(Z Z)
−1z
= z 
(Z Z)
−1zσ2.
Since Y has the normal distribution with mean z 
β and variance σ2 and is independent
of ˆ Y , it follows that Y − ˆ Y has the normal distribution with mean 0 and variance
Var(Y − ˆ Y ) = Var( ˆ Y ) + Var(Y ) = σ2
#
1+ z 
(Z Z)
−1z
$
. (11.5.24)
Since Y − ˆ Y has mean 0, Eq. (11.5.24) is also the M.S.E. for using ˆ Y to predict Y .
We can also form a prediction interval for Y just as we did in (11.3.25). As we
did there, define
Z = Y − ˆ Y
σ[1+ z (Z Z)−1z]1/2
, W= S2
σ2
.
Then Z has the standard normal distribution independent of W, which has the χ2
distribution with n − p degrees of freedom. Hence,
Z
(W/[n − p])1/2
= Y − ˆ Y
σ [1+ z (Z Z)−1z]1/2
has the t distribution with n − p degrees of freedom. It follows that the interval with
748 Chapter 11 Linear Statistical Models
the following endpoints has probability 1− α0 of containing Y , prior to observing the
data:
ˆ Y ± T
−1
n−p


1− α0
2
 
σ
 
#
1+ z 
(Z Z)
−1z
$1/2
. (11.5.25)
Example
11.5.7
Predicting Dishwasher Shipments. In Example 11.5.4, the least-squares estimates for
the model are ˆ β0 =−1314, ˆ β1 = 66.91, and ˆ β2 = 58.86. The observed value of σ
 
is 352.9. Now suppose that we are interested in predicting dishwasher shipments
for 1986. We happen to know that in 1986 private residential investment was 67.2
billion. In order to predict dishwasher shipments for 1986, we first form the vector
of predictors z  = (1, 26, 67.2). Then we compute ˆ Y = z ˆ
β = 4381 and
σ
 [1+ z 
(Z Z)
−1z]1/2 = 352.9[1+ 0.2136]1/2 = 388.8.
We can now compute a prediction interval for 1986 dishwasher shipments. For example,
with α0 = 0.1, we get a 90 percent prediction interval using T
−1
23 (0.95) = 1.714,
(4381− 1.714 × 388.8, 4381+ 1.714 × 388.8) = (3715, 5047).
This is quite a wide range due to the large value of σ
 . The actual value for dishwasher
sales in 1986 was 3915, which is quite far from ˆ Y , but still within the interval.  
Multiple R2
In a problem of multiple linear regression, we are typically interested in determining
how well the variables X1, . . . , Xk explain the observed variation in the random
variable Y . The variation among the n observed values y1, . . . , yn of Y can be
measured by the value of
 n
i=1(yi
− y)2, which is the sum of the squares of the
deviations of y1, . . . , yn from the average y. Similarly, after the regression of Y on
X1, . . . , Xk has been fitted from the data, the variation among the n observed values
of Y that is still present can be measured by the sum of the squares of the deviations of
y1, . . . , yn from the fitted regression. This sum of squares will be equal to the value
of S2 in Eq. (11.5.6) calculated from the observed values, i.e., S2 = n
i=1(yi
− ˆyi)2,
where ˆyi
= ˆ β0 + ˆ β1xi1 + . . . + ˆ βkxik.
It now follows that the proportion of the variation among the observed values
y1, . . . , yn that remains unexplained by the fitted regression is
 n
i=1(yi
− ˆyi)2
 n
i=1(yi
− y)2
.
In turn, the proportion of the variation among the observed values y1, . . . , yn that is
explained by the fitted regression is given by the following value R2:
R2 = 1−
 n
i=1(yi
− ˆyi)2
 n
i=1(yi
− y)2
. (11.5.26)
Example
11.5.8
Unemployment in the 1950s. For the data in Example 11.5.1, we can compute y10 =
2.82, and then
 10
i=1(yi
− y10)2 = 8.376. The value of S2 is (10 − 3) × σ
 2 = 1.126, so
R2 = 1− 1.126/8.376 = 0.8656.  
The value of R2 must lie in the interval 0 ≤ R2 ≤ 1. When R2 = 0, the leastsquares
estimates have the values ˆ β0 = y and ˆ β1 = . . . = ˆ βk
= 0. In this case, the fitted
regression function is just the constant function y = y. When R2 is close to 1, the
11.5 The General Linear Model and Multiple Regression 749
variation of the observed values of Y around the fitted regression function is much
smaller than their variation around y.
Analysis of Residuals
In Sec. 11.3, we described some plots for assessing whether or not the assumptions of
the simple linear regression model seem to be met. These same plots, together with
some others, are also useful in the general linear model. Recall that, in general, the
residuals are the values
ei
= yi
− ˆyi
= yi
− zi0β0 − . . . − zip−1βp−1.
Example
11.5.9
Unemployment in the 1950s. In this example, p = 3 with zi0 = 1 for all i. We have
plotted the residuals against the two predictor variables in the top row of Fig. 11.17
to begin looking for violations of the assumptions. The residual from the first year
(1950) is very high, and the remaining residuals appear to lie near a line with positive
slope in each plot. This suggests that the first observation does not follow the same
pattern as the others.We also performed the regression without the 1950 data point.
The residual plots using the new least-squares estimates fit from the 1951–1959 data
are in the bottom row of Fig. 11.17. The residuals for 1951–1959 no longer lie on
a sloped line. Also, Fig. 11.18 shows normal quantile plots both before and after
deleting the 1950 observation. The right plot is much straighter. Of course, such a
graphical analysis does not show that the 1950 observation should be deleted. We
should check to see if something might have occurred in 1950 that would make a
drastic change to the relationship between unemployment and time (such as the start
of the war in Korea.)  
Another plot that is useful in multiple regression cases is a plot of residuals
against fitted values, ˆyi for i = 1, . . . , n. (See Exercise 27 to see why this plot is not
used in simple linear regression.) This plot helps to reveal dependence between the
mean and variance of Y . (Recall that ˆyi is an estimate of the mean of Yi.) If the residuals
are more spread out at one end or the other of this plot, it suggests that the
variance of Y changes as the mean changes, which violates the assumption that all
observations have the same variance. The left plot in Fig. 11.19 is a plot of residuals
Figure 11.17 Plots of residuals
against the two predictor
variables for Example 11.5.9.
Top row: using all data for
1950–1959. Bottom row: using
only 1951–1959 data.
Index of production
Residuals:
195021959
120 130 140 150 160
20.6
0.4
Residuals:
195021959
20.6
0.4
Year
1950 1952 1954 1956 1958
Index of production
Residuals:
195121959
130 140 150 160
20.2
0.2
Residuals:
195121959
20.2
0.2
Year
1952 1954 1956 1958
750 Chapter 11 Linear Statistical Models
Figure 11.18 Normal quantile
plots of residuals for
Example 11.5.9. The left plot
is from the regression using
all 10 observations. The right
plot uses only 1951–1959. Normal quantiles Normal quantiles
Residuals: 195021959
21.0 0.5 1.0
20.6
20.4
20.2
0.2
20.2
0.4 0.2
0.6
21.020.5 0.5 1.0
Residuals: 195021959
Figure 11.19 Residual plots
for Example 11.5.9. Left: plot
of residuals against fitted
values. Right: plot of pairs of
consecutive residuals. Both
plots use 1951–1959 data only. Fitted values
Residuals
2.0 2.5 3.0 3.5 4.0 4.5
20.2
0.2
20.2
0.2
First residual
Second residual
20.2 0.2
against fitted values for the unemployment data. It appears that the residuals corresponding
to low fitted values are more spread out than those corresponding to high
fitted values. Methods for responding to such features in a residual plot can be found
in texts on regression methodology such as Draper and Smith (1998) and Cook and
Weisberg (1999).
If the time of each measurement is available, as in Examples 11.5.1 and 11.5.4,
it makes sense to plot residuals against time to see if there is any time dependence
not captured by the model. Since time was one of the predictors in each of these
examples, we will plot residuals against time when we plot residuals against the
predictors. In addition to plotting the residuals against time, we can also plot the
nearby residuals against each other to see if small ones tend to occur together and/or
if large ones tend to occur together. Let v1, . . . , vn be the residuals ordered by time.
We can plot the n − 1 points (v1, v2), (v2, v3), . . . , (vn−1, vn). If these plotted points
follow a pattern, it suggests that there is dependence between observations that are
close together in time, called serial dependence. This would violate the assumption
that the observations are independent. The right plot in Fig. 11.19 is the plot of
consecutive pairs of residuals for the unemployment data. The points in this plot
cluster in opposite corners, suggesting serial dependence, although the small sample
size makes it difficult to be certain.
Example
11.5.10
Dishwasher Shipments. Consider, again, the data from Example 11.5.4. Plots of residuals
against the two predictors, in the top row of Fig. 11.20, reveal a serious problem.
There is a curve in the plot of residuals against the year. The residuals are highest in
the middle years and lower in the early and late years. This suggests that perhaps the
relationship between shipments and time is not linear. The plot of pairs of consecu11.5
The General Linear Model and Multiple Regression 751
Figure 11.20 Residual plots
for Example 11.5.10.Top row:
residuals against predictors.
Lower left: residuals against
fitted values. Lower right:
pairs of successive residuals.
Year
1960 1965 1970 1975 1980 1985
Residential investment
35 40 45 50 55 60
2400
400
800
2400
400
800
2400
400
800
2400
400
800
Fitted values
1000 2000 3000 4000
First residual
2400 200 400 600 800
Residuals
Residuals
Residuals
Residuals
Figure 11.21 Residual plots
for regression of dishwasher
shipments on a quadratic
function of time. Left: plot of
residuals against time. Right:
plot of pairs of consecutive
residuals.
Year
1965 1975 1985
600
400
200
600
400
2200
First residual
2200 400 600
2200
200
Residuals Second residual
tive residuals also suggests some time dependence. This could be a result of the same
problem that caused the curve in the plot of residuals against time, or it could indicate
that successive observations are dependent. It is possible that deviations from
the overall trend in dishwasher sales might persist for more than one year. For example,
a boom or bust in sales one year might carry over to part of the next year. The
normal quantile plot (not shown) is fairly straight.
In order to try to determine whether there is serial dependence or a nonlinear
relationship (or both) in these data, we fit another model in which the mean of Y is
a linear function of private residential investment but a quadratic function of time.
That is, let X1 stand for the year (minus 1960), let X2 stand for private residential
investment, and let X3 = X2
1. Then
E(Y) = β0 + β1X1 + β2X2 + β3X2
1.
The least-squares estimates from this model are ˆ β0 =−1445, ˆ β1 = 206.1, ˆ β2 = 48.5,
and ˆ β3=−5.23. The observed value of σ
  is 235.7. The plots of residuals against time
and of consecutive pairs of residuals are in Fig. 11.21. The plot of residuals against
time is better than before, but the pairs of consecutive residuals still lie close to a line.
This suggests that we need to take serial dependence into account. One book that
describes methods for dealing with serial dependence (commonly called time series
analysis) is Box, Jenkins, and Reinsel (1994).  
752 Chapter 11 Linear Statistical Models
Summary
In the general linear model, we assume that the mean of each observation Yi can be
expressed as zi0
ˆ β0 + . . . + zip−1
ˆ βp−1, where β0, . . . , βp−1 are unknown parameters
and zi0, . . . , zip−1 are the observed values of predictors. These predictors can be
control variables, other variables that are measured along with Yi , or functions of
such variables. Least-squares estimators of the parameters are denoted ˆ β0, . . . , ˆ βp−1,
and they can be calculated according to Eq. (11.5.10) or by using a computer. The
variance of each Yi is assumed to be the same value σ2. Every linear combination
of the least-squares estimators has a normal distribution and is independent of the
unbiased estimator σ
 2 of σ2 given in Eq. (11.5.8).
For testing hypotheses about a single βj , the statistic Uj in Eq. (11.5.21) has the
t distribution with n − p degrees of freedom given that the null hypothesis is true.
For predicting a future Y value, we can form prediction intervals using the endpoints
given by (11.5.25).We should always plot the residuals yi
− ˆyi against the predictors,
fitted values ˆyi , and time (if available) to check on the assumptions of the linear
regression model. Patterns in these plots can suggest violations of the assumption
about the form of the mean of Yi and/or the constant variance assumption.We should
also make a normal quantile plot. Deviations from a straight line in this plot suggest
that the Yi values might not have a normal distribution, although violations of the
assumptions about the mean and variance can also cause patterns in this plot. If
observation time is available, we should also plot pairs of consecutive residuals to
look for serial dependence.
Exercises
1. Show that the M.L.E. of σ2 in the general linear model
is given by Eq. (11.5.7).
2. Prove that σ
 2, defined in Eq. (11.5.8), is an unbiased
estimator of σ2. You may assume that S2 has a χ2 distribution
with n − p degrees of freedom.
3. Consider a regression problem in which, for each value
x of a certain variable X, the random variable Y has the
normal distribution with mean βx and variance σ2, where
the values of β and σ2 are unknown. Suppose that n independent
pairs of observations (xi , Yi) are obtained. Show
that the M.L.E. of β is
ˆ β =
 n
i=1 xiYi  n
i=1 x2
i
.
4. For the conditions of Exercise 3, show that E( ˆ β) = β
and Var( ˆ β) = σ2/(
 n
i=1 x2
i ).
5. Suppose that when a small amount x of an insulin
preparation is injected into a rabbit, the percentage decrease
Y in blood sugar has the normal distribution with
mean βx and variance σ2, where the values of β and σ2
are unknown. Suppose that when independent observations
are made on 10 different rabbits, the observed values
of xi and Yi for i = 1, . . . , 10 are as given in Table 11.14.
Determine the values of the M.L.E.’s ˆ β and ˆσ 2, and the
value of Var( ˆ β).
Table 11.14 Data for Exercise 5
i xi yi i xi yi
1 0.6 8 6 2.2 19
2 1.0 3 7 2.8 9
3 1.7 5 8 3.5 14
4 1.7 11 9 3.5 22
5 2.2 10 10 4.2 22
6. For the conditions of Exercise 5 and the data in Table
11.14, carry out a test of the following hypotheses:
H0 : β = 10,
H1 : β  = 10.
7. Consider a regression problem in which a patient’s reaction
Y to a new drug B is to be related to his reaction
X to a standard drug A. Suppose that for each value x
of X, the regression function is a polynomial of the form
E(Y) = β0 + β1x + β2x2. Suppose also that 10 pairs of observed
values are as shown in Table 11.1 on page 690. Under
the standard assumptions of the general linear model,
determine the values of the M.L.E.’s ˆ β0, ˆ β1, ˆ β2, and ˆσ 2.
11.5 The General Linear Model and Multiple Regression 753
8. For the conditions of Exercise 7 and the data in Table
11.1, determine the values of Var( ˆ β0), Var( ˆ β1), Var( ˆ β2),
Cov( ˆ β0, ˆ β1), Cov( ˆ β0, ˆ β2), and Cov( ˆ β1, ˆ β2).
9. For the conditions of Exercise 7 and the data in Table
11.1, carry out a test of the following hypotheses:
H0 : β2 = 0,
H1 : β2  = 0.
10. For the conditions of Exercise 7 and the data in
Table 11.1, carry out a test of the following hypotheses:
H0 : β1 = 4,
H1 : β1  = 4.
11. For the conditions of Exercise 7 and the data given
in Table 11.1, determine the value of R2, as defined by
Eq. (11.5.26).
12. Consider a problem of multiple linear regression in
which a patient’s reaction Y to a new drugB is to be related
to her reaction X1 to a standard drug A and her heart rate
X2. Suppose that, for all values X1 = x1 and X2 = x2, the
regression function has the form E(Y) = β0 + β1x1+ β2x2,
and the values of 10 sets of observations (xi1, xi2, Yi)
are given in Table 11.2 on page 696. Under the standard
assumptions of multiple linear regression, determine the
values of the M.L.E.’s ˆ β0, ˆ β1, ˆ β2, and ˆσ 2.
13. For the conditions of Exercise 12 and the data in
Table 11.2, determine the values of Var( ˆ β0), Var( ˆ β1),
Var( ˆ β2), Cov( ˆ β0, ˆ β1), Cov( ˆ β0, ˆ β2), and Cov( ˆ β1, ˆ β2).
14. For the conditions of Exercise 12 and the data in
Table 11.2, carry out a test of the following hypotheses:
H0 : β1 = 0,
H1 : β1  = 0.
15. For the conditions of Exercise 12 and the data in
Table 11.2, carry out a test of the following hypotheses:
H0 : β2 =−1,
H1 : β2  =−1.
16. For the conditions of Exercise 12 and the data in
Table 11.2, determine the value of R2, as defined by
Eq. (11.5.26).
17. Consider the general linear model in which the observations
Y1, . . . , Yn are independent and have normal
distributions with the same variance σ2 and in which E(Yi)
is given by Eq. (11.5.1). Let the matrix (Z Z)
−1 be defined
by Eq. (11.5.19). For all values of i and j such that i  = j ,
let the random variable Aij be defined as follows:
Aij
= ˆ βi
−
ζij
ζjj
ˆ βj .
Show that Cov( ˆ βj, Aij ) = 0, and explain why ˆ βj and Aij
are therefore independent.
18. For the conditions of Exercise 17, show that Var(Aij )
= [ζii
− (ζ 2
ij/ζjj )]σ2. Also show that the following random
variable W2 has the χ2 distribution with two degrees of
freedom:
W2 =
ζjj ( ˆ βi
− βi)2 + ζii( ˆ βj
− βj )2 − 2ζij ( ˆ βi
− βi)( ˆ βj
− βj )
 
ζiiζjj
− ζ 2
ij
 
σ2
.
Hint: Show that
W2 =
( ˆ βj
− βj )2
ζjjσ2
+
3
Aij
− E(Aij )
42
Var(Aij )
.
19. Consider again the conditions of Exercises 17 and
18, and let the random variable σ
  be as defined by Eq.
(11.5.8).
a. Show that the random variable σ2W2/(2σ
 2
) has the
F distribution with two and n − p degrees of freedom.
b. For every two given numbers β
∗
i and β
∗
j , describehow
to carry out a test of the following hypotheses:
H0 : βi
= β
∗
i and βj
= β
∗
j ,
H1 : The hypothesis H0 is not true.
20. For the conditions of Exercise 7 and the data in
Table 11.1, carry out a test of the following hypotheses:
H0 : β1 = β2 = 0,
H1 : The hypothesis H0 is not true.
21. For the conditions of Exercise 12 and the data in
Table 11.2, carry out a test of the following hypotheses:
H0 : β1 = 1 and β2 = 0,
H1 : The hypothesis H0 is not true.
22. Consider a problem of simple linear regression as described
in Sec. 11.2, and let R2 be defined by Eq. (11.5.26)
of this section. Show that
R2 =
3 n
i=1(xi
− x)(yi
− y)
42
3 n
i=1(xi
− x)24 3 n
i=1(yi
− y)24 .
23. Suppose that X and Y are n-dimensional random vectors
for which the mean vectors E(X) and E(Y ) exist.
Show that E(X + Y ) = E(X) + E(Y ).
24. Suppose that X and Y are independent n-dimensional
random vectors for which the covariance matrices Cov(X)
and Cov(Y ) exist. Show that Cov(X + Y ) = Cov(X) +
Cov(Y ).
754 Chapter 11 Linear Statistical Models
25. Suppose that Y is a three-dimensional random vector
with coordinates Y1, Y2, and Y3, and suppose that the
covariance matrix of Y is as follows:
Cov(Y ) =
⎡
⎣
9 −3 0
−3 4 0
0 0 5
⎤
⎦.
Determine the value of Var(3Y1 + Y2 − 2Y3 + 8).
26. In a general linear model setting with p predictors, we
wish to test the following hypotheses:
H0 :
p −1
j=0
cjβj
= c∗,
H1 :
p −1
j=0
cjβj
 = c∗.
(11.5.27)
a. Show that
 p−1
j=0 cj
ˆ βj has a normal distribution and
find its mean and variance. (You may wish to use
Theorems 11.3.1 and 11.5.2.)
b. Let c   = (c0, . . . , cp−1). If H0 is true, show that
U =
 p−1
j=0 cj
ˆ βj
− c∗
σ (c  (Z Z)−1c)1/2
has the t distribution with n − p degrees of freedom.
c. Explain how to test the hypotheses in (11.5.27) at
level of significance α0.
27. In a simple linear regression problem, the plot of
residuals against fitted values would look the same as the
plot of residuals against the predictor X (or a mirror image
of it), except for the labeling of the horizontal axis.
Explain why this is true.
28. Consider a multiple linear regression problem with
design matrix Z and observations Y. Let Z1 be the matrix
remaining when at least one column is removed from Z.
Then Z1 is the design matrix for a linear regression problem
with fewer predictors and the same data Y. Prove that
the value of R2 calculated in the problem using design matrix
Z is at least as large as the value of R2 calculated in
the problem using design matrix Z1.
29. Calculate the value of R2 for the dishwasher shipment
data (Example 11.5.4) using the model in which the mean
of Yi is a linear function of both year and private residential
investment.
30. Consider again the conditions of Exercise 26. Suppose
that the null hypothesis in (11.5.27) is false. Find the distribution
of the statistic U defined in that exercise.
11.6 Analysis of Variance
In Sec. 9.6, we studied methods for comparing the means of two normal distributions.
In this section, we shall consider experiments in which we need to compare
the means of two or more normal distributions. The theory behind the methods developed
here is based entirely on results from the general linear model in Sec. 11.5.
The One-Way Layout
Example
11.6.1
Calories in Hot Dogs. Moore and McCabe (1999) describe data gathered by Consumer
Reports (June 1986, pp. 364–67). The data comprise (among other things) calorie
contents from 63 brands of hot dogs. (See Table 11.15.) The hot dogs come in four
varieties: beef, “meat” (don’t ask), poultry, and “specialty.” (Specialty hot dogs
include stuffing such as cheese or chili.) It is interesting to know whether, and to
what extent, the different varieties differ in their calorie contents. Data structures of
the sort in this example, consisting of several groups of similar random variables, are
the subject of this section.  
In this section and in the remainder of this chapter, we shall study a topic
known as the analysis of variance, abbreviated ANOVA. Problems of ANOVA
are actually problems of multiple regression in which the design matrix Z has a
very special form. In other words, the study of ANOVA can be placed within the
framework of the general linear model (Definition 11.5.1), if we continue to make
11.6 Analysis of Variance 755
Table 11.15 Calorie counts in four types of hot dogs for Example 11.6.2
Type Calorie Count
Beef 186, 181, 176, 149, 184, 190, 158, 139, 175, 148, 152, 111,
141, 153, 190, 157, 131, 149, 135, 132
Meat 173, 191, 182, 190, 172, 147, 146, 139, 175, 136, 179, 153,
107, 195, 135, 140, 138
Poultry 129, 132, 102, 106, 94, 102, 87, 99, 107, 113, 135, 142, 86,
143, 152, 146, 144
Specialty 155, 170, 114, 191, 162, 146, 140, 187, 180
the basic assumptions for such a model: The observations that are obtained are
independent and normally distributed; all these observations have the same variance
σ2; and the mean of each observation can be represented as a linear combination of
certain unknown parameters. The theory and methodology of ANOVA were mainly
developed by R. A. Fisher during the 1920s.
We shall begin our study of ANOVA by considering a problem known as the
one-way layout. In this problem, it is assumed that random samples from p different
normal distributions are available, each of these distributions has the same variance
σ2, and the means of the p distributions are to be compared on the basis of the
observed values in the samples. This problem was considered for two populations
(p = 2) in Sec. 9.6, and the results to be presented here for an arbitrary value of
p will generalize those presented in Sec. 9.6. Specifically, we shall now make the
following assumption: For i = 1, . . . , p, the random variables Yi1, . . . , Yini
, form a
random sample of ni observations from the normal distribution with mean μi and
variance σ2, and the values of μ1, . . . , μp and σ2 are unknown.
In this problem, the sample sizes n1, . . . , np are not necessarily the same. We
shall let n = p
i=1 ni denote the total number of observations in the p samples, and
we shall assume that all n observations are independent.
Example
11.6.2
Calories in Hot Dogs. In Example 11.6.1, the sample sizes are n1 = 20 (beef), n2 = 17
(meat), n3 = 17 (poultry), and n4 = 9 (specialty). In this case, we let μ1 stand for the
mean calorie count for brands of beef hot dogs, while μ2, μ3, and μ4 will stand for the
mean calorie count for brands of meat, poultry, and specialty hot dogs, respectively.
All calorie counts are assumed to be independent normal random variables with
variance σ2. These data will be analyzed after we develop theANOVAmethodology.
 
It follows from the assumptions we have just made that for j = 1, . . . , ni and
i = 1, . . . , p, we have E(Yij ) = μi and Var(Yij ) = σ2. Since the expectation E(Yij ) of
each observation is equal to one of the p parameters μ1, . . . , μp, it is obvious that
each of these expectations can be regarded as a linear combination of μ1, . . . , μp.
Furthermore, we can regard the n observations Yij as the elements of a single long
756 Chapter 11 Linear Statistical Models
n-dimensional vector Y, which can be written as follows:
Y =
⎡
⎢⎢⎢⎢⎢⎢⎢⎢⎢⎢⎢⎢⎣
Y1 1
...
Y1 n1 ...
Yp 1
...
Yp np
⎤
⎥⎥⎥⎥⎥⎥⎥⎥⎥⎥⎥⎥⎦
. (11.6.1)
This one-way layout therefore satisfies the conditions of the general linear model.
In order to make the one-way layout look exactly like the general linear model, we
could define parameters βi
= μi+1 for i = 0, . . . , p − 1. Then the n × p design matrix,
Z, has one column for each population. The column corresponding to population 1
has n1 1’s followed by n2 + . . . + np 0’s. The column corresponding to population 2
has n1 0’s followed by n2 1’s followed by n3 + . . . + np 0’s, and so on. For example,
using the hot dog data in Example 11.6.2, the Z matrix would be
Z =
⎡
⎢⎢⎢⎢⎢⎢⎢⎢⎢⎢⎢⎢⎢⎢⎢⎢⎢⎢⎢⎢⎢⎢⎣
1 0 0 0
...
1 0 0 0
0 1 0 0
...
0 1 0 0
0 0 1 0
...
0 0 1 0
0 0 0 1
...
0 0 0 1
⎤
⎥⎥⎥⎥⎥⎥⎥⎥⎥⎥⎥⎥⎥⎥⎥⎥⎥⎥⎥⎥⎥⎥⎦
0
20 rows
0
17 rows
0
17 rows
0
9 rows
(11.6.2)
We shall not use the general linear model notation any further in the development
of ANOVA, because the parameters μ1, . . . , μp are more natural.
For i = 1, . . . , p, we shall let Y i+ denote the sample mean of the ni observations
in the ith sample. Thus,
Y i+ = 1
ni
 ni
j=1
Yij . (11.6.3)
Similar logic to that used in the proof of Theorem 11.2.1 can be used to show that
Y i+ is the M.L.E., or least-squares estimator, of μi for i = 1, . . . , p. Also, the M.L.E.
of σ2 is
ˆσ
2 = 1
n
 p
i=1
 ni
j=1
 
Yij
− Y i+
 2
. (11.6.4)
The details are left to Exercise 1.
11.6 Analysis of Variance 757
Partitioning a Sum of Squares
Example
11.6.3
Calories in Hot Dogs. In Examples 11.6.1 and 11.6.2, we notice that the calorie counts
within each type differ quite a bit from each other. We need to be able to quantify
both the variation within type and the variation between types if we are going to try
to address the question of whether or not different types of hot dogs have the same
calorie counts.  
In a one-way layout, we are often interested in testing the hypothesis that the p
distributions from which the samples were drawn are actually the same; that is, we
desire to test the following hypotheses:
H0 : μ1 = . . . = μp,
H1 : The hypothesis H0 is not true.
(11.6.5)
For instance, in Example 11.6.2, the null hypothesis H0 in (11.6.5) would be that the
mean calorie counts for all four types of hot dogs are the same, but it would not
specify what the common value is. The alternative hypothesis H1 would be that at
least two of the means differ, but it would not specify which means differ nor would
it specify by how much the means differ.
Before we develop an appropriate test procedure, we shall carry out some
preparatory algebraic manipulations. First, define
Y++ = 1
n
 p
i=1
 ni
j=1
Yij
= 1
n
 p
i=1
niY i+,
which is the overall average of all n observations.We shall partition the sum of squares
S2
Tot
=
 p
i=1
 ni
j=1
(Yij
− Y++)2 (11.6.6)
into two smaller sums of squares, each of which will be associated with a certain type
of variation among the n observations. Note that S2
Tot/n would be the M.L.E. of σ2 if
we believed that all of the observations came from a single normal distribution rather
than from p different normal distributions. This means that we can interpret S2
Tot as
an overall measure of variation between the n observations. One of the smaller sums
of squares into which we shall partition S2
Tot will measure the variation between the p
different samples, and the other sum of squares will measure the variation between
the observations within each of the samples. The test of the hypotheses (11.6.5) that
we shall develop will be based on the ratio of these two measures of variation. For
this reason, the name analysis of variance has been used to describe this problem and
other related problems.
Theorem
11.6.1
Partitioning the Sum of Squares. Let S2
Tot be as defined in Eq. (11.6.6). Then
S2
Tot
= S2
Resid
+ S2
Betw, (11.6.7)
where
S2
Resid
=
 p
i=1
 ni
j=1
(Yij
− Y i+)2, and S2
Betw
=
 p
i=1
ni(Y i+ − Y++)2.
Furthermore, S2
Resid/σ 2 has the χ2 distribution with n − p degrees of freedom and is
independent of S2
Betw.
758 Chapter 11 Linear Statistical Models
Table 11.16 General form of ANOVA table for one-way layout
Source of Degrees of
variation freedom Sum of squares Mean square
Between samples p − 1 S2
Betw S2
Betw/(p − 1)
Residuals n −p S2
Resid S2
Resid/(n − p)
Total n − 1 S2
Tot
Proof If we consider only the ni observations in sample i, then the sum of squares
for those values can be written as follows:
 ni
j=1
(Yij
− Y++)2 =
 ni
j=1
(Yij
− Y i+)2 + ni(Y i+ − Y++)2. (11.6.8)
It follows from Theorem 8.3.1 that the sum forming the first term on the right side
of Eq. (11.6.8) has the χ2 distribution with ni
− 1 degrees of freedom and that it
is independent of Y i+. Since Y++ is a function of Y 1+, . . . , Y p+, all of which are
independent of the first term on the right side of Eq. (11.6.8), it follows that the two
terms on the right side of Eq. (11.6.8) are independent.
If we now sum each of the terms in Eq. (11.6.8) over the values of i, we obtain
Eq. (11.6.7). Since all the observations in the p samples are independent, the two
terms on the right side of Eq. (11.6.7) are independent. Also, S2
Resid/σ 2 is the sum
of p independent random variables, with the ith one having the χ2 distribution with
ni
− 1 degrees of freedom. Hence, S2
  Resid/σ2 will itself have the χ2 distribution with p
i=1(ni
− 1) = n − p degrees of freedom.
Aswenoted earlier, S2
Tot can be regarded as the total variation of the observations
around their overall mean. Similarly, S2
Resid can be regarded as the total variation of
the observations around their particular sample means, or the total residual variation
within the samples. Also, S2
Betw can be regarded as the total variation of the sample
means around the overall mean, or the variation between the sample means. Thus,
the total variation S2
Tot has been partitioned into two independent components, S2
Resid
and S2
Betw, which represent different types of variations. This partitioning is often
summarized in a table, which is called the ANOVA table for the one-way layout and
is presented here as Table 11.16.
The numbers in the “Mean square” column of Table 11.16 are just the sums of
squares divided by the degrees of freedom. They are used for testing the hypotheses
(11.6.5). The degrees of freedom in the “Between samples” and “Total” rows will
turn out to be degrees of freedom for random variables with χ2 distributions if the
null hypothesis in (11.6.5) is true. We shall see why this is true after we develop an
appropriate test of the hypotheses (11.6.5).
Note: The Residual Mean Square Is the Same as the Unbiased Estimator of σ2 in
the Regression Setting. We began this section by expressing the one-way layout as a
multiple linear regression problem with data vector Y and design matrix Z. Compare
the M.L.E. of σ2, ˆσ 2 in Eq. (11.6.4), to the residual mean square in Table 11.16 to see
that the two differ only in the constant in the denominator. The M.L.E. is S2
Resid/n,
11.6 Analysis of Variance 759
Table 11.17 ANOVA table for Example 11.6.4
Source of Degrees of
variation freedom Sum of squares Mean square
Between samples 3 19,454 6485
Residuals 59 32,995 559.2
Total 62 52,449
while the residual mean square is S2
Resid/(n − p). Recall that this last ratio was called
σ
 2 in Sec. 11.5, and is an unbiased estimator of σ2. (Prove this last fact in Exercise 8.)
Example
11.6.4
Calories in Hot Dogs. The four sample averages in Example 11.6.2 are
Y 1+ = 156.85, Y 2+ = 158.71, Y 3+ = 118.76, Y 4+ = 160.56.
The overall average is Y++ = 147.60. We can now form the ANOVA table in
Table 11.17. We shall test the hypotheses (11.6.5) after we develop an appropriate
test statistic.  
Testing Hypotheses
In order to test the hypotheses (11.6.5), we need a test statistic that will tend to be
larger if H1 is true than it is if H0 is true.We also need to know the distribution of the
test statistic when H0 is true.
Theorem
11.6.2
Suppose that H0 in (11.6.5) is true. Then
U2 =
S2
Betw/(p − 1)
S2
Resid/(n − p)
(11.6.9)
has the F distribution with p − 1 and n − p degrees of freedom.
Proof If all p samples of observations have the same mean, it can be shown (see
Exercise 2) that S2
Betw/σ 2 has the χ2 distribution with p − 1 degrees of freedom.
We have already seen that S2
Betw is independent of S2
Resid, and S2
Resid/σ 2 has the χ2
distribution with n − p degrees of freedom. It therefore follows that when H0 is true,
U2 has the distribution stated in the theorem.
When the null hypothesis H0 is not true, so that at least two of the μi values are
different, then the expectation of the numerator of U2 will be larger than it would
be if H0 were true. (See Exercise 11.) The distribution of the denominator of U2
remains the same regardless of whether or not H0 is true. A sensible level α0 test of
the hypotheses (11.6.5) would then be to reject H0 if U2 ≥ F
−1
p−1,n−p(1− α0), where
F
−1
p−1,n−p is the quantile function for the F distribution with p − 1 and n − p degrees
of freedom.Apartial table ofF distribution quantiles is given in the back of this book.
It can be shown that this test is also the level α0 likelihood ratio test procedure. (See
Exercise 12.)
760 Chapter 11 Linear Statistical Models
Example
11.6.5
Calories in Hot Dogs. Suppose that we desire to test the null hypothesis that all four
types of hot dogs have the same mean calorie count against the alternative hypothesis
that at least two types have different means. The statistic U2 in Eq. (11.6.9) has
the F distribution with 3 and 59 degrees of freedom if the null hypothesis is true.
The observed value of U2 is the ratio of the between samples mean square to the
residual mean square from Table 11.17, namely, 6485/559.2 = 11.60. The p-value
corresponding to this value is 4.5× 10−6, so the null hypothesis would be rejected at
most standard levels.  
Power of the Test If the null hypothesis in (11.6.5) is false, then the statistic U2 in
Eq. (11.6.9) has a distribution known as noncentral F. For more details on the power
function, consult a more advanced text such as Scheff´e (1959, chapter 2). We shall
not discuss the power of ANOVA tests any further.
Analysis of Residuals
Since the one-way layout is a special case of the general linear model, we make the
assumptions of the general linear model when we perform the one-wayANOVAcalculations.
We should also compute residuals and plot them to see if the assumptions
appear reasonable. The residuals are the values eij
= Yij
− ¯ Yi
+, for j = 1, . . . , ni and
i = 1, . . . , p.
Example
11.6.6
Calories in Hot Dogs. Figure 11.22 contains a plot of residuals against the categorical
variable “hot dog type.” Figure 11.23 contains the plot of residuals against normal
quantiles. The points in the normal quantile plot are labeled by the hot dog type.
Several disturbing features appear in these plots. First, there are three residuals with
large negative values. Second, each of the first three samples appears to contain two
distinct subsets, one with low residuals and one with high residuals. There is a gap
between the two subsets in each sample. This suggests that there is another variable
that we haven’t discussed yet but which distinguishes these two subgroups. If we go
back to the reported data (in the original Consumer Reports article), we find that the
weight of each package and the number of hot dogs per package are also reported.
The ratio of these two numbers is the weight of an average hot dog. Figure 11.24
contains a plot of residuals against average hot dog weight. Notice that most of the
large residuals come from the larger (heavier) hot dogs and the smaller residuals tend
to come from the smaller (lighter) hot dogs. Perhaps a better analysis would have set
Y equal to calories per ounce rather than calories per hot dog.  
Figure 11.22 Plot of residuals
against hot dog type.
Type of hot dog
240
220
20
Beef Meat Poultry Specialty
Residuals
11.6 Analysis of Variance 761
Figure 11.23 Plot of residuals
against normal quantiles.
The points are labeled by the
hot dog type.
Normal quantiles
22 21 1 2
240
220
20
Residuals
Beef
Meat
Poultry
Specialty
Figure 11.24 Plot of residuals
against average hot dog
weight.The points are labeled
by the hot dog type.
Weight of average hot dog
1.2 1.4 1.6 1.8 2.0
240
220
20
Beef
Meat
Poultry
Specialty
Residuals
Summary
The one-way layout can be considered as a general linear model, and we can use
the methods of Sec. 11.5 to fit the model. However, the hypotheses of most interest
in the one-way layout are (11.6.5). These hypotheses concern more than one linear
combination of the regression coefficients, and they are not a special case of the
hypotheses that we learned how to test in Sec. 11.5. To test these new hypotheses,
we developed the analysis of variance (ANOVA) and the ANOVA table. The test
statistic is U2 in Eq. (11.6.9), which has the F distribution with p − 1 and n − p
degrees of freedom if H0 is true. The level α0 test of H0 is to reject H0 if U2 is greater
than the 1− α0 quantile of the appropriate F distribution.
Exercises
1. In a one-way layout, show that Y i+ is the least-squares
estimator of μi by showing that the ith coordinate of the
vector (Z Z)
−1Z Y is Y i+ for i = 1, . . . , p.
2. Assume that H0 in (11.6.5) is true; that is, all observations
have the same mean μ. Prove that S2
Betw/σ 2 has the
χ2 distribution with p − 1 degrees of freedom. Hint: Let
X =
⎛
⎝
n
1/2
1 (Y 1+ − μ)/σ 2
...
n1/2
p (Y p+ − μ)/σ 2
⎞
⎠,
then use the same method that was used in Sec. 8.3 to find
the distribution of the sample variance. You may use the
following fact without proving it:
Let u = ((n1/n)1/2, . . . , (np/n)1/2). Then there exists
an orthogonal matrix A whose first row is u.
762 Chapter 11 Linear Statistical Models
3. Show that
 p
i=1
ni(Y i+ − Y++)2 =
 p
i=1
niY
2
i+ − nY
2
++.
4. Specimens of milk from a number of dairies in three
different districts were analyzed, and the concentration
of the radioactive isotope strontium-90 was measured in
each specimen. Suppose that specimens were obtained
from four dairies in the first district, from six dairies in the
second district, and from three dairies in the third district,
and that the results measured in picocuries per liter were
as follows:
District 1: 6.4, 5.8, 6.5, 7.7,
District 2: 7.1, 9.9, 11.2, 10.5, 6.5, 8.8,
District 3: 9.5, 9.0, 12.1.
a. Assuming that the variance of the concentration of
strontium-90 is the same for the dairies in all three
districts, determine the M.L.E. of the mean concentration
in each of the districts and the M.L.E. of the
common variance.
b. Test the hypothesis that the three districts have identical
concentrations of strontium-90.
5. A random sample of 10 students was selected from the
senior class at each of four large high schools, and the score
of each of these 40 students on a certain mathematics examination
was observed. Suppose that for the 10 students
from each school, the sample mean and the sample variance
of the scores were as shown in Table 11.18. Test the
hypothesis that the senior classes at all four high schools
would perform equally well on this examination. Discuss
carefully the assumptions that you are making in carrying
out this test.
Table 11.18 Data for Exercise 5
School Sample mean Sample variance
1 105.7 30.3
2 102.0 54.4
3 93.5 25.0
4 110.8 36.4
6. Suppose that a random sample of size n is taken from
the normal distribution with mean μ and variance σ2.
Before the sample is observed, the random variables are
divided into p groups of sizes n1, . . . , np, where ni
≥ 2
for i = 1, . . . , p and
 p
i=1 ni
= n. For i = 1, . . . , p, let Qi
denote the sum of the squares of the deviations of the
ni observations in the ith group from the sample mean
of those ni observations. Find the distribution of the sum
Q1 + . . . + Qp and the distribution of the ratio Q1/Qp.
7. Verify that the t test presented in Sec. 9.6 for comparing
the means of two normal distributions is the same as the
test presented in this section for the one-way layout with
p = 2 by verifying that if U is defined by Eq. (9.6.3), then
U2 is equal to the expression given in Eq. (11.6.9).
8. Show that in a one-way layout the following statistic is
an unbiased estimator of σ2:
1
n − p
 p
i=1
 ni
j=1
(Yij
− Y i+)2.
9. In a one-way layout, show that for all values of i, i
 ,
and j , where j = 1, . . . , ni , i = 1, . . . , p, and i
  = 1, . . . , p,
the following three random variables W1, W2, and W3 are
uncorrelated with each other:
W1 = Yij
− Y i+, W2 = Y i
 + − Y++, W3 = Y++.
10. In 1973, the President of Texaco, Inc., made a statement
to a U.S. Senate subcommittee concerned with air
and water pollution. The committee was concerned with,
among other things, the noise levels associated with automobile
filters. He cited the data in Table 11.19 from a
study that included vehicles of three different sizes.
Table 11.19 Data for Exercise 10
Vehicle size Noise values
Small 810, 820, 820, 835, 835, 835
Medium 840, 840, 840, 845, 855, 850
Large 785, 790, 785, 760, 760, 770
a. Construct the ANOVA table for these data.
b. Compute the p-value for the null hypothesis that all
three sizes of vehicles produce the same level of noise
on average.
11. Assume that the null hypothesis H0 in (11.6.5) is false.
Prove that the expected value of S2
Betw is (p − 1)σ 2 +
 p
i=1 ni(μi
− μ)2, where μ = 1
n
 p
i=1 niμi .
12. Prove that the level α0 likelihood ratio test of hypotheses
(11.6.5) in the one-way layout is to reject H0 if U2 >
F
−1
p−1,n−p(1− α0). Hint: First, partition
 ni
j=1(yij
− μi)2 in
a manner similar to Eq. (11.6.8). Then, replace Y++ by a
constant, say, μ, in the formula for S2
Tot, and partition the
result in a manner similar to Eq. (11.6.7). There will be
one extra term.
13. Suppose that the null hypothesis in (11.6.5) is true.
Prove that S2
Tot/σ 2 has the χ2 distribution with n − 1 degrees
of freedom.
11.7 The Two-Way Layout 763
14. A popular alternative parameterization of the oneway
layout is the following. Let μ = 1
n
 p
i=1 niμi , and define
αi
= μi
− μ. This makes E(Yij ) = μ + αi .
a. Prove that
 p
i=1 αi
= 0.
b. Prove that the M.L.E. of αi is Y i+ − Y++.
c. Prove that the null hypothesis H0 in (11.6.5) is equivalent
to α1 = . . . = αp
= 0.
d. Prove that the mean of S2
Betw is (p − 1)σ 2 +
 p
i=1 niα2
i .
  11.7 The Two-Way Layout
In Sec. 11.6, we learned how to analyze several samples that differed in some
characteristic. For example, we analyzed data collected from hot dogs that differed
by the type of meat from which they were made. Suppose that, in addition to
differing by the type of meat, the hot dogs had also differed by being labeled either
“low fat” or not. This would have given us two different characteristics to form the
basis for comparisons. In this section, we shall study howto analyze data consisting
of observations that differ on two characteristics.
The Two-Way Layout with One Observation in Each Cell
Example
11.7.1
Radioactive Isotope in Milk. Suppose that in an experiment to measure the concentration
of a certain radioactive isotope in milk, specimens of milk are obtained from four
different dairies, and the concentration of the isotope in each specimen is measured
by three different methods. If we let Yij denote the measurement that is made for the
specimen from the ith dairy by using the jth method, for i = 1, 2, 3, 4 and j = 1, 2, 3,
then in this example there will be a total of 12 measurements. There are two main
questions of interest in this example. The first is whether the concentration of the
isotope is the same in the milk of all four dairies. The second question is whether the
three different methods produce concentration measurements that appear to differ. 
A problem of the type in Example 11.7.1, in which the value of the random
variable being observed is affected by two factors, is called a two-way layout. In
the general two-way layout, there are two factors, which we shall call A and B. We
shall assume that there are I possible different values, or different levels, of factor
A, and that there are J possible different values, or different levels, of factor B.
For i = 1, . . . , I and j = 1, . . . , J, an observation Yij of the variable being studied
is obtained when factor A has the value i and factor B has the value j. If the IJ
observations are arranged in a matrix as in Table 11.20, then Yij is the observation in
the (i, j ) cell of the matrix.
We shall continue to make the assumptions of the general linear model for the
two-way layout. Thus, we shall assume that all the observations Yij are independent,
each observation has a normal distribution, and all the observations have the same
variance σ2. In this section, we specialize the assumption about the mean E(Yij ) as
follows: We shall assume not only that E(Yij ) depends on the values i and j of the
two factors, but also that there exist numbers θ1, . . . , θI and ψ1, . . . , ψJ such that
E(Yij ) = θi
+ ψj for i = 1, . . . , I and j = 1, . . . , J. (11.7.1)
Thus, Eq. (11.7.1) states that the value of E(Yij ) is the sum of the following two
effects: an effect θi due to factor A having the value i, and an effect ψj due to factor B
764 Chapter 11 Linear Statistical Models
Table 11.20 Generic data for two-way layout
Factor B
Factor A 1 2 . . . J
1 Y11 Y12 . . . Y1J
2 Y21 Y22 Y2J ...
I YI1 YI2 YIJ
having the value j . For this reason, the assumption that E(Yij ) has the form given in
Eq. (11.7.1) is called an assumption of additivity of the effects of the factors.
The meaning of the assumption of additivity can be clarified by the following
example. Consider the sale of I different magazines at J different newsstands. Suppose
that a particular newsstand sells on the average 30 more copies per week of
magazine 1 than of magazine 2. Then by the assumption of additivity, it must also be
true that each of the other J − 1 newsstands sells on the average 30 more copies per
week of magazine 1 than of magazine 2. Similarly, suppose that the sales of a particular
magazine are on the average 50 more copies per week at newsstand 1 than at
newsstand 2. Then by the assumption of additivity, it must also be true that the sales
of each of the other I − 1 magazines are on the average 50 more copies per week at
newsstand 1 than at newsstand 2. The assumption of additivity is a very restrictive
assumption because it does not allow for the possibility that a particular magazine
may sell unusually well at some particular newsstand. In Sec. 11.8, we shall consider
models in which we do not make the assumption of additivity.
Even though we assume in the general two-way layout that the effects of the
factors A and B are additive, the numbers θi and ψj that satisfy Eq. (11.7.1) are
not uniquely defined. We can add an arbitrary constant c to each of the numbers
θ1, . . . , θI and subtract the same constant c from each of the numbers ψ1, . . . , ψJ
without changing the value of E(Yij ) for any of the IJ observations. Hence, it does not
make sense to try to estimate the value of θi or ψj from the given observations, since
neither θi nor ψj is uniquely defined. In order to avoid this difficulty, we shall express
E(Yij ) in terms of different parameters. The following assumption is equivalent to the
assumption of additivity.
We shall assume that there exist numbers μ, α1, . . . , αI , and β1, . . . , βJ such that
 I
i=1
αi
= 0 and
 J
j=1
βj
= 0, (11.7.2)
and
E(Yij ) = μ + αi
+ βj for i = 1, . . . , I and j = 1, . . . , J. (11.7.3)
There is an advantage in expressing E(Yij ) in this way. If the values of E(Yij ) for
i = 1, . . . , I and j = 1, . . . , J are a set of numbers that satisfy Eq. (11.7.1) for some
set of values of θ1, . . . , θI and ψ1, . . . , ψJ , then there exists a unique set of values of
μ, α1, . . . , αI , and β1, . . . , βJ that satisfy Eqs. (11.7.2) and (11.7.3) (see Exercise 3).
The parameter μ is called the overall mean, or the grand mean, since it follows
from Eqs. (11.7.2) and (11.7.3) that
11.7 The Two-Way Layout 765
μ = 1
IJ
 I
i=1
 J
j=1
E(Yij ). (11.7.4)
The parameters α1, . . . , αI are called the effects of factor A, and the parameters
β1, . . . , βJ are called the effects of factor B.
It follows from Eq. (11.7.2) that αI
=− I−1
i=1 αi and βJ
=− J−1
j=1 βj . Hence, each
expectation E(Yij ) in Eq. (11.7.3) can be expressed as a particular linear combination
of the I + J − 1parametersμ, α1, . . . , αI−1, and β1, . . . , βJ−1.Therefore, ifwe regard
the IJ observations as elements of a single long IJ-dimensional vector, then the twoway
layout satisfies the conditions of the general linear model. In a practical problem,
however, it is not convenient to actually replace αI and βJ with their expressions in
terms of the other αi ’s and βj ’s, because this replacement would destroy the symmetry
that is present in the experiment among the different levels of each factor.
Estimating the Parameters
The following result is straightforward, but tedious, to prove.
Theorem
11.7.1
Define
Y i+ = 1
J
 J
j=1
Yij for i = 1, . . . , I,
Y+j
= 1
I
 I
i=1
Yij for j = 1, . . . , J, (11.7.5)
Y++ = 1
IJ
 I
i=1
 J
j=1
Yij
= 1
I
 I
i=1
Y i+ = 1
J
 J
j=1
Y+j .
Then the M.L.E.’s (and least-squares estimators) of μ, α1, . . . , αI , and β1, . . . , βJ
are as follows:
ˆμ
= Y++,
ˆα
i
= Y i+ − Y++ for i = 1, . . . , I, (11.7.6)
ˆ βj
= Y+j
− Y++ for j = 1, . . . , J.
The M.L.E. of σ2 will be
ˆσ2 =
1
IJ
 I
i=1
 J
j=1
(Yij
− ˆμ− ˆαi
− ˆ βj )2 = 1
IJ
 I
i=1
 J
j=1
(Yij
− ˆ Yij )2.
It is easily verified (see Exercise 6) that
 I
i=1
ˆα
i
= J
j=1
ˆ βj
= 0; E( ˆ μ) = μ; E(ˆαi) = αi
for i = 1, . . . , I; and E( ˆ βj ) = βj for j = 1, . . . , J . Because E(Yij ) = μ + αi
+ βj , the
M.L.E. of E(Yij ) is
ˆ Yij
= Y i+ + Y+j
− Y++ = ˆμ+ ˆαi
+ ˆ βj ,
which is also called the fitted value for Yij .
Example
11.7.2
Radioactive Isotope in Milk. Consider again Example 11.7.1. Suppose that the concentrations
of the radioactive isotope measured in picocuries per liter by three different
methods in specimens of milk from four dairies are as shown in Table 11.21. From
766 Chapter 11 Linear Statistical Models
Table 11.21 Data for Example 11.7.2
Method
Dairy 1 2 3
1 6.4 3.2 6.9
2 8.5 7.8 10.1
3 9.3 6.0 9.6
4 8.8 5.6 8.4
Table 11.22 Fitted values for observations in Example 11.7.2
Method
Dairy 1 2 3
1 6.2 3.6 6.7
2 9.5 6.9 10.0
3 9.0 6.4 9.5
4 8.3 5.7 8.8
Table 11.21, the row averages are Y 1+ = 5.5, Y 2+ = 8.8, Y 3+ = 8.3, and Y 4+ = 7.6; the
column averages are Y+1 = 8.25, Y+2 = 5.65, and Y+3 = 8.75; and the average of all
the observations is Y++ = 7.55. Hence, by Eq. (11.7.6), the values of the M.L.E.’s
are ˆμ = 7.55, ˆα1=−2.05, ˆα2 = 1.25, ˆα3 = 0.75, ˆα4 = 0.05, ˆ β1 = 0.70, ˆ β2 =−1.90, and
ˆ β3 = 1.20.
The fitted values ˆ Yij for all of the observations are given in Table 11.22. By
comparing the observed values in Table 11.21 with the fitted values in Table 11.22,
we see that the differences between corresponding terms are generally small. These
small differences indicate that the model used in the two-way layout, which assumes
the additivity of the effects of the two factors, provides a good fit for the observed
values. Finally, it is found from Tables 11.21 and 11.22 that
 I
i=1
 J
j=1
(Yij
− ˆ Yij )2 = 2.74.
Hence, by Theorem 11.7.1, ˆσ 2 = 2.74/12 = 0.228.  
Partitioning the Sum of Squares
We shall partition the total sum of squares in much the same way that we did in
Sec. 11.6. Begin with
S2
Tot
=
 I
i=1
 J
j=1
(Yij
− Y++)2. (11.7.7)
11.7 The Two-Way Layout 767
We shall now partition the sum of squares S2
Tot into three smaller sums of squares.
Each of these smaller sums of squares will be associated with a certain type of
variation among the observations Yij . Each of them (divided by σ2) will have a χ2
distribution if certain null hypotheses are true, and they will be mutually independent
whether or not the null hypotheses are true. Therefore, just as in the one-way layout,
we can construct tests of certain null hypotheses based on an analysis of variance,
that is, on an analysis of these different types of variation.
Theorem
11.7.2
Partitioning the Sum of Squares. Let S2
Tot be as defined in Eq. (11.7.7). Then
S2
Tot
= S2
Resid
+ S2
A
+ S2
B, (11.7.8)
where
S2
Resid
=
 I
i=1
 J
j=1
(Yij
− Y i+ − Y+j
+ Y++)2,
S2
A
= J
 I
i=1
(Y i+ − Y++)2,
S2
B
= I
 J
j=1
(Y+j
− Y++)2.
Furthermore, S2
Resid/σ 2 has the χ2 distribution with (I − 1)(J − 1) degrees of freedom,
and the three component sums of squares are mutually independent.
Proof We shall begin by rewriting S2
Tot as follows:
S2
Tot
=
 I
i=1
 J
j=1
[(Yij
− Y i+ − Y+j
+ Y++) + (Y i+ − Y++) + (Y+j
− Y++)]2. (11.7.9)
By expanding the right side of Eq. (11.7.9), we obtain (see Exercise 8) Eq. (11.7.8).
It can be shown that the random variables S2
Resid, S2A
, and S2B
are independent.
(See Exercise 9 for a related result.) Furthermore, it can be shown that S2
Resid has the
χ2 distribution with IJ − (I + J − 1) = (I − 1)(J − 1) degrees of freedom.
It is easy to see that S2
A measures the variation of the sample means for the different
levels of factor A around the overall sample mean. Similarly, S2
B measures the
variation of the sample means for the different levels of factor B around the overall
sample mean. By using relations (11.7.6), we can rewrite S2
Resid as
S2
Resid
=
 I
i=1
 J
j=1
(Yij
− ˆμ− ˆαi
− ˆ βj )2 =
 I
i=1
 J
j=1
(Yij
− ˆ Yij )2.
This makes it clear that S2
Resid measures the residual variation, that is, the variation
between the observations not explained by the model. The partitioning is summarized
in Table 11.23, which is the ANOVA table for the two-way layout. As in the
case of the one-way layout, the degrees of freedom will turn out to be degrees of
freedom for various χ2 random variables when certain null hypotheses are true.
768 Chapter 11 Linear Statistical Models
Table 11.23 General ANOVA table for two-way layout
Source of Degrees of
variation freedom Sum of squares Mean square
FactorA I− 1 S2
A S2
A/(I − 1)
FactorB J− 1 S2
B S2
B/(J − 1)
Residuals (I − 1)(J − 1) S2
Resid S2
Resid/[(I − 1)(J − 1)]
Total IJ − 1 S2
Tot
Table 11.24 ANOVA table Example 11.7.3
Source of Degrees of
variation freedom Sum of squares Mean square
Dairy 3 18.99 6.33
Method 2 22.16 11.08
Residuals 6 2.74 0.4567
Total 11 43.89
Example
11.7.3
Radioactive Isotope in Milk. Using the estimates calculated in Example 11.7.2, we
can compute the ANOVA table in Table 11.24. After we develop appropriate test
statistics,we can useTable 11.24 to test hypotheses about the effects of the two factors.
 
Testing Hypotheses
Example
11.7.4
Radioactive Isotope in Milk. Consider again the situation described in Example 11.7.2
involving four dairies and three measurement methods. We might be interested in
testing that, for each of the three methods of measurement, the distributions of concentration
of isotope do not differ from one dairy to the next. If we regard the dairy
as factor A and the measurement method as factor B, then the hypothesis that αi
= 0
for i = 1, . . . , I means that for each method of measurement, the concentration of
the isotope has the same distribution for all four dairies. In other words, there are
no differences among the dairies. Alternatively, we might be interested in testing the
hypothesis that, for each dairy, the three methods of measurement all produce the
same distribution of concentration of isotope. For this case, the hypothesis that βj
= 0
for j = 1, . . . , J means that for each dairy, the three methods of measurement yield
the same distribution for the concentration of the isotope. However, this hypothesis
does not state that regardless of which of the three different methods is applied to
a particular specimen of milk, the same value would be obtained. Because of the
inherent variability of the measurements, the hypothesis states only that the values
yielded by the three methods have the same normal distribution.  
11.7 The Two-Way Layout 769
In a problem involving a two-way layout, we are often interested in testing the
hypothesis that one or both of the factors has no effect on the distribution of the
observations. In other words, we are often interested either in testing the hypothesis
that all of the effects α1, . . . , αI of factor A are equal to 0 or in testing the hypothesis
that all of the effects β1, . . . , βJ of factor B are equal to 0 or in testing that all of the
αi and βj are 0. For the remainder of the discussion of testing hypotheses, it will be
useful to define
σ
  =
 
S2
Resid
(I − 1)(J − 1)
 1/2
. (11.7.10)
Theorem
11.7.3
Consider the following hypotheses:
H0 : αi
= 0 for i = 1, . . . , I,
H1 : The hypothesis H0 is not true.
(11.7.11)
If H0 is true, then the following random variable has the F distribution with I − 1
and (I − 1)(J − 1) degrees of freedom:
U2
A
=
S2
A
(I − 1)σ
 2
. (11.7.12)
Similarly, suppose next that the following hypotheses are to be tested:
H0 : βj
= 0 for j = 1, . . . , J,
H1 : The hypothesis H0 is not true.
(11.7.13)
When the null hypothesisH0 is true, the following statistic has the F distribution with
J − 1 and (I − 1)(J − 1) degrees of freedom:
U2
B
=
S2
B
(J − 1)σ
 2
. (11.7.14)
Finally, suppose that the following hypotheses are to be tested:
H0 : αi
= 0 for i = 1, . . . , I, and βj
= 0 for j = 1, . . . , J,
H1 : The hypothesis H0 is not true.
(11.7.15)
When the null hypothesisH0 is true, the following statistic has the F distribution with
I + J − 2 and (I − 1)(J − 1) degrees of freedom:
U2
A+B
=
S2
A
+ S2
B
(I + J − 2)σ
 2
. (11.7.16)
For each case above, a level α0 test of the hypotheses is to reject H0 if the corresponding
statistic (U2
A, U2
B, or U2
A+B) is at least as large as the 1− α0 quantile of the
correpsonding F distribution.
Proof We shall prove the claim for hypotheses (11.7.11). The proof for hypotheses
(11.7.13) is virtually identical. The proof for hypotheses (11.7.15) is similar and is left
for Exercise 16. Since
 J
j=1 βj
= 0, we conclude that Y i+ has the normal distribution
with mean μ and variance σ2/J for each i = 1, . . . , I. Since the Y i+ are independent
and Y++ is the average of Y 1+, . . . , Y I+, Theorem 8.3.1 says that the following
770 Chapter 11 Linear Statistical Models
random variable has the χ2 distribution with I − 1 degrees of freedom:
J
σ2
 I
i=1
(Y i+ − Y++)2 =
S2
A
σ2
.
Since S2
Resid/σ 2 has the χ2 distribution with (I − 1)(J − 1) degrees of freedom, we
now conclude that
S2
A/(I − 1)
S2
Resid/[(I − 1)(J − 1)]
(11.7.17)
has the F distribution with I − 1 and (I − 1)(J − 1) degrees of freedom. It is easy to
see that the random variable in (11.7.17) is the same as U2
A defined in Eq. (11.7.12).
Let F
−1
I−1,(I−1)(J−1)(1− α0) denote the 1− α0 quantile of the F distribution with
I − 1 and (I − 1)(J − 1) degrees of freedom. Let δ be the test that rejects H0 if
U2
A
≥ F
−1
I−1,(I−1)(J−1)(1− α0), and let π(θ|δ) be its power function for each parameter
vector θ. Since U2
A has the stated F distribution for all parameter vectors θ that are
consistent with H0, it follows that for each such θ, π(θ|δ) = α0, and δ is a level α0 test.
Notice that U2
A in Theorem 11.7.3 is the ratio of the factor A mean square to the
residuals mean square in Table 11.23. When the null hypothesis H0 in (11.7.12) is
not true, the value of αi
= E(Y i+ − Y++) is not 0 for at least one value of i. Hence,
the expectation of the numerator of U2
A will be larger than it would be when H0 is
true. (See Exercise 1.) The distribution of the denominator of U2
A remains the same
regardless of whether H0 is true. It can also be shown that the test in Theorem 11.7.3
is also the level α0 likelihood ratio test procedure for the hypotheses (11.7.11).
Example
11.7.5
Testing for Differences among the Dairies. Suppose now that it is desired to use the
observed values in Table 11.21 to test the hypothesis that there are no differences
among the dairies, that is, to test the hypotheses (11.7.11). In this example, the statistic
U2
A defined by Eq. (11.7.12) has the F distribution with three and six degrees of
freedom. Using the ANOVA table in Table 11.24, we find that U2
A
= 6.33/0.4567 =
13.86.The correspondingp-value is smaller than 0.025, the smallest value in the tables
in this book. Using statistical software, we compute the p-value to be about 0.004.
So the hypothesis that there are no differences among the dairies would be rejected
at all levels of significance of 0.004 or more.  
Example
11.7.6
Testing for Differences among the Methods of Measurement. Suppose next that it is
desired to use the observed values in Table 11.21 to test the hypothesis that each of
the effects of the different methods of measurement is equal to 0, that is, to test the
hypotheses (11.7.13). In this example, the statistic U2
B defined by Eq. (11.7.14) has
the F distribution with two and six degrees of freedom. Using the ANOVA table in
Table 11.24, we find that U2
B
= 11.08/0.4567 = 24.26. The p-value corresponding to
this observation is about 0.001, so the hypothesis that there are no differences among
the methods would be rejected at all levels of significance greater than 0.001.  
Summary
The two-way layout can be considered as a general linear model, but the hypotheses
of interest concern more than one linear combination of the regression coefficients.
AnANOVAtable was developed for the two-way layout that can be used for forming
test statistics for various hypotheses. When we have only one observation at each
11.7 The Two-Way Layout 771
combination of factor levels,we assume that the effects of the two factors are additive.
Then we can test the two null hypotheses that each of the two factors make no
difference to the means of the observations. These tests make use of the test statistics
U2
A in Eq. (11.7.12) and U2
B in Eq. (11.7.14). If the corresponding null hypotheses are
true, each of these statistics has an F distribution.
Exercises
1. Suppose that the null hypothesisH0 in (11.7.11) is false.
Show that E(S2
A) = (I − 1)σ 2 + J
 I
i=1 α2
i .
2. Consider a two-way layout in which the values of E(Yij )
for i = 1, . . . , I and j = 1, . . . , J are as given in each of
the following four matrices. For each matrix, state whether
the effects of the factors are additive.
a.
Factor B
Factor A 1 2
1 5 7
2 10 14
b.
Factor B
Factor A 1 2
1 3 6
2 4 7
c.
Factor B
Factor A 1 2 3 4
1 3 −1 0 3
2 8 4 5 8
3 4 0 1 4
d.
Factor B
Factor A 1 2 3 4
1 1 2 3 4
2 2 4 6 8
3 3 6 9 12
3. Show that if the effects of the factors in a two-way
layout are additive, then there exist unique numbers μ,
α1, . . . , αI , and β1, . . . , βJ that satisfy Eqs. (11.7.2) and
(11.7.3). Hint: Let μ be the average of all θi
+ ψj values,
let αi equal θi minus the average of the θi ’s, and similarly
for βj .
4. Suppose that in a two-way layout, with I = 2 and J = 2,
the values of E(Yij ) are as given in part (b) of Exercise 2.
Determine the values of μ, α1, α2, β1, and β2 that satisfy
Eqs. (11.7.2) and (11.7.3).
5. Suppose that in a two-way layout, with I = 3 and J = 4,
the values of E(Yij ) are as given in part (c) of Exercise 2.
Determine the values of μ, α1, α2, α3, and β1, . . . , β4 that
satisfy Eqs. (11.7.2) and (11.7.3).
6. Verify that if ˆμ, ˆαi , and ˆ βj are defined by Eq. (11.7.6),
then
 I
i=1, ˆαi
=
 J
j=1
ˆ βj
= 0; E( ˆ μ) = μ; E(ˆαi) = αi for
i = 1, . . . , I; and E( ˆ βj ) = βj for j = 1, . . . , J .
7. Show that if ˆμ, ˆαi , and ˆ βj are defined by Eq. (11.7.6),
then
Var(μˆ ) = 1
IJ
σ2,
Var(ˆαi) = I − 1
IJ
σ2 for i = 1, . . . , I,
Var( ˆ βj ) = J − 1
IJ
σ2 for j = 1, . . . , J.
8. Show that the right sides of Eqs. (11.7.9) and (11.7.8)
are equal.
9. Show that in a two-way layout, for all values of i, j ,
i
 , and j
  (i and i
  = 1, . . . , I; j and j
  = 1, . . . , J), the
following four random variables W1, W2, W3, and W4 are
uncorrelated with one another:
W1 = Yij
− Y i+ − Y+j
+ Y++,
W2 = Y i
 + − Y++, W3 = Y+j
  − Y++,
W4 = Y++.
10. Show that
 I
i=1
(Y i+ − Y++)2 =
 I
i=1
Y
2
i+ − IY
2
++
and
 J
j=1
(Y+j
− Y++)2 =
 J
j=1
Y
2
+j
− J Y
2
++.
772 Chapter 11 Linear Statistical Models
11. Show that
 I
i=1
 J
j=1
(Yij
− Y i+ − Y+j
+ Y++)2
=
 I
i=1
 J
j=1
Y 2
ij
− J
 I
i=1
Y
2
i+ − I
 J
j=1
Y
2
+j
+ IJY
2
++.
12. In a study to compare the reflective properties of various
paints and various plastic surfaces, three different
types of paint were applied to specimens of five different
types of plastic surfaces. Suppose that the observed results
in appropriate coded units were as shown in Table 11.25.
Determine the values of ˆμ, ˆα1, ˆα2, ˆα3, and ˆ β1, . . . , ˆ β5.
Table 11.25 Data for Exercises 12–15
Type of surface
Type of paint 1 2 3 4 5
1 14.5 13.6 16.3 23.2 19.4
2 14.6 16.2 14.8 16.8 17.3
3 16.2 14.0 15.5 18.7 21.0
13. For the conditions of Exercise 12 and the data in
Table 11.25, determine the value of the least-squares
estimate of E(Yij ) for i = 1, 2, 3, and j = 1, . . . , 5, and
determine the value of ˆσ 2.
14. For the conditions of Exercise 12 and the data in
Table 11.25, test the hypothesis that the reflective properties
of the three different types of paint are the same.
15. For the conditions of Exercise 12 and the data in
Table 11.25, test the hypothesis that the reflective properties
of the five different types of plastic surfaces are the
same.
16. Prove the claim in Theorem 11.7.3 about the distribution
of U2
A+B.
  11.8 The Two-Way Layout with Replications
Suppose that we obtain more than one observation in each cell of a two-way layout.
In addition to testing hypotheses about the separate effects of the two factors, we
can also test the hypothesis that the additivity assumption (11.7.3) holds.However,
the interpretations of the separate effects of the two factors are more complicated
if the additivity assumption fails. When the additivity assumption fails, we say that
there is interaction between the two factors.
The Two-Way Layout with K Observations in Each Cell
Example
11.8.1
Gasoline Consumption. Suppose that an experiment is carried out by an automobile
manufacturer to investigate whether a certain device, installed on an automobile,
affects the amount of gasoline consumed by the automobile. The manufacturer produces
three different models of automobiles, namely, a compact model, an intermediate
model, and a standard model. Five cars of each model, which were equipped
with this device, were driven over a fixed route through city traffic, and the gasoline
consumption of each car was measured. Also, five cars of each model, which were
not equipped with this device, were driven over the same route, and the gasoline
consumption of each of these cars was measured. The results, in liters of gasoline
consumed, are given in Table 11.26.
The same sorts of questions that arose in Sec. 11.7 arise here. For example, are
the mean gasoline consumptions different for cars with and without the device? Are
the mean gasoline consumptions different for the three car models? An additional
question can be addressed in an example like this in which there are multiple obser11.8
The Two-Way Layout with Replications 773
Table 11.26 Data for Example 11.8.1
Compact Intermediate Standard
model model model
Equipped with device 8.3 9.2 11.6
8.9 10.2 10.2
7.8 9.5 10.7
8.5 11.3 11.9
9.4 10.4 11.0
Not equipped with device 8.7 8.2 12.4
10.0 10.6 11.7
9.7 10.1 10.0
7.9 11.3 11.1
8.4 10.8 11.8
vations under each combination of factors.We can ask whether the effect (if any) of
the device is different for the different car models.  
We shall continue to consider problems ofANOVAinvolving a two-way layout.Now,
however, instead of having just a single observation Yij for each combination of i
and j , we shall have K independent observations Yij k for k = 1, . . . , K. In other
words, instead of having just one observation in each cell of Table 11.20, we have
K i.i.d. observations. The K observations in each cell are obtained under similar
experimental conditions and are called replications.The total number of observations
in this two-way layout with replications is IJK. We continue to assume that all the
observations are independent, each observation has a normal distribution, and all
the observations have the same variance σ2.
We shall let θij denote the mean of each of the K observations in the (i, j ) cell.
Thus, for i = 1, . . . , I; j = 1, . . . , J ; and k = 1, . . . , K, we have
E(Yij k) = θij . (11.8.1)
In a two-way layout with replications, we shall no longer assume, as we did in
Sec. 11.7, that the effects of the two factors are additive. Here we can assume that
the expectations θij are arbitrary numbers. As we shall see later in this section, we
can then test the hypothesis that the effects are additive.
It is easy to verify that the M.L.E., or least-squares estimator, of θij is simply the
sample mean of the K observations in the (i, j ) cell. Thus,
ˆ θij
= 1
K
 K
k=1
Yij k
= Y ij+. (11.8.2)
The M.L.E. of σ2 is therefore
ˆσ
2 = 1
IJK
 I
i=1
 J
j=1
 K
k=1
(Yij k
− Y ij+)2. (11.8.3)
774 Chapter 11 Linear Statistical Models
In order to identify and discuss the effects of the two factors, and to examine
the possibility that these effects are additive, it is helpful to replace the parameters
θij , for i = 1, . . . , I and j = 1, . . . , J, with a new set of parameters μ, αi , βj , and γij .
These new parameters are defined by the following relations:
θij
= μ + αi
+ βj
+ γij for i = 1, . . . , I and j = 1, . . . , J, (11.8.4)
and
 I
i=1
αi
= 0,
 J
j=1
βj
= 0,
 I
i=1
γij
= 0 for j = 1, . . . , J, (11.8.5)
 J
j=1
γij
= 0 for i = 1, . . . , I.
It can be shown (see Exercise 1) that corresponding to each set of numbers θij for
i = 1, . . . , I and j = 1, . . . , J, there exist unique numbersμ, αi , βj , and γij that satisfy
Eqs. (11.8.4) and (11.8.5).
The parameter μ is called the overall mean or the grand mean. The parameters
α1, . . . , αI are called the main effects of factor A, and the parameters β1, . . . , βJ
are called the main effects of factor B. The parameters γij , for i = 1, . . . , I and
j = 1, . . . , J, are called the interactions. It can be seen from Eqs. (11.8.1) and (11.8.4)
that the effects of the factors A and B are additive if and only if all the interactions
vanish, that is, if and only if γij
= 0 for every combination of values of i and j .
The notation that has been developed in Sections 11.6 and 11.7 will again be
used here. We shall replace a subscript of Yij k with a plus sign to indicate that we
have summed the values of Yij k over all possible values of that subscript. If we have
made two or three summations, we shall use two or three plus signs. We shall then
place a bar over Y to indicate that we have divided this sum by the number of terms
in the summation and have thereby obtained an average of the values of Yij k for the
subscript or subscripts involved in the summation. For example,
Y ij+ = 1
K
 K
k=1
Yij k,
Y+j+ = 1
IK
 I
i=1
 K
k=1
Yij k,
and Y+++ denotes the average of all IJK observations.
Similar logic to that used in the proof of Theorem 11.2.1 can be used to prove
the following result. The details are left to Exercises 2 and 5).
Theorem
11.8.1
The M.L.E.’s (and least-squares estimators) of μ, αi , and βj are as follows:
ˆμ
= Y+++,
ˆα
i
= Y i++ − Y+++ for i = 1, . . . , I, (11.8.6)
ˆ βj
= Y+j+ − Y+++ for j = 1, . . . , J.
Also, for i = 1, . . . , I and j = 1, . . . , J ,
11.8 The Two-Way Layout with Replications 775
Table 11.27 Cell averages in Example 11.8.2
Compact Intermediate Standard Average
model model model for row
Equipped with device Y 11+ = 8.58 Y 12+ = 10.12 Y 13+ = 11.08 Y 1++ = 9.9267
Not equipped with device Y 21+ = 8.94 Y 22+ = 10.20 Y 23+ = 11.40 Y 2++ = 10.1800
Average for column Y+1+ = 8.76 Y+2+ = 10.16 Y+3+ = 11.24 Y+++ = 10.0533
γˆij
= Y ij+ − (ˆμ + ˆαi
+ ˆ βj )
= Y ij+ − Y i++ − Y+j+ + Y+++.
(11.8.7)
Also, for all values of i and j , E( ˆ μ) = μ, E(ˆαi) = αi , E( ˆ βj ) = βj , and E(γˆij ) = γij .
Example
11.8.2
Gasoline Consumption. In Example 11.8.1, let the A factor be the device, and let the
B factor be the car model. Then we have I = 2, J = 3, and K = 5. The average value
Y ij+ for each of the six cells in Table 11.26 is presented in Table 11.27, which also
gives the average value Y i++ for each of the two rows, the average value Y+j+ for
each of the three columns, and the average value Y+++ of all 30 observations.
It follows from Table 11.27 and Eqs. (11.8.6) and (11.8.7) that the values of the
M.L.E.’s, or least-squares estimators, in this example are
ˆμ
= 10.0533, ˆα1 = −0.1267, ˆα2 = 0.1267,
ˆ β1 = −1.2933, ˆ β2 = 0.1067, ˆ β3 = 1.1867,
γˆ11 = −0.0533, γˆ12 = 0.0867, γˆ13 = −0.0333,
γˆ21 = 0.0533, γˆ22 = −0.0867, γˆ23 = 0.0333.
In this example, the estimates of the interactions γˆij are small for all values of i and j .
 
Partitioning the Sum of Squares
Consider now the total sum of squares,
S2
Tot
=
 I
i=1
 J
j=1
 K
k=1
(Yij k
− Y+++)2. (11.8.8)
We shall now indicate how S2
Tot can be partitioned into four smaller independent sums
of squares, each of which is associated with a particular type of variation among the
observations. Under various null hypotheses, each sum of squares (divided by σ2)
will have a χ2 distribution.
Theorem
11.8.2
Let S2
Tot be as defined in Eq. (11.8.8). Then
S2
Tot
= S2
A
+ S2
B
+ S2
Int
+ S2
Resid, (11.8.9)
776 Chapter 11 Linear Statistical Models
where
S2
A
= JK
 I
i=1
(Y i++ − Y+++)2, (11.8.10)
S2
B
= IK
 J
j=1
(Y+j+ − Y+++)2,
S2
Int
= K
 I
i=1
 J
j=1
(Y ij+ − Y i++ − Y+j+ + Y+++)2,
S2
Resid
=
 I
i=1
 J
j=1
 K
k=1
(Yij k
− Y ij+)2.
In addition, S2
Resid/σ 2 has the χ2 distribution with IJ(K − 1) degrees of freedom.
If all αi
= 0, then S2
A/σ 2 has the χ2 distribution with I − 1 degrees of freedom. If
all βj
= 0, then S2
B/σ 2 has the χ2 distribution with J − 1 degrees of freedom. If all
γij
= 0, then S2
Int/σ 2 has the χ2 distribution with (I − 1)(J − 1) degrees of freedom.
The four sums of squares are mutually independent.
Proof The proof of (11.8.9) is left to the reader in Exercise 7.
The random variable S2
Resid/σ 2 is the sum of IJ independent random variables
of the form
 K
k=1(Yij k
− Y ij+)2/σ 2. According to Theorem 8.3.1, each of these IJ
random variables has the χ2 distribution with K − 1 degrees of freedom. Hence, the
sum of all IJ of them has the χ2 distribution with IJ(K − 1) degrees of freedom. If
all of the αi
= 0, then Y 1++, . . . , Y I++ all have the normal distribution with mean μ
and variance σ2/JK. Theorem 8.3.1 implies that S2
A/σ 2 has the χ2 distribution with
I − 1 degrees of freedom. Similarly, if all βj
= 0, then S2
B/σ 2 has the χ2 distribution
with J − 1 degrees of freedom.
The number of degrees of freedom for S2
Int can be determined as follows: If all of
the γij
= 0, then the additivity assumption holds, and S2
Int is the same as S2
Resid from
Sec. 11.7 except for the fact that each Y ij+ has the normal distribution with mean
μ + αi
+ βj and variance σ2/K instead of variance σ2. This means that if all γij
= 0,
then S2
Int/σ 2 has the χ2 distribution with (I − 1)(J − 1) degrees of freedom.
Finally, it can be shown that all of the sums of squares in relations (11.8.10) are
independent (see Exercise 8 for a related result).
The claims in Theorem 11.8.2 are summarized in Table 11.28, which is the
ANOVA table for the two-way layout with K observations per cell.
Example
11.8.3
Gasoline Consumption. Using the sample means computed in Example 11.8.2, we can
form the ANOVA table in Table 11.29.We shall use the mean squares in Table 11.29
to test various hypotheses about the effects of the factors after we develop test
procedures.  
Testing Hypotheses
As mentioned before, the effects of the factors A and B are additive if and only if
all the interactions γij vanish. Hence, to test whether the effects of the factors are
11.8 The Two-Way Layout with Replications 777
Table 11.28 General ANOVA table for two-way layout with replication
Source of Degrees of Sum of
variation freedom squares Mean square
Main effects ofA I− 1 S2
A S2
A/(I − 1)
Main effects ofB J− 1 S2
B S2
B/(J − 1)
Interactions (I − 1)(J − 1) S2
Int S2
Int/[(I − 1)(J − 1)]
Residuals IJ(K − 1) S2
Resid S2
Resid/[IJ(K − 1)]
Total IJK − 1 S2
Tot
Table 11.29 ANOVA table for data from Example 11.8.2.
Source of Degrees of Sum of
variation freedom squares Mean square
Main effects of device 1 0.4813 0.4813
Main effects of model 2 30.92 15.46
Interactions 2 0.1147 0.0573
Residuals 24 18.22 0.7590
Total 29 49.73
additive, we must test the following hypotheses:
H0 : γij
= 0 for i = 1, . . . , I and j = 1, . . . , J,
H1 : The hypothesis H0 is not true.
(11.8.11)
It follows from Theorem 11.8.2 that when the null hypothesis H0 is true, the
random variable S2
Int/σ 2 has the χ2 distribution with (I − 1)(J − 1) degrees of freedom.
Furthermore, regardless of whether or not H0 is true, the independent random
variable S2
Resid/σ 2 has the χ2 distribution with IJ(K − 1) degrees of freedom. Thus,
when H0 is true, the following random variable U2
AB has the F distribution with
(I − 1)(J − 1) and IJ(K − 1) degrees of freedom:
U2
AB
=
IJ(K − 1)S2
Int
(I − 1)(J − 1)S2
Resid
, (11.8.12)
which is also the ratio of the interaction mean square to the residual mean square.
The null hypothesis H0 would be rejected at level α0 if
U2
AB
≥ F
−1
(I−1)(J−1),IJ (K−1)(1− α0),
where F
−1
(I−1)(J−1),IJ (K−1) is the quantile function of the F distribution with (I −
1)(J − 1) and IJ(K − 1) degrees of freedom.
778 Chapter 11 Linear Statistical Models
Example
11.8.4
Gasoline Consumption. Suppose that it is desired to use the data from Example 11.8.2
to test the null hypothesis that the effects of equipping a car with the device and
using a particular model are additive, against the alternative that these effects are not
additive. In other words, suppose that it is desired to test the hypotheses (11.8.11).
Using the mean squares in Table 11.29 and Eq. (11.8.12), we compute that U2
AB
=
0.0573/0.7590 = 0.076. The corresponding p-value can be found using statistical
software, and its value is 0.9275. Hence, the null hypothesis that the effects are
additive would be not be rejected at any common level of significance.  
If the null hypothesis H0 in (11.8.11) is rejected, then it suggests that at least
some of the interactions γij are not 0. Therefore, the means of the observations for
certain combinations of i and j will be larger than the means of the observations for
other combinations, and both factor A and factor B affect these means. In this case,
because both factor A and factor B affect the means of the observations, there is not
usually any further interest in testing whether either the main effects α1, . . . , αI or
the main effects β1, . . . , βJ are zero.
On the other hand, if the null hypothesis H0 in (11.8.11) is not rejected (as is
the case in Example 11.8.4), then we might decide to act as if all the interactions
are 0. If, in addition, all the main effects α1, . . . , αI were 0, then the mean value of
each observation would not depend in any way on the value of i. In this case, factor
A would have no effect on the observations. Therefore, if the null hypothesis H0 in
(11.8.11) is not rejected, we might be interested in testing the following hypotheses:
H0 : αi
= 0 and γij
= 0 for i = 1, . . . , I and j = 1, . . . , J,
H1 : The hypothesis H0 is not true.
(11.8.13)
Indeed, we might be interested in testing these hypotheses even if we had not first
tested the hypotheses (11.8.11).
According to Theorem 11.8.2, if H0 is true, then S2
A/σ 2 and S2
Int/σ 2 are independent
having χ2 distributions with I − 1 and (I − 1)(J − 1) degrees of freedom,
respectively. It follows that, when H0 in (11.8.13) is true, the following random variable
U2
A has the F distribution with I − 1+ (I − 1)(J − 1) = (I − 1)J and IJ(K − 1)
degrees of freedom:
U2
A
=
IJ(K − 1)[S2
A
+ S2
Int]
(I − 1)J S2
Resid
. (11.8.14)
If we did not test the hypotheses (11.8.11) first, then we can reject H0 in (11.8.13) at
level α0 if U2
A
≥ F
−1
(I−1)J,IJ (K−1)(1− α0).
If we first tested (11.8.11) and failed to reject the null hypothesis, there are two
important considerations to emphasize before proceeding with a test of (11.8.13).
First, the size of the second test, the test of (11.8.13), should be calculated conditional
on having failed to reject the null hypothesis in (11.8.11). That is, if the second test is
to reject the null hypothesis in (11.8.13) if T ≥ c (for some statistic T ), then the size
of the second test should be the conditional probability
Pr
 
T ≥ c
  
U2
AB <F
−1
(I−1)(J−1),IJ (K−1)(1− α0)
 
. (11.8.15)
Calculation of this conditional probability is beyond the scope of this book, but it can
be approximated using simulation methods that will be introduced in Chapter 12.
(See Example 12.3.4 for an illustration.)
The second consideration involves the choice of test statistic T for testing
(11.8.13). For the case in which we did not first test (11.8.11), the statistic U2
A in
11.8 The Two-Way Layout with Replications 779
(11.8.14) is a sensible test statistic. However, if we have already failed to reject the
null hypothesis in (11.8.11), a better test statistic might be
V 2
A
=
IJ(K − 1)S2
A
(I − 1)S2
Resid
. (11.8.16)
One reason for this is that, with T = V 2
A, the probability in (11.8.15) will often be
closer to α0 than with T = U2
A. For instance, if IJ(K − 1) is large and H0 is true,
then S2
Resid should be close to σ2 with high probability. In this case, since S2
Int and
S2
A are independent random variables, the random variables V 2
A and U2
AB should be
nearly independent as well. This will make the test based on V 2
A nearly independent
of whether or not the test based on U2
AB rejected its null hypothesis. On the other
hand, because
U2
A
= 1
J
[V 2
A
+ (J − 1)U2
AB],
we see that the dependence between U2
A and U2
AB is likely to be quite high under all
circumstances.
So, if we first test (11.8.11) and fail to reject the null hypothesis, we should then
use V 2
A to test (11.8.13). We would then reject the null hypothesis if V 2
A > c, where
c is some constant. Unfortunately, we still cannot find a useable expression for c
other than to note that the size of this second test, conditional on the first test, is
(11.8.15) with T = V 2
A. We can use simulation methods to compute this if necessary.
(See Example 12.3.4.) The overall size of this two-stage procedure is larger than
α0. (See Exercise 19.) In practice, it is common to let c = F
−1
I−1,IJ (K−1)(1− α0) and
pretend as if (11.8.15) with T = V 2
A is essentially α0.
Example
11.8.5
Gasoline Consumption. Suppose now that it is desired to test the null hypothesis that
the device has no effect on gasoline consumption for all of the car models tested,
against the alternative that the device does affect gasoline consumption. In other
words, suppose that it is desired to test the hypotheses (11.8.13). If we had not first
tested (11.8.11), then we would use Eq. (11.8.14) and the numbers in Table 11.29 to
compute U2
A
= 24(0.4813 + 0.1147)/[3(18.22)]= 0.2616. The corresponding p-value
from the F distribution with 3 and 24 degrees of freedom is 0.8523. Hence, the null
hypothesis would not be rejected at the usual levels of significance.
On the other hand, since we did test (11.8.11) first, we should instead use V 2
A
=
0.4813/0.7590 = 0.6341.We cannot compute the exact conditional p-value associated
with this observed value. However, using the method to be described in Example
12.3.4, we can approximate the p-value to be about 0.43, given that we failed
to reject the null hypothesis in (11.8.11). We can also use the method of Example
12.3.4 to approximate the probabilities in (11.8.15) for T = U2
A and for T = V 2
A.
With α0 = 0.05, these approximations are, respectively, 0.019 and 0.048. Notice how
close the test based on V 2
A comes to having the nominal size α0 = 0.05, while the
conditional size of the test based on U2
A is much smaller.  
Similarly, we may want to find out whether all the main effects of factor B, as
well as the interactions, are 0. In this case, we would test the following hypotheses:
H0 : βj
= 0 and γij
= 0 for i = 1, . . . , I, and j = 1, . . . , J,
H1 : The hypothesis H0 is not true.
(11.8.17)
780 Chapter 11 Linear Statistical Models
By analogy with Eq. (11.8.14), it follows that when H0 is true, the following random
variable U2
B has the F distribution with I (J − 1) and IJ(K − 1) degrees of freedom:
U2
B
=
IJ(K − 1)[S2
B
+ S2
Int]
I (J − 1)S2
Resid
. (11.8.18)
Again, if we do not first test (11.8.11), then the hypothesis H0 should be rejected
at level α0 if U2
B >F
−1
I (J−1),IJ (K−1)(1− α0). If we test (11.8.11) first and fail to reject
the null hypothesis, then we should reject H0 in (11.8.17) if V 2
B is too large, where
V 2
B
= IJ(K−1)S2
B
(J−1)S2
Resid
. The conditional level of this test must be computed by simulation,
also.
In a given problem, if the null hypothesis in (11.8.11) is not rejected and the null
hypotheses in both (11.8.13) and (11.8.17) are rejected, then we may be willing to
proceed with further studies and experimentation by using a model in which it is
assumed that the effects of factor A and factor B are approximately additive and the
effects of both factors are important.
The results obtained in Example 11.8.5 do not provide any indication that the
device is effective. Nevertheless, it can be seen from Table 11.27 that for each of the
three models, the average consumption of gasoline for the cars that were equipped
with the device is smaller than the average consumption for the cars that were not so
equipped. If we assume that the effects of the device and the model of automobile
are additive, then regardless of the model of the automobile that is used, the M.L.E.
of the reduction in gasoline consumption over the given route that is achieved by
equipping an automobile with the device is ˆα2 − ˆα1 = 0.2534 liter.
The Two-Way Layout with Unequal Numbers of Observations
in the Cells
Consider again a two-way layout with I rows and J columns, but suppose now that
instead of there being K observations in each cell, some cells have more observations
than others. For i = 1, . . . , I and j = 1, . . . , J, we shall let Kij denote the
number of observations in the (i, j ) cell. Thus, the total number of observations
is
 I
i=1
 J
j=1 Kij .We shall assume that every cell contains at least one observation,
and we shall again let Yij k denote the kth observation in the (i, j ) cell. For each value
of i and j , the values of the subscript k are 1, . . . , Kij . We shall also assume, as before,
that all the observations Yij k are independent; each has a normal distribution;
Var(Yij k) = σ2 for all values of i, j , and k; and E(Yij k) = μ + αi
+ βj
+ γij , where
these parameters satisfy the conditions given in Eq. (11.8.5).
As usual, we shall let Y ij+ denote the average of the observations in the (i, j )
cell. It can then be shown that for i = 1, . . . , I and j = 1, . . . , J, the M.L.E.’s, or
least-squares estimators, are as follows:
ˆμ
= 1
IJ
 I
i=1
 J
j=1
Y ij+, ˆαi
= 1
J
 J
j=1
Y ij+ − ˆμ,
ˆ βj
= 1
I
 I
i=1
Y ij+ − μˆ , γˆij
= Y ij+ − ˆμ− ˆαi
− ˆ βj .
(11.8.19)
11.8 The Two-Way Layout with Replications 781
These estimators are intuitively reasonable and analogous to those given in Eqs.
(11.8.6) and (11.8.7).
Suppose now, however, that it is desired to test hypotheses such as (11.8.11),
(11.8.13), or (11.8.17). The construction of appropriate tests becomes somewhat
more difficult because, in general, the sums of squares analogous to those given in
Eq. (11.8.10) will not be independent when there are unequal numbers of observations
in the different cells. Hence, the test procedures presented earlier in this section
cannot be directly copied here. It is necessary to develop other sums of squares that
will be independent and will reflect the different types of variations in the data in
which we are interested. We shall not consider the problem further in this book.
This and other problems of ANOVA are described in the advanced book by Scheff´e
(1959).
Summary
We extended the analysis of the two-way layout to cases in which we have equal
numbers of observations at all combinations of levels of the two factors. One additional
null hypothesis that we can test in this case is that the effects of the two factors
are additive. (We assumed that the effects were additive when we had only one observation
per cell.) If we reject the null hypothesis of additivity, we typically do not
test any further hypotheses. If we don’t reject this null hypothesis, we might still be
interested in whether one of the two factors has any effect at all on the means of the
observations. Even if we do not first test the null hypothesis that the effects of the
two factors are additive, we might still be interested in whether one of the factors
has an effect. The precise form of a test of one of these last hypotheses depends on
whether we first test that the effects are additive.
Exercises
1. Show that for every set of numbers θij (i = 1, . . . , I
and j = 1, . . . , J), there exists a unique set of numbers μ,
αi , βj , and γij (i = 1, . . . , I and j = 1, . . . , J) that satisfy
Eqs. (11.8.4) and (11.8.5).
2. Verify that Eq. (11.8.6) gives the M.L.E.’s of the parameters
of the two-way layout with replication.
3. Suppose that in a two-way layout, the values of θij are
as given in each of the four matrices presented in parts
(a), (b), (c), and (d) of Exercise 2 of Sec. 11.7. For each
matrix, determine the values of μ, αi , βj , and γij that
satisfy Eqs. (11.8.4) and (11.8.5).
4. Verify that if ˆαi , βˆj , and γˆij are as given by Eqs. (11.8.6)
and (11.8.7), then
 I
i=1
ˆα
i
= 0,
 J
j=1
ˆ βj
= 0,
 I
i=1
γˆij
= 0
for j = 1, . . . , J , and
 J
j=1
γˆij
= 0 for i = 1, . . . , I.
5. Verify that if ˆμ, ˆαi , ˆ βj , and γˆij are as given by Eqs.
(11.8.6) and (11.8.7), then E( ˆ μ) = μ, E(ˆαi) = αi , E( ˆ βj ) =
βj , and E(γˆij ) = γij for all values of i and j . Hint: Each of
the random variables in this exercise is a linear function of
the Yij k’s, and hence the expectations are the same linear
combinations of the expectations of the Yij k’s.
6. Show that if ˆμ, ˆαi , ˆ βj , and γˆij are as given by Eqs.
(11.8.6) and (11.8.7), then the following results are true
for all values of i and j :
Var(μˆ ) = I
IJK
σ2, Var(ˆαi) = (I − 1)
IJK
σ2,
Var( ˆ βj ) = (J − 1)
IJK
σ2, Var(γˆij ) = (I − 1)(J − 1)
IJK
σ2.
7. Verify Eq. (11.8.9).
8. In a two-way layout with K observations in each cell,
show that for all values of i, i1, i2, j , j1, j2, and k, the
following five random variables are uncorrelated with one
another:
Yij k
− Y ij+, ˆαi1, ˆ βj1, γˆi2j2, and μˆ .
782 Chapter 11 Linear Statistical Models
9. Verify that U2
AB also equals
⎛
⎜⎜⎜⎜⎜⎜⎝
IJK(K − 1)(
 I
i=1
 J
j=1
Y
2
ij+ − J
 I
i=1
Y
2
i++
− I
 J
j=1
Y
2
+j+ + IJY
2
+++)
⎞
⎟⎟⎟⎟⎟⎟⎠
⎛
⎜⎜⎜⎜⎜⎜⎝
(I − 1)(J − 1)(
 I
i=1
 J
j=1
 K
k=1
Y 2
ij k
− K
 I
i=1
 J
j=1
Y
2
ij+)
⎞
⎟⎟⎟⎟⎟⎟⎠
.
10. Suppose that in an experimental study to determine
the combined effects of receiving both a stimulant and a
tranquilizer, three different types of stimulants and four
different types of tranquilizers are administered to a group
of rabbits. Each rabbit in the experiment receives one of
the stimulants and then, 20 minutes later, receives one of
the tranquilizers. After one hour, the response of the rabbit
is measured in appropriate units. In order that each
possible pair of drugs may be administered to two different
rabbits, 24 rabbits are used in the experiment. The
responses of these 24 rabbits are given in Table 11.30. Determine
the values of ˆμ, ˆαi , ˆ βj , and γˆij for i = 1, 2, 3 and
j = 1, 2, 3, 4, and determine also the value of ˆσ 2.
Table 11.30 Data for Exercises 10–15
Tranquilizer
Stimulant 1 2 3 4
1 11.2 7.4 7.1 9.6
11.6 8.1 7.0 7.6
2 12.7 10.3 8.8 11.3
14.0 7.9 8.5 10.8
3 10.1 5.5 5.0 6.5
9.6 6.9 7.3 5.7
11. For the conditions of Exercise 10 and the data in
Table 11.30, test the hypothesis that every interaction between
a stimulant and a tranquilizer is 0.
12. For the conditions of Exercise 10 and the data in
Table 11.30, test the hypothesis that all three stimulants
yield the same responses.
13. For the conditions of Exercise 10 and the data in
Table 11.30, test the hypothesis that all four tranquilizers
yield the same responses.
14. For the conditions of Exercise 10 and the data in
Table 11.30, test the following hypotheses:
H0 : μ = 8,
H1 : μ  = 8.
15. For the conditions of Exercise 10 and the data in
Table 11.30, test the following hypotheses:
H0 : α2 ≤ 1,
H1 : α2 > 1.
16. In a two-way layout with unequal numbers of observations
in the cells, show that if ˆμ, ˆαi , ˆ βj , and γˆij are as given
by Eq. (11.8.19), then E( ˆ μ) = μ, E(ˆαi) = αi , E( ˆ βj ) = βj ,
and E(γˆij ) = γij for all values of i and j .
17. Verify that if ˆμ, ˆαi , ˆ βj , and γˆij are as given by Eq.
(11.8.19), then
 I
i=1
ˆα
i
= 0,
 J
j=1
ˆ βj
= 0,
 I
i=1
γˆij
= 0 for
j = 1, . . . , J , and
 J
j=1
γˆij
= 0 for i = 1, . . . , I.
18. Show that if ˆμ and ˆαi are as given by Eq. (11.8.19),
then for i = 1, . . . , I,
Cov( ˆ μ, ˆαi) = σ2
IJ2
⎡
⎣
 J
j=1
1
Kij
− 1
I
 I
r=1
 J
j=1
1
Krj
⎤
⎦.
Also, show that this covariance is 0 if all Kij are the same.
19. Recall the two-stage testing procedure described in
this section: First test (11.8.11) at level α0. If you reject
the null hypothesis, stop. If you don’t reject the null hypothesis,
then test (11.8.13). Let β0 be the conditional size
of the second test given that the first test doesn’t reject
the null hypothesis. Assume that both null hypotheses are
true. Find the probability that this two-stage procedure
rejects at least one of the null hypotheses.
20. The study referred to in Exercise 10 in Sec. 11.6 actually
included another factor in addition to size of vehicle.
There were two different filters, a standard filter and a
newly developed filter. Table 11.19 has data only from the
standard filter. The corresponding data for the new filter
are in Table 11.31.
Table 11.31 Data for Exercise 20. This table has data for
the vehicles with the new filter.
Vehicle size Noise values
Small 820, 820, 820, 825, 825, 825
Medium 820, 820, 825, 815, 825, 825
Large 775, 775, 775, 770, 760, 765
11.9 Supplementary Exercises 783
a. Construct the ANOVA table for the two-way layout
that includes the data from both Tables 11.19
and 11.31.
b. Compute the p-value for testing the null hypothesis
that there is no interaction.
c. Compute the p-value for testing the null hypothesis
that the vehicles of all three sizes produce the same
level of noise on average.
d. Compute the p-value for testing the null hypothesis
that both filters result in the same level of noise on
average.
11.9 Supplementary Exercises
1. Consider the data in Example 11.2.2 on page 703. Suppose
that we fit a simple linear regression of the natural
logarithm of pressure on boiling point.
a. Find a 90 percent confidence interval (bounded interval)
for the slope β1.
b. Test the null hypothesis H0 : β1 = 0 versus H1 : β1  = 0
at level α0 = 0.1.
c. Find a 90 percent prediction interval for pressure
(not logarithm of pressure) when the boiling point
is 204.6.
2. Suppose that (Xi , Yi), i = 1, . . . , n, form a random sample
of size n from the bivariate normal distribution with
means μ1 and μ2, variances σ2
1 and σ2
2 , and correlation ρ,
and let ˆμi , ˆσ 2
i , and ρˆ denote theirM.L.E.’s Also, let ˆ β2 denote
the M.L.E. of β2 in the regression of Y on X. Show
that
ˆ β2 = ˆρˆσ2/ˆσ1.
Hint: See Exercise 24 of Sec. 7.6.
3. Suppose that (Xi , Yi), i = 1, . . . , n, form a random sample
of size n from the bivariate normal distribution with
means μ1 and μ2, variances σ2
1 and σ2
2 , and correlation
ρ. Determine the mean and the variance of the following
statistic T , given the observed values X1 = x1, . . . , Xn
=
xn:
T =
 n
i=1(xi
− x)Yi  n
i=1(xi
− x)2
.
4. Let θ1, θ2, and θ3 denote the unknown angles of a triangle,
measured in degrees (θi > 0 for i = 1, 2, 3, and θ1 +
θ2 + θ3 = 180). Suppose that each angle is measured by
an instrument that is subject to error, and the measured
values of θ1, θ2, and θ3 are found to be y1 = 83, y2 = 47,
and y3 = 56, respectively. Determine the least-squares estimates
of θ1, θ2, and θ3.
5. Suppose that a straight line is to be fitted to n points
(x1, y1), . . . , (xn, yn) such that x2 = x3 = . . . = xn but x1  =
x2. Show that the least-squares line will pass through the
point (x1, y1).
6. Suppose that a least-squares line is fitted to the n points
(x1, y1), . . . , (xn, yn) in the usual way by minimizing the
sum of squares of the vertical deviations of the points
from the line, and another least-squares line is fitted by
minimizing the sum of squares of the horizontal deviations
of the points from the line. Under what conditions will
these two lines coincide?
7. Suppose that a straight line y = β1 + β2x is to be fitted
to the n points (x1, y1), . . . , (xn, yn) in such a way that
the sum of the squared perpendicular (or orthogonal) distances
from the points to the line is a minimum. Determine
the optimal values of β1 and β2.
8. Suppose that twin sisters are each to take a certain
mathematics examination. They know that the scores they
will obtain on the examination have the same mean μ,
the same variance σ2, and positive correlation ρ. Assuming
that their scores have a bivariate normal distribution,
show that after each twin learns her own score, the expected
value of her sister’s score is between her own score
and μ.
9. Suppose that a sample of n observations is formed
from k subsamples containing n1, . . . , nk observations
(n1 + . . . + nk
= n). Let xij (j = 1, . . . , ni) denote the observations
in the ith subsample, and let xi+ and v2
i denote
the sample mean and the sample variance of that subsample:
¯x
i+ = 1
ni
 ni
j=1
xij, v2
i
= 1
ni
 ni
j=1
(xij
− xi+)2.
Finally, let x++ and v2 denote the sample mean and the
sample variance of the entire sample of n observations:
x++ = 1
n
 k
i=1
 ni
j=1
xij, v2 = 1
n
 n
i=1
 ni
j=1
(xij
− x++)2.
Determine an expression for v2 in terms of x++, xi+, and
v2
i (i = 1, . . . , k).
10. Consider the linear regression model
Yi
= β1wi
+ β2xi
+ εi for i = 1, . . . , n,
784 Chapter 11 Linear Statistical Models
where (w1, x1), . . . , (wn, xn) are given pairs of constants
and ε1, . . . , εn are i.i.d. random variables, each of which
has the normal distribution with mean 0 and variance σ2.
Determine explicitly the M.L.E.’s of β1 and β2.
11. Determine an unbiased estimator of σ2 in a two-way
layout with K observations in each cell (K ≥ 2).
12. In a two-way layout with one observation in each cell,
construct a test of the null hypothesis that all the effects
of both factor A and factor B are 0.
13. In a two-way layout with K observations in each cell
(K ≥ 2), construct a test of the null hypothesis that all the
main effects for factor A and factor B, and also all the
interactions, are 0.
14. Suppose that each of two different varieties of corn
is treated with two different types of fertilizer in order
to compare the yields, and that K independent replications
are obtained for each of the four combinations. Let
Xij k denote the yield on the kth replication of the combination
of variety i with fertilizer j (i = 1, 2; j = 1, 2;
k = 1, . . . , K). Assume that all the observations are independent
and normally distributed, each distribution has
the same unknown variance, and E(Xij k) = μij for k =
1, . . . , K. Explain in words what the following hypotheses
mean, and describe how to carry out a test of them:
H0 : μ11 − μ12 = μ21 − μ22,
H1 : The hypothesis H0 is not true.
15. Suppose thatW1,W2, andW3 are independent random
variables, each of which has a normal distribution with the
following means and variances:
E(W1) = θ1 + θ2, Var(W1) = σ2,
E(W2) = θ1 + θ2 − 5, Var(W2) = σ2,
E(W3) = 2θ1 − 2θ2, Var(W3) = 4σ2.
Determine the M.L.E.’s of θ1, θ2, and σ2, and determine
also the joint distribution of these estimators.
16. Suppose that it is desired to fit a curve of the form
y = αxβ to a given set of n points (xi , yi) with xi > 0 and
yi > 0 for i = 1, . . . , n. Explain how this curve can be fitted
either by direct application of the method of least squares
or by first transforming the problem into one of fitting a
straight line to the n points (log xi , log yi) and then applying
the method of least squares. Discuss the conditions
under which each of these methods is appropriate.
17. Consider a problem of simple linear regression, and
let ei
= Yi
− ˆ β0 − ˆ β1xi denote the residual of the observation
Yi (i = 1, . . . , n), as defined in Definition 11.3.2.
Evaluate Var(ei) for given values of x1, . . . , xn, and show
that it is a decreasing function of the distance between xi
and x.
18. Consider a general linear model with n × p design matrix
Z, and letW = Y − Zˆ
β denote the vector of residuals.
(In other words, the ith coordinate ofW is Yi
− ˆ Yi , where
ˆ Yi
= zi0
ˆ β0 + . . . + zip−1
ˆ βp−1.
a. Show that W = DY, where
D = I − Z(Z Z)
−1Z 
.
b. Show that the matrix D is idempotent; that is, DD =
D.
c. Show that Cov(W ) = σ2D.
19. Consider a two-way layout in which the effects of
the factors are additive so that Eq. (11.7.1) is satisfied,
and let v1, . . . , vI and w1, . . . , wJ be arbitrary given
positive numbers. Show that there exist unique numbers
μ, α1, . . . , αI , and β1, . . . , βJ such that
 I
i=1
viαi
=
 J
j=1
wjβj
= 0
and
E(Yij ) = μ + αi
+ βj for i = 1, . . . , I and j = 1, . . . , J.
20. Consider a two-way layout in which the effects of
the factors are additive, as in Exercise 19; suppose also
that there are Kij observations per cell, where Kij > 0
for i = 1, . . . , I and j = 1, . . . , J. Let vi
= Ki+ for i =
1, . . . , I, and let wj
= K+j for j = 1, . . . , J . Assume that
E(Yij k) = μ + αi
+ βj for k = 1, . . . , Kij , i = 1, . . . , j, and
j = 1, . . . , J, where
 I
i=1 viαi
=
 J
j=1 wjβj
= 0, as in Exercise
19. Verify that the least-squares estimators of μ, αi ,
and βj are as follows:
ˆμ
= Y+++,
ˆα
i
= 1
Ki+
Yi++ − Y+++ for i = 1, . . . , I,
ˆ βj
= 1
K+j
Y+j+ − Y+++ for j = 1, . . . , J.
21. Consider again the conditions of Exercises 19 and
20, and let the estimators ˆμ, ˆαi , and ˆ βj be as given in
Exercise 20. Show that Cov(ˆμ, ˆαi) = Cov(ˆμ, ˆ βj ) = 0.
22. Consider again the conditions of Exercise 19 and 20,
and suppose that the numbers Kij have the following proportionality
property:
Kij
=
Ki+K+j
n
for i = 1, . . . , I and j = 1, . . . , J.
Show that Cov(ˆαi, ˆ βj ) = 0, where the estimators ˆαi and ˆ βj
are as given in Exercise 20.
11.9 Supplementary Exercises 785
23. In a three-way layout with one observation in each
cell, the observations Yij k (i = 1, . . . , I; j = 1, . . . , J;
k = 1, . . . ,K) are assumed to be independent and normally
distributed, with a common variance σ2. Suppose
that E(Yij k) = θij k. Show that for every set of numbers
θij k, there exists a unique set of numbers μ, αA
i , αB
j ,
αC
k , βAB
ij , βAC
ik , βBC
jk , and γij k (i = 1, . . . , I; j = 1, . . . , J;
k = 1, . . . , K) such that
αA
+ = αB+
= αC+
= 0,
βAB
i+ = βAB
+j
= βAC
i+ = βAC
+k
= βBC
j+ = βBC
+k
= 0,
γij+ = γi+k
= γ+jk
= 0,
and
θij k
= μ + αA
i
+ αB
j
+ αC
k
+ βAB
ij
+ βAC
ik
+ βBC
jk
+ γij k,
for all values of i, j , and k.
24. The 2000 U.S. presidential election was very close, especially
in the state of Florida. Indeed, newscasters were
unable to predict a winner the day after the election because
they could not decide who was going to win Florida’s
25 electoral votes. Many voters in Palm Beach County
complained that they were confused by the design of the
ballot and might have voted for Patrick Buchanan instead
of Al Gore, as they had intended. Table 11.32 displays the
official ballot counts (after all official recounts) for each
county. There was no reason, prior to the election, to think
that Patrick Buchanan would gather a significantly higher
percent of the vote in Palm Beach County than in any
other Florida county.
a. Draw a plot of the vote count for Patrick Buchanan
against the total vote count with one point for each
county. Identify the point corresponding to Palm
Beach County.
b. Given the complaints about the Palm Beach ballot,
it might be sensible to treat the data point for Palm
Beach County as being different from the others. Fit
a simple linear regression model with Y being the
vote for Buchanan and X being the total vote in each
county, excluding Palm Beach County.
c. Plot the residuals from the regression in part (b)
against the X variable. Do you notice any pattern in
the plot?
d. The variance of the vote for each candidate in a
county ought to depend on the total vote in the
county. The larger the total vote, the more variance
you expect in the vote for each candidate. For this
reason, the assumptions of the simple linear regression
model would not hold. As an alternative, fit a
simple linear regression with Y being the logarithm
of the vote for Buchanan and X being the logarithm
of the total vote in each county. Continue to exclude
Palm Beach County.
e. Plot the residuals from the regression in part (d)
against the X variable. Do you notice any pattern in
the plot?
f. Using the model fit in part (d), form a 99 percent prediction
interval for the Buchanan vote (not the logarithm
of the Buchanan vote) in Palm Beach County.
g. Let B be the upper endpoint of the interval you
found in part (f). Just suppose that the actual number
of people in Palm Beach County who voted for
Buchanan had actually been B instead of 3411. Also
suppose that the remaining 3411− B voters had actually
voted for Gore. Would this have changed the
winner of the total popular vote for the State of
Florida?
786 Chapter 11 Linear Statistical Models
Table 11.32 County votes for Bush, Gore, and Buchanan in the 2000 presidential election for the state of Florida. The
total column includes all 11 candidates that were on the ballot. The absentee row includes overseas absentee
ballots that were not included in individual county totals. These data came from the official state of Florida
electionWeb site, which has since been moved or deleted.
County Bush Gore Buchanan Total County Bush Gore Buchanan Total
Alachua 34,124 47,365 263 85,729 Lee 106,141 73,560 305 184,377
Baker 5610 2392 73 8154 Leon 39,062 61,427 282 103,124
Bay 38,637 18,850 248 58,805 Levy 6858 5398 67 12,724
Bradford 5414 3075 65 8673 Liberty 1317 1017 39 2410
Brevard 115,185 97,318 570 218,395 Madison 3038 3014 29 6162
Broward 177,902 387,703 795 575,143 Manatee 57,952 49,177 271 110,221
Calhoun 2873 2155 90 5174 Marion 55,141 44,665 563 102,956
Charlotte 35,426 29,645 182 66,896 Martin 33,970 26,620 112 62,013
Citrus 29,767 25,525 270 57,204 Miami-Dade 289,533 328,808 560 625,449
Clay 41,736 14,632 186 57,353 Monroe 16,059 16,483 47 33,887
Collier 60,450 29,921 122 92,162 Nassau 16,404 6952 90 23,780
Columbia 10,964 7047 89 18,508 Okaloosa 52,093 16,948 267 70,680
Desoto 4256 3320 36 7811 Okeechobee 5057 4588 43 9853
Dixie 2697 1826 29 4666 Orange 134,517 140,220 446 280,125
Duval 152,098 107,864 652 264,636 Osceola 26,212 28,181 145 55,658
Escambia 73,017 40,943 502 116,648 Palm Beach 152,951 269,732 3411 433,186
Flagler 12,613 13,897 83 27,111 Pasco 68,582 69,564 570 142,731
Franklin 2454 2046 33 4644 Pinellas 184,825 200,630 1013 398,472
Gadsden 4767 9735 38 14,727 Polk 90,295 75,200 533 168,607
Gilchrist 3300 1910 29 5395 Putnam 13,447 12,102 148 26,222
Glades 1841 1442 9 3365 Santa Rosa 36,274 12,802 311 50,319
Gulf 3550 2397 71 6144 Sarasota 83,100 72,853 305 160,942
Hamilton 2146 1722 23 3964 Seminole 75,677 59,174 194 137,634
Hardee 3765 2339 30 6233 St. Johns 39,546 19,502 229 60,746
Hendry 4747 3240 22 8139 St. Lucie 34,705 41,559 124 77,989
Hernando 30,646 32,644 242 65,219 Sumter 12,127 9637 114 22,261
Highlands 20,206 14,167 127 35,149 Suwannee 8006 4075 108 12,457
Hillsborough 180,760 169,557 847 360,295 Taylor 4056 2649 27 6808
Holmes 5011 2177 76 7395 Union 2332 1407 37 3826
Indian River 28,635 19,768 105 49,622 Volusia 82,357 97,304 498 183,653
Jackson 9138 6868 102 16,300 Wakulla 4512 3838 46 8587
Jefferson 2478 3041 29 5643 Walton 12,182 5642 120 18,318
Lafayette 1670 789 10 2505 Washington 4994 2798 88 8025
Lake 50,010 36,571 289 88,611 Absentee 1575 836 5 2490
