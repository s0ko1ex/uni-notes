# Вводная лекция
$\newcommand{\lege}[2]{
	\left( \frac{#1}{#2} \right)
}$

<ins>**Опр:**</ins>
Множество $G \ne \emptyset$ с бинарной операцией "$\circ$" называется **группой**, если:

1. $\forall a, b \in G: a \circ b \in G$

2. $\forall a, b, c \in G: (a \circ b) \circ c = a \circ (b \circ c)$

3. $\exists e \in G: \forall a \in G\ \ e \circ a = a \circ e = a$

4. $\forall a\ \exists b: a \circ b = b \circ a = e$

<ins>**Опр:**</ins>
**порядком элемента** $g \in G$ называют наименьшее из чисел $n \in \mathbb{N}$ со свойством $g^n = e$, если такие $n$ существуют; бесконечность в противном случае. *Обозначение:* $ord(g)$.

**Основное свойство порядка:**

$ord(g) = n \Leftrightarrow (g^n = e) \land (\forall p : p|n,\ g^{\frac{n}{p}} \ne e)$

<ins>**Опр:**</ins>
мультипликативная группа $G$ называется **циклической**, если в ней имеется такой элемент $a$, что каждый элемент $b \in G$ является степенью элемента $a$, то есть $\forall b \in G\ \exists k: b = a^k$. Этот элемент $a$ называется **образующим** группы $G$. Для циклической группы $G$ применяют *обозначение*: $G = \langle a \rangle$.

<ins>**Опр:**</ins>
число НОД$(a, b)$ называется **наибольшим общим делителем** двух чисел $a$ и $b$, если:

1. НОД$(a, b)|a$, НОД$(a, b)|b$

2. $\forall d: d|a, d|b \Rightarrow d \le$ НОД$(a, b)$

*Обозначение:* НОД$(a, b) = (a, b)$

**Критерий взаимной простоты:**
числа $a$ и $b$ взаимно просты $\Leftrightarrow\ \exists u, v \in \mathbb{Z}: au+bv=1$ 

<ins>**Утв:**</ins>
Пусть $G = \langle a \rangle$, $ord(a) = n$. $G = \langle a^k \rangle \Leftrightarrow (k, n) = 1$

<ins>**Опр:**</ins>
$\mathbb{Z}_n^* = \big \{ a \in \mathbb{Z}_n\ |\ НОД(a, n) = 1 \big \}$ — множество элементов кольца $\mathbb{Z}_n$, обратимых по модулю $n$.

$\mathbb{Z}_p^*$ — циклическая группа,
$\mathbb{Z}_p^* = \mathbb{Z} \setminus \{0\},\ |\mathbb{Z}_p^*| = p-1$.

<ins>**Опр:**</ins>
Число элементов в $\mathbb{Z}_n^*, n \in \mathbb{Z}$ называют **функцией Эйлера** и обозначают $\phi(n) = |\mathbb{Z}_n^*|$.

**Свойства функции Эйлера:**

1. $\phi(mn) = \phi(m)\phi(n)\ \ \forall m, n: (m, n) = 1$

2. $\phi(p) = p - 1\ \ \forall p$ простого

3. $\phi(p^n) = p^{n-1} (p - 1)\ \ \forall p$ простого

<ins>**Утв:**</ins>
Число образующих циклической группы $G$ порядка $n$ равно $\phi (n)$.

**Задача 1.**
Задана циклическая группа $G$. Доказать, что $y=x^k$ взаимнооднозначно на $G$.

**Решение.**

Очевидно, $e^k = e$. Значит, $y=x^k$ взаимнооднозначно тогда и только тогда, когда $\forall a \in G: a \ne e \Rightarrow a^k \ne e$.

ДОКАЗАТЬ

**Алгоритм нахождения обратного элемента.**

Пусть $a \in \mathbb{Z}_n^*$, найти $a^{-1}$.

Задаём начальные $r_0=n, r_1=a$.

Вычисляем $r_{i-1} = r_i q_i + r_{i+1}$ до тех пор, пока не получим $r_{n+2} = 0$, то есть: $r_n = r_{n+1} q_{n+1}$.

Обратный элемент существует, если $r_{n+1} = 1$. Иначе — решения нет.

Далее, по рекуррентной формуле:
$P_0 = 1,\ P_1 = q_1,\ P_i = q_i P_{i-1} + P_{i-2},\ i=\overline{2, k},\ P_k = n.$

Ответ: $a^{-1} = (-1)^k P_{k-1}$.

<ins>**Опр:**</ins>
**символом Лежандра** целого числа $a$ относительно простого числа $p$ называется число:

$\begin{equation*}
    \lege{a}{p} =
	\begin{cases}
	1 & a - вычет \\
	0 & a = 0 \\
	-1 & a - невычет
	\end{cases}
\end{equation*}$

<ins>**Опр:**</ins>
число $a \in \mathbb{Z}_m$ называется **квадратичным вычетом** (**невычетом**) по модулю $m$, если сравнение

$x^2 \equiv a \pmod m,\ m \in \mathbb{Z}, m > 1$

имеет (соответственно не имеет) решений.

**Свойства символа Лежандра:**

1. $\lege{a}{p} = a^{\frac{p-1}{2}} \pmod p$

3. $\lege{1}{p} = 1$

7. $\lege{2}{p} = (-1)^{\frac{p^2-1}{8}}$

4. $\lege{-1}{p} = (-1)^{\frac{p-1}{2}}$

6. $\lege{ab^2}{p} = \lege{a}{p}\ \forall a, b \in \mathbb{Z}$

2. Если $a \equiv b \pmod p$, то $\lege{a}{p} = \lege{b}{p}$

5. $\forall a_1, \ldots, a_k \in \mathbb{Z}\ \lege{a_1 \cdot \ldots \cdot a_k}{p} = \lege{a_1}{p} \cdot \ldots$

8. $\lege{p}{q} = \lege{q}{p} (-1)^{\frac{p-1}{2} \frac{q-1}{2}}$, если $(p, q) = 1$

**Решение сравнений второй степени**

$x^2 \equiv a \pmod p,\ \lege{a}{p} = 1$

**I случай.** $p=4m + 3$. Сравнение имеет решение $$x = \pm a^{m+1} \pmod p$$.

**II случай.** $p=8m + 5$.
Сравнение имеет решение $x \pm a^{m+1} 2 ^ {(2m+1)\sigma (a)} \pmod p$, где

$\begin{equation*}
\sigma(a) =
	\begin{cases}
		0, & 2^{2m+1} = 1 \\
		1, & 2^{2m+1} = -1
	\end{cases}
\end{equation*}$

**III случай.** $p = 2^m s + 1, m \ge 3, (s, 2) = 1$.

Найти невычет $b$ по модулю $p$. Вычислить:

$r \equiv a^{\frac{s+1}{2}} \pmod p, c \equiv b^{s} \pmod p, h \equiv r^2 a^{-1} \pmod p.$

Решение ищем в виде $x = \pm r c ^ {\sum_{k = 0}^{m-2} j_k \cdot 2^{k}}$. Индуктивно вычисляем $j_k = \frac{1 - \epsilon_k}{2}$:

1. $k=0$. $\epsilon_0 = h^{2^{m-2}} \pmod p$.

2. $k > 0$. $\epsilon_k = h^{2^{m-2-k}} \cdot c^{\sum_{t = 0}^{k-1} j_t 2^{m + t - k - 1}} \pmod p$

**Китайская теорема об остатках.**

$f(x) = 0 \pmod {M = m_1 \ldots m_k},\ (m_i, m_j) = 1$.

$\Rightarrow \big \{f(x) = 0 \pmod m_i, i = \overline{1, k}, l_i$ -- число решений.

Тогда исходное уравнение имеет $N=l_1 \cdot \ldots \cdot l_k$ решений, которые имеют вид:
$X = (x_1 M_1 R_1 + x_2 M_2 R_2 + \ldots + x_k M_k R_k) \pmod M,$
где $M_i = \frac{M}{m_i}, R_i = M_i^{-1} \pmod m_i,\ x_i$ — любое решение сравнения по модулю $m_i$.

**Построение конечного поля.**
В поле $p^n$ элементов, характеристика простая. Процесс называется **присоединением к полю корня неприводимого многочлена** над полем $\mathbb{Z}_p$.

$\mathbb{Z}_3 = P, GF(3^2) = ?$

Надо подобрать многочлен $x^2 + ax + b$, не имеющий корней $\{\pm 1, 0\}$.

$f(x) = x^2 + x + 2$ $\big ( f(x) = x^3 - x + 1 \big )$

**Теорема Безу:** если $f(x) \in F[x], a \in F$ и $f(a) = 0$, то $f(x) = (x-a)q(x), \deg q(x) = \deg f(x) - 1$.

$GF(p^n) = \frac{\mathbb{Z}_p\{\theta\}}{f(\theta)} = \big \{ \sum_{i=0}^{n-1} \alpha_i \theta^i = a(\theta) | \alpha_i \in \mathbb{Z}_p \big \}$, $\theta$ — корень $f(x)$.

$a(\theta) + b(\theta) = \sum_{i=0}^{n-1} \theta^i (\alpha_i + \beta_i), a(\theta) \cdot b(\theta) =$ остаток от деления на $f(\theta)$.

$GF(3^3) = \frac{\mathbb{Z}_3 \{\theta\}}{\theta^3 - \theta + 1}$


**Вычисление обратного элемента в поле.**

Поле состоит из элементов $\alpha_2 \theta ^2 + \alpha_1 + \theta + \alpha_0, \alpha \in \mathbb{Z}_3, f$ неприводим. $r_0 = f(\theta) = f, r_1 = a, a^{-1} = ?$


$\begin{equation*}
	\begin{cases}
		r_0 = r_1 q_1 + r_2 \\
		r_1 = r_2 q_2 + r_3 \\
		\ldots \\
		r_{k-2} = r_{k-1} q_{k-1} + \epsilon \\
		r_{k-1} = \epsilon (\epsilon^{-1} r_{k-1})
	\end{cases}
\end{equation*}$

По рекуррентой формуле: $P_i = q_i P_{i-1} + P_{i-2}, i = \overline{2, k}$

$a^{-1} (\theta) = a^{-1} = (-1) ^ {k+1} \epsilon P_{k-1}, P_0 = 1, P_1 = q_1$.