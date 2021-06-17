# Probability {#prob}

## Introduction to Probability

### Important concepts

> - Trial 
> - Experiment 
> - Random experiment
> - Sample space
> - event

### Three Definitions 

#### Classical

$P (A) = \frac{n(A)}{n(S)}$

#### Relative frequency

$$\lim_{n(S) \to \infty} \frac{n(A)}{n(S)}$$

#### Axiomatic

Three axioms

Say, S is sample space and A is an event 

> - $0 \le P (A) \le 1$ <span style="color: red;">(NOT $P(A) \ge 0$)</span>
> - At least one of S will occur. P (S) = 1; Certain event. 
> - $P(A_1 U A_2 U ... U A_n)=P(A_1) + P(A_2) + ... + P(A_n)$ or  
> - $$P\left(\cup _{i=1}^{\infty }E_{i}\right)=\sum _{i=1}^{\infty }P(E_{i})$$

### Permutaion vs Combination

There are 15 cricketers in BD preliminary team. We got to <span style="font-style:italic; color:blue;">select </span> 11. C or P? 

> - Where is P used? 

### Dependency and Mutual Exclusivity

If two events $A$ and $B$ do not affect each other, they are called independent events. 

Let the events,

$A$ = Head appears when a coin is tossed

$B$ = Head appears when the coin is tossed again

These two events are independent, assuming the first toss does not alter the properties of the coin. 

Consider another set of two events:

$A$ = An ace appears when a card is drawn from a deck of 52 cards

$B$ = An ace appears if another card is drawn from the same deck, without putting the first card back. 

In this case the $P(B)$ will depend on $A$. 

Clearly, $P(A) = \frac 4 {52}$, but $P(B) = \frac 4 {51}$

If event $B$ did not depend event $A$, $P(B)$ too would be $\frac 4 {52}$, so it turns out $B$ depends on $A$. 

Theoretically speaking, dependent events are described the Bayes\' Theorem. If the event A depends on B, the the probability that A would happen if B happens is:

$P(A|B) = \frac{P(A \cap B)}{P(B)}$

$\Rightarrow P(A \cap B) = P(A|B) \times P(B)$

Now, if A does not really depend on B, then $P(A|B) = P(A)$, i.e., $A$ does not really care about $B$. 

Thus, if A and B are independent, $P(A \cap B) = P(A) \times P(B)$

Now, two events are called **mutually exclusive** when occurrence of one prevents other from happening, i.e,, they cannot occur simultaneously.  

If a die is thrown once, one of 1-6 will face up. If 1 appears, 2, or any other number from the rest cannot appear. Thus, Getting these numbers are mutually exclusive or disjoint events. Mutually exclusive sets do not have any common elements between themselves. 

Now, merging the concepts of dependency and mutual exclusivity is tricky. 

**Events cannot be independent and mutually exclusive simultaneously**, although the opposite seems intuitive. 

Common sense tells us *events which are mutually exclusive should be independent*, **but common sense is mistaken here.** 

Consider throwing a die. 

$S = \{1, 2, 3, 4, 5, 6\}$

Let, $A = \{1, 3, 5\}$ and $B = \{2, 4, 6\}$

There are no common elements, so events A and B are disjoint or mutually exclusive. 

It might seem, since the sets $A$ and $B$ have no common elemts, they are independent. 

Let us check mathematically:

From the given information, $P(A)= \frac 1 2, P(B) = \frac 1 2$

$P(A \cap B) = 0$ (since there are no common elements) 

And $P(A) \cdot P(B) = \frac 1 2 \cdot \frac 1 2 = \frac 1 4$

$\therefore P(A \cap B) \ne P(A) \cdot P(B)$, which proves event $A$ and event $B$ are not independent, a result which is counterintuitive. Upon second thought, however, it becomes intuitive. First note that $A$ and $B$ both belong to $S$. That they are disjoint means one cannot happen if the other happens, which means one is preventing another from happening, a behavior which can explained as dependency: one event cares about the other, i.e., if one happens, another refrains from happening. 

Mathematically,

$P(A|B) = \frac{P(A \cap B)}{P(B)} = \frac 0 {\frac 1 2} = 0$

In summary, reducing the probability of another event to zero is also a kind of influence, i.e., 

Now, let us see another example, where we have two non mutually exclusive sets. 

