# Уравнение эллиптической кривой. Приведение к каноническому виду матриц

Рассмотрим конечное поле $\mathbb{Z}_p$. Общее уравнение имеет вид $GF(p^n)$.

$\begin{equation}
y^2 + axy + by = x^3 + cx^2 + dx + e
\end{equation}\label{canonical}$ — эллиптическая кривая.

<ins>**Утв. 1:**</ins>
если $p > 3$, то уравнение $\ref{canonical}$ приводится к каноническому виду $y = A x + B + x^3$

<ins>**Доказательство:**</ins>
1. $\begin{equation*}
y^2 + axy + by = y^2 + y (ax + b) = y^2 + 2 y\frac{ax + b}{2} + \frac{(ax+b)^2}{4} - \frac{(ax+b)^2}{4} = (y + \frac{ax+b}{2})^2 - \frac{(ax+b)^2}{4} = (y + \frac{ax+b}{2})^2 + \alpha x^2 + \beta x + \gamma
\end{equation*}$

2. Замена $y + \frac{ax+b}{2} = J$, подставим в исходное уравнение: $J^2 = x^3 + \alpha_1 x^2 + \beta_1 x + \gamma_1$.

3. Замена $X = x - \frac{\alpha_1}{3}$. Уравнение принимает вид $J^2 = X^3 - X^2 \alpha_1 + X \frac{\alpha^2_1}{3} + \frac{\alpha^3_1}{27} + \alpha_1 x^2 + \ldots = X^3 + AX + B$