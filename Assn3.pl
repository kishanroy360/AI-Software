[string(latex(\\bold{20.3~Example}{~~~~To~evaluate~~}
\\int_{-\\infty}^{\\infty}
\\frac{\\cos{x}}{x^2+x+1}{dx}
))],
[string(latex(\\bold{Solution}{~~Integrate~f(z)~=~}
\\frac{e^{iz}}{z^2+z+1}{~round~}{\\gamma~=~}{\\Gamma(0;R),~}{as~in~Fig.~20.1,}))],

[string(latex({with~R~>~1.~}{The~real~part~of~f(z),~}{When~z~is~the~real~variable~x,}{~is~the~required}))],
[string(latex({integrand.~}{The~function~f~is~holomorphic~inside~and~on~\\gamma~except~for~a~simple}))],
[string(latex({pole~at~z=w=e^{\\frac{2{\\pi}i}{3}}}{~.~By~Cauchy's~residue~theorem~and~18.7(2),}))],

[string(latex(
\\int_{-R}^{R}~f(x)dx~+~\\int_{\\Gamma_R}~f(z)~dz ~=~ 2\\pi{i}res \\{ f(z);\\omega \\} ~==~ 2\\pi{i}\\frac{e^{i\\omega}}{2\\omega+1} ~=~ \\frac{2\\pi}{\\sqrt{3}}e^{i({-\\frac{1}{2} ~+~ \\frac{1}{2} \\sqrt{3}i })}.
))],

[string(latex(
\\text{As, in 19.7,} ))],

[string(latex(
\\lvert{\\int_{\\Gamma_R}~f(z)~dz}\\rvert \\leqslant \\int_{0}^{\\pi}\\frac{Re^{-R\\sin{\\theta}}}{\\lvert{R^{2}e^{2i\\theta} ~+~ Re^{i\\theta} ~+~ 1}\\rvert}d\\theta
\\leqslant \\int_{0}^{\\pi} \\frac{R}{\\lvert{R^2 ~+~ R ~+~ 1}\\rvert}d\\theta ~=~ \\omicron{(R^{-1})}. ))],

[string(latex(
\\text{Hence, letting } R ~ \\bold{\\to} ~ \\infty ~ \\text{and equating real and imaginary parts in the equation above,  we obtain} ))],

[string(latex({~~~~~~~~~~~~~~~~~~~~~~~~}
\\int_{-\\infty}^\\infty ~ \\frac{\\cos{x}}{x^2 + x + 1}dx = \\frac{2\\pi}{3}{e^{-\\frac{2}{3}\\sqrt{3}}}\\cos{\\frac{1}{2}}))]