Let, $A = \{1, 3, 5\}$ and $B = \{1, 3, 4, 6\}$ (observe that there are some common elements) 

$P(A) = \frac 1 2, P(B) = \frac 4 6 = \frac 2 3$

$P(A \cap B) = \frac 2 6 = \frac 1 3$, and $P(A) \cdot P(B) = \frac 1 2 \cdot \frac 2 3 = \frac 1 3$

$\therefore P(A \cap B) = P(A) \cdot P(B)$, which proves A and B are independent. 

Using Bayes theorem, 

$P(A|B) = \frac{P(A \cap B)}{P(B)} = \frac{\frac 1 3}{\frac 2 3} = \frac 1 2 = P(A)$

$\therefore P(A|B) = P(A)$, which means $A$ does not what happens to $B$. 

Thus, if A and B have common elements, they may be independent of each other. But are they always? No, because it may happen that $P(A \cap B) \ne P(A) \cdot P(B)$, in which case they are dependent events.

So we have three possible cases when we combine depend with disjointness:

1. If two events have no common sample points (elements) (mutually exclusive or disjoint), they are always dependent events. 
2. If two sets have some common sample points, they may be dependent or independent. 
	a. Independet if $P(A \cap B) = P(A) \cdot P(B)$
	b. Dependet if $P(A \cap B) \ne P(A) \cdot P(B)$

Now, let us prove the relationship theoretically. 

Let $P(A) \ne 0, P(B\ne 0$ 

If $A$ and $B$ are independent, $P(A \cap B) = P(A) \cdot P(B)$

Since $P(A)$ and $P(B)$ are both non-zero numbers, $P(A) \cdot P(B) \ne 0$

$\therefore P(A \cap B) \ne 0$ , i.e., there are some common elements between the sets. 

Thus, independent events cannot be mutually exclusive, i.e., they would always have common elements. 

Finally, in general, we can say: **Mutually exclsuive events are dependent events, while non mutually exclusive events may or may not be dependent.** 

In other word, ***all mutually exclsuive events are dependent events, but not all dependent events are mutually exclusive.*** 

### Types of Problems

- Miscellaneous  
- Coin
- Die
- Playing Card
- At Once vs One by One 
- Box
- Conditional 
- Set Theoretic 
- Digit 

### Miscellaneous

#### Misc Problem #01

What is the probability that in a leap year, there are 53 Fridays? 

> - In a leap year, there are 366 days, i.e., 52 weeks and 2 days. In each week is a Fridays, so there are no less than 52 Fridays. The remaining two days could be:
> - (Sat, Sun); (Sun, Mon); (Mon, Tue); (Tue, Wedn); (Wedn, Thu); (Thu, Fri); (Fri, Sat) = 7
> - Total possible outcome = 7 and favorable outcomes = 2
> - $P = \frac{2}{7}$

#### Misc Problem #02

Out of the natural numbers 10 through 30, a number is chosen randomly; what is the probability that the number is 

i. a prime number
ii. a prime number or multiple of 5
iii. a prime number or an odd number
iv. not a perfect square

#### Misc Problem #03
What is the probability that the product of three positive integers chosen from 1 through 100 is an even number?  

> - Three possible cases
> - All three are even
> - Two odd and one even number
> - Two even and one odd
> - $P=\frac{^{50}C_3}{^{100}C_3}+...$
> - 0.88

### Coin And Die Problem

#### Tossing A Coing Twice

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-c3ow{border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-7btt{border-color:inherit;font-weight:bold;text-align:center;vertical-align:top}
.tg .tg-rvyq{border-color:inherit;font-style:italic;font-weight:bold;text-align:center;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-c3ow" colspan="2" rowspan="2"></th>
    <th class="tg-7btt" colspan="2">First Coin</th>
  </tr>
  <tr>
    <td class="tg-c3ow">H</td>
    <td class="tg-c3ow">T</td>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-7btt" rowspan="2">Second<br>Coin</td>
    <td class="tg-c3ow">H</td>
    <td class="tg-rvyq">HH</td>
    <td class="tg-rvyq">HT</td>
  </tr>
  <tr>
    <td class="tg-c3ow">T</td>
    <td class="tg-rvyq">TH</td>
    <td class="tg-rvyq">TT</td>
  </tr>
</tbody>
</table>


***Tossing a coin twice is equivalent to tossing two coins at once***

What is the probability that 

1. The Head appears at the first draw?
2. At least one Head appears?
3. Less than two Heads appear?
4. Only Tails appears?



#### Flipping A Coin Thrice

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-2k8k{border-color:inherit;font-size:13px;font-weight:bold;text-align:center;vertical-align:top}
.tg .tg-wrlh{font-size:13px;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-x10j{border-color:inherit;font-size:13px;font-style:italic;font-weight:bold;text-align:center;vertical-align:top}
.tg .tg-chpi{font-size:13px;font-style:italic;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-2k8k" colspan="2" rowspan="2"></th>
    <th class="tg-2k8k" colspan="4">First Two Flips</th>
  </tr>
  <tr>
    <td class="tg-2k8k">HH</td>
    <td class="tg-2k8k">HT</td>
    <td class="tg-wrlh">TH</td>
    <td class="tg-wrlh">TT</td>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-2k8k" rowspan="2">Third Flip</td>
    <td class="tg-2k8k">H</td>
    <td class="tg-x10j">HHH</td>
    <td class="tg-x10j">HHT</td>
    <td class="tg-chpi">HTH</td>
    <td class="tg-chpi">HTT</td>
  </tr>
  <tr>
    <td class="tg-2k8k">T</td>
    <td class="tg-x10j">THH</td>
    <td class="tg-x10j">THT</td>
    <td class="tg-chpi">TTH</td>
    <td class="tg-chpi">TTT</td>
  </tr>
</tbody>
</table>


What is the probability that 

1. All three are Heads?
2. There are more than one Head?
3. The second draw gives a Head?
4. The third draw does not give a head?
5. The first draw gives a Tail but the the Draw does not? 
6. At most one Head appears? 



#### Flinging Two Dice at Once

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-b2ze{border-color:inherit;font-size:13px;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-lvro{border-color:inherit;font-size:13px;font-weight:bold;text-align:center;vertical-align:middle}
.tg .tg-2k8k{border-color:inherit;font-size:13px;font-weight:bold;text-align:center;vertical-align:top}
.tg .tg-1fmd{border-color:inherit;font-size:13px;font-style:italic;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-x10j{border-color:inherit;font-size:13px;font-style:italic;font-weight:bold;text-align:center;vertical-align:top}
.tg .tg-387r{border-color:inherit;font-size:13px;text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-lvro" colspan="2" rowspan="2">Tossing Two<br>Dice at Once</th>
    <th class="tg-2k8k" colspan="6">First Die</th>
  </tr>
  <tr>
    <td class="tg-2k8k">1</td>
    <td class="tg-2k8k">2</td>
    <td class="tg-b2ze">3</td>
    <td class="tg-b2ze">4</td>
    <td class="tg-1fmd">5</td>
    <td class="tg-1fmd">6</td>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-2k8k">Second<br>Die</td>
    <td class="tg-2k8k">1</td>
    <td class="tg-x10j">1,1</td>
    <td class="tg-x10j">1,2</td>
    <td class="tg-1fmd">1,3</td>
    <td class="tg-1fmd">1,4</td>
    <td class="tg-1fmd">1,5</td>
    <td class="tg-1fmd">1,6</td>
  </tr>
  <tr>
    <td class="tg-2k8k"></td>
    <td class="tg-2k8k">2</td>
    <td class="tg-x10j">2,1</td>
    <td class="tg-x10j">2,2</td>
    <td class="tg-1fmd">2,3</td>
    <td class="tg-1fmd">2,4</td>
    <td class="tg-1fmd">2,5</td>
    <td class="tg-1fmd">2,6</td>
  </tr>
  <tr>
    <td class="tg-387r"></td>
    <td class="tg-1fmd">3</td>
    <td class="tg-1fmd">3,1</td>
    <td class="tg-1fmd">3,2</td>
    <td class="tg-1fmd">3,3</td>
    <td class="tg-1fmd">3,4</td>
    <td class="tg-1fmd">3,5</td>
    <td class="tg-1fmd">3,6</td>
  </tr>
  <tr>
    <td class="tg-387r"></td>
    <td class="tg-1fmd">4</td>
    <td class="tg-1fmd">4,1</td>
    <td class="tg-1fmd">4,2</td>
    <td class="tg-1fmd">4,3</td>
    <td class="tg-1fmd">4,4</td>
    <td class="tg-1fmd">4,5</td>
    <td class="tg-1fmd">4,6</td>
  </tr>
  <tr>
    <td class="tg-387r"></td>
    <td class="tg-1fmd">5</td>
    <td class="tg-1fmd">5,1</td>
    <td class="tg-1fmd">5,2</td>
    <td class="tg-1fmd">5,3</td>
    <td class="tg-1fmd">5,4</td>
    <td class="tg-1fmd">5,5</td>
    <td class="tg-1fmd">5,6</td>
  </tr>
  <tr>
    <td class="tg-387r"></td>
    <td class="tg-1fmd">6</td>
    <td class="tg-1fmd">6,1</td>
    <td class="tg-1fmd">6,2</td>
    <td class="tg-1fmd">6,3</td>
    <td class="tg-1fmd">6,4</td>
    <td class="tg-1fmd">6,5</td>
    <td class="tg-1fmd">6,6</td>
  </tr>
</tbody>
</table>


What is the probability that

1. The first numbers is odd?
2. The summation of numbers in two draws is a prime number?
3. Both numbers are same?
4. The second number is bigger? 



### Playing Card

#### Concepts (Playing Card)
<div class="container">

<div class="col">
<img src="img/stat/cards.png" width="460">

</div>

<div class="col">
<br/>
Each rank has 13 cards. 

- Ace (A)
- King (K)
- Queen (Q)
- Jack (J)
- Numbers: 2, 3, 4, 5, 6, 7, 8, 9, 10

> - 4+9 numbers = 13 cards. 
</div>

</div>


#### Card Problem #01

3 cards are drawn from a pack of 52 cards. What is the probability that they are all Kings?

There are 4 Kings. We've to draw 3 cards. 

> - $P(K) =\frac{^4C_3}{{^52}C_3}$ 

#### Card Problem #02

If a card is drawn from a deck of 52 cards with 4 aces, what is the probability that an ace will not show up? 

Let, P(A) = Ace appears 

> - $1-P(A)$
> - $1-\frac 1 {13}$

#### Card Problem #03

Two cards are drawn with replacement; What is the probability that they are

i. Kings of same color
ii. Kings of different color
iii. Not Kings at all


> - i. $P(BUR) =P(B)+P(R)$
> - $\frac{^2C_1 \times ^2C_1}{^{52}C_1\times ^{52}C_1}+\frac{^2C_1 \times ^2C_1}{^{52}C_1\times ^{52}C_1}$ Why not $^{52}C_2$, $^4C_2$

> - ii. $1-P(B \cup R)$
> - $P(K)= \frac{^4C_1 \times ^4C_1}{^{52}C_1\times ^{52}C_1}$
> - iii. $1-P(K)$

#### Card Problem #04

A card is drawn from a pack of 52 cards. What is the probability that it is

i. an Ace
ii. A Spade
iii. A Hearts or a King


#### Card Problem #05


### Box

#### Box Problem #01

In a box, there are 5 blue marbles, 7 green marbles, and 8 yellow marbles. If two marbles are randomly selected, what is the probability that both will be green or yellow, if taken

i. with replacement

ii. without replacement



> - Correct or not: $\frac{^7C_2}{^{20}C_2}+\frac{^8C_2}{^{20}C_2}$
> - $\frac{^7C_1 \times ^7C_1}{^{20}C_1 \times ^{20}C_1}+\frac{^8C_1 \times ^8C_1}{^{20}C_1 \times ^{20}C_1}$
> - Without replacement: $\frac{^7C_1 \times ^6C_1}{^{20}C_1 \times ^{20}C_1}+\frac{^8C_1 \times ^7C_1}{^{20}C_1 \times ^{20}C_1}$

#### Box Problem #02

<div class="container">
<div class="col">
There are some balls in a box as below

| Color  | # Balls |
|--------|---------|
| White  | 3       |
| Black  | 6       |
| Red    | 7       |
| Green  | 5       |
| Yellow | 4       |
| Violet | 9       |
| Blue   | 8       |
</div>
<div class="col">
If three balls are drawn at random, what is the probability there are all red or green? 

> - $\frac{^7C_3}{^{42}C_3}+\frac{^5C_3}{^{42}C_3}$
> - 0.039
</div>
</div>

#### Box Problem #02

There are 9 red and 7 white balls in a box. 6 balls are picked randomly. What is the probability that 3 balls are red and 3 balls are white? 

Which one is the answer? 

<div class="container">
<div class="col">
- [ ] $\frac{^9C_3 \times ^7C_3}{^{16}C_6}$
- [ ] $\frac{^9C_3}{^{16}C_3} \times \frac{^7C_3}{^{16}C_3}$
- [ ] $\frac{^9C_3}{^{16}C_3} + \frac{^7C_3}{^{16}C_3}$
- [ ] $\frac{^9C_3}{^{16}C_6} \times \frac{^7C_3}{^{16}C_6}$

</div>
<div class="col">
> - Whatever we draw together will be in $r$ in $^nC_r$
> - Answer: $\frac{^9C_3 \times ^7C_3}{^{16}C_6}$=0.367 
</div>
</div>

### Conditional Probability

#### Conditional Formula

**Bayes Theorem**

$P(B|A)=\frac{P(A \cap B)}{P(A)}$

#### Conditional Problem # 01

Probability that it rains today is 40%, that tomorrow is 50%, and that on both days is 30%. If it rains today, what is the probability that it would rain tomorrow? 

> - $P (T) = 0.4, P(M) = 0.5, P(T\cap M)=0.3$
> - $P(M|T)=?$
> - $P(M|T)=\frac{P(T\cap M)}{P(T)}$
> - $\frac{0.3}{0.4}$

#### Conditional Problem # 02

In a college, there are 100 students, of whom 30 play football, 40 play cricket, and 20 play both. A student is selected randomly. If he plays cricket, what is the probability that he plays football? 

<div onclick="klikaj('con2')">Solution (<span style="color:red">click to see</span>)</div>
<div id="con2" style="visibility: hidden">
<div class="container">
<div class="col">
$P(F)=0.3$

$P(C)=0.4$

$P(F \cap C)=0.2$
</div>
<div class="col">
$P(F|C)=?$

> - $P(F|C)=\frac{P(F \cap C)}{P(C)}=$ 0.5  
</div>
</div>
</div>
<script>
function klikaj(i) {
    document.getElementById(i).style.visibility='visible';
}
</script>

#### Conditional Problem # 03

$S=$ {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}

If a number is picked randomly and known it an even number, What is the probability that it is more than 6? 

#### Conditional Problem # 04


In a city of 1 million inhabitants let there be 100 terrorists and 999,900 non-terrorists. The city has a facial recognition software. If the camera scans a terrorist, a bell will ring 99% of the time, and it will fail to ring 1% of the time. If the camera scans a non-terrorist, a bell will not ring 99% of the time, but it will ring 1% of the time.

If the bell rings, what is the probability that a terrorist is caught? 

About 99 of the 100 terrorists will trigger the alarm—and so will about 9,999 of the 999,900 non-terrorists. Therefore, about 10,098 people will trigger the alarm, among which about 99 will be terrorists. So, the probability that a person triggering the alarm actually is a terrorist, is only about 99 in 10,098, which is less than 1%



### Set Theoretic

#### Concept 

Formulae

<div class="container">
<div class="col">
<img src="img/stat/venn.png" width="480">
</div>
<div class="col">

Think Why are they so?

- $P(A\cap B)=P(A)\times P(B)$, if A & B are independent (prove from Bayes theorem) 

> - $P(A\cup B)=P(A)+P(B)-P(A\cap B)$
> - $P(A\cap \bar B)=P(A)-P(A\cap B)$
> - $P(A|\bar B)=\frac{P(A \cap \bar B)}{P(\bar B)}=?$
> - Also recall De Morgan's Laws


</div>
</div>

#### Set Problem # 01

The probability of Ronaldo scoring a goal is 0.4 and that of Messi 0.38. What is the probability that
<div class="container">
<div class="col">



i. Both Score
ii. Only Ronaldo scores
iii. Only Messi scores?
iv. At least one of them scores
v. Only one of them scores
vi. At most one of them scores

P(R) = 0.4 and P(M) = 0.38

</div>
<div class="col">

> - 1. $P(R \cap M)=P(R) \times P(M)$ (since independent)
> - 2. $P(R \cap M')=?$
> - 3. $P(R' \cap M)=?$
> - 4. $P(R \cup M)$
> - 5. $P(R \cap M')+P(R' \cap M)$
> - 6. Same to 5
</div>
</div>


#### Set Problem # 02

<div class="container">
<div class="col">
$S_1$={1,3,4,7,9,20}

$S_2$={12, 13, 14, 15, 16, 17, 18}

If a number is randomly chosen from each set, what is the probability that a prime number comes from $S_1$ and a multiple of 3 from $S_2$?
</div>
<div class="col">

<div onclick="klikaj('s3')">Solution (<span style="color:red">click to see</span>)</div>
<div id="s3" style="visibility: hidden">
Say, P = Prime from $S_1$

M = Multiple of 3 from $S_2$.

$P(P) = \frac 3 7$ and $P(M)=\frac 3 7$

What do we need to find out?

- [ ] $P(P \cup M)$
- [x] $P(P \cap M)$ 

> - Answer: $P(P \cap M) = P(P) \cdot P(M)$</div>
</div>
<script>
function klikaj(i) {
    document.getElementById(i).style.visibility='visible';
}
</script>

</div>

#### Set Problem # 03

Cup 01 contains 2 black, 3 red, and 1 pink ball. Cup 2 contains only 1 red ball. A cup is selected randomly. Next, a ball is randomly chosen from that randomly selected cup and placed into the other cup. A ball is then drawn randomly from that second cup. Find the probability that the last ball drawn is a pink one. 

> - 3 possible cases

1. > - 1st cup $\rightarrow$ pink ball $\rightarrow$ pink ball from 2nd cup

2. > - 1st cup $\rightarrow$ non-pink ball $\rightarrow$ pink ball from 2nd cup

3. > - 2nd cup $\rightarrow$ red ball $\rightarrow$ pink ball from 1st (other) cup


> - $(\frac 1 2 \times \frac 1 6 \times \frac 1 2 )+ (\frac 1 2 \times \frac 5 6 \times 0) + (\frac 1 2 \times 1 \times \frac 1 7)$

#### Set problem # 04

If a senility researcher discovered that in a population of healthy and diseased elderly people, 14% of the people had senile dementia, 63% had arterioplerotic cerebral degeneration, and 11% had both. What is the probability that a person not having arterioplerotic cerebral degeneration has senile dementia?



#### Set problem # 05

A candidate applied for three posts in an industry, having 3, 4, and 2 candidates respectively. What is the probability of getting a job by that candidate in at least one post? 

<div onclick="klikaj('set5')"><span>Answer</span></div>
<div id="set5" style="visibility: hidden">

$P(F)+P(S)+P(T)-P(F\cap S)-P(S\cap T)-P(F\cap T)+P(F\cap S \cap T$

</div>
<script>
function klikaj(i) {
    document.getElementById(i).style.visibility='visible';
}
</script>

#### Set problem # 06

A card is drawn from each of two well-shuffled pack of cards. Find the probability that at least one of them is an ace. 

<div onclick="klikaj('rad1')"><span>Solution(<span style="color:red">click to see</span>)</span></div>
<div id="rad1" style="visibility: hidden">

Let, 

A = Ace from 1st pack 

B = Ace from 2nd pack

$P(A \cup B)=?$

$P(A) = \frac{^4C_1}{^{52}C_1}$

$P(B) = P(A)$

$P(A\cap B) = P(A) \times P(B)$

> - $P(A \cup B)=P(A)+P(B) - P(A \cap B)$ 

</div>
<script>
function klikaj(i) {
    document.getElementById(i).style.visibility='visible';
}
</script>

#### Set problem # 07

$P(A\cap B)= \frac 1 3, P(A \cup B) = \frac 5 6, and \space P(A) = \frac 1 2$

Find $P(B)$ and $P(B^c)$

#### Set problem # 08

$P(A)= \frac 1 2, P(B) = \frac 1 5, \text{and} \space P(A|B) = \frac 3 8$

Find $P(A \cap B), P(B|A)$, and $P(A \cup B)$

<div onclick="klikaj('set8')"><span style="color:red"> See a clue</span></div>
<div id="set8" style="visibility: hidden">
$P(B|A) = \frac {P(A \cap B)}{P(A)}$

$P(A|B) = \frac {P(A \cap B)}{P(B)}$

$P(A \cap B) = P(A|B) \times P(B)$

$\therefore P(B|A) = \frac{P(A|B) \times P(B)}{P(A)}$

</div>
<script>
function klikaj(i) {
    document.getElementById(i).style.visibility='visible';
}
</script>

