/* Geogebra to Asymptote conversion, documentation at artofproblemsolving.com/Wiki go to User:Azjps/geogebra */
import graph; size(12cm);
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(9); defaultpen(dps); /* default pen style */ real xmin = -2.5942522631264997, xmax = 5.648221774640172, ymin = -2.668654923074809, ymax = 1.1620767384440491; /* image dimensions */
pen aqaqaq = rgb(0.6274509803921569,0.6274509803921569,0.6274509803921569); pen ffxfqq = rgb(1.,0.4980392156862745,0.);
pair A = (-0.5587830438367267,0.8293138790111756), B = (-0.7685233656004451,-0.6398217224556888), C = (0.7773841612562274,-0.6290261249168844), D = (-0.5286229339894898,-0.8488567568561515), F = (-0.894270595608767,0.4475266492953699), Y_A = (-0.6230438174066925,0.37919637449150506), X_A = (-0.0033285406048299544,0.22307124759686084), Y_C = (0.4822594291535299,-0.30691658553182344), X_C = (-0.13039710008551353,-0.6353654699168018), Y_B = (-0.5879373983130488,-0.6385606292854171), X_B = (-0.7077158579795547,-0.21389277597988057), I = (-0.24566274768420815,-0.18309664558369676), P = (-0.4491607265496593,-0.33476716813773666), T_A = (-0.5023057016858365,-2.313201770617303);

draw(A--B--C--cycle, linewidth(0.8));
draw(D--(0.9995621960992881,-0.029587431946155873)--F--cycle, linewidth(0.8));
/* draw figures */
draw(circle((0.,0.), 1.), linewidth(0.8));
draw(A--B, linewidth(0.4));
draw(B--C, linewidth(0.4));
draw(C--A, linewidth(0.4));
draw(circle(I, 0.45306271638812134), linewidth(0.8));
draw(D--(0.9995621960992881,-0.029587431946155873), linewidth(0.4));
draw((0.9995621960992881,-0.029587431946155873)--F, linewidth(0.4));
draw(F--D, linewidth(0.4));
draw(circle((-0.17562989971092718,-0.40953355570007793), 0.5543952480989248), linewidth(0.8) + linetype("4 4") + aqaqaq);
draw(circle((-0.0630361179796793,0.24659463678711727), 0.7454759990450438), linewidth(0.8) + linetype("4 4") + aqaqaq);
draw(D--I, linewidth(1.2));
draw(A--I, linewidth(1.2));
draw(B--I, linewidth(1.2));
draw((0.9995621960992881,-0.029587431946155873)--I, linewidth(1.2));
draw(C--I, linewidth(1.2));
draw(circle((-0.249114095863816,0.5554583360540302), 0.41339051240564556), linewidth(1.2) + ffxfqq);
draw(circle((-0.3588146883999144,-0.6874490362690445), 0.23428037163905796), linewidth(1.2) + ffxfqq);
draw(A--(-0.3941383007287072,-0.9190511410681597), linewidth(1.2) + red);
draw((-0.24766276556698932,0.9688463007885786)--D, linewidth(1.2) + red);
draw(A--T_A, linewidth(1.2) + red);
draw((-0.24766276556698932,0.9688463007885786)--T_A, linewidth(1.2) + red);
/* dots and labels */
dot(A,linewidth(3.pt));
label("$A$", (-0.5410194831093541,0.856799922230464), NE * labelscalefactor);
dot(B,linewidth(3.pt));
label("$B$", (-0.7478199069959731,-0.6104983234412839), NE * labelscalefactor);
dot(C,linewidth(3.pt));
label("$C$", (0.7982594525373212,-0.6006506842085876), NE * labelscalefactor);
dot(D,linewidth(3.pt));
label("$D$", (-0.6345720558199675,-0.9059275004221727), NE * labelscalefactor);
dot((0.9995621960992881,-0.029587431946155873),linewidth(3.pt));
label("$E$", (1.0198313352729844,5.530898588638973e-5), NE * labelscalefactor);
dot(F,linewidth(3.pt));
label("$F$", (-0.875839217021023,0.4776658117716567), NE * labelscalefactor);
dot(Y_A,linewidth(3.pt));
label("$Y_A$", (-0.7330484481469288,0.4579705333062641), NE * labelscalefactor);
dot(X_A,linewidth(3.pt));
label("$X_A$", (0.11384852586493933,0.24624628980329374), NE * labelscalefactor);
dot(Y_C,linewidth(3.pt));
label("$Y_C$", (0.5028302755564369,-0.2756785895296099), NE * labelscalefactor);
dot(X_C,linewidth(3.pt));
label("$X_C$", (-0.06340898032359123,-0.7582129119317282), NE * labelscalefactor);
dot(Y_B,linewidth(3.pt));
label("$Y_B$", (-0.7035055304488405,-0.580955405743195), NE * labelscalefactor);
dot(X_B,linewidth(3.pt));
label("$X_B$", (-0.6887340715997963,-0.18212601681899507), NE * labelscalefactor);
dot(I,linewidth(3.pt));
label("$I$", (-0.22589502766307756,-0.15258309912090617), NE * labelscalefactor);
dot((-0.3941383007287072,-0.9190511410681597),linewidth(3.pt));
label("$D'$", (-0.3736096161535197,-0.8911560415731282), NE * labelscalefactor);
dot((-0.24766276556698932,0.9688463007885786),linewidth(3.pt));
label("$A'$", (-0.22589502766307756,0.9995906911045603), NE * labelscalefactor);
dot(P,linewidth(3.pt));
label("$P$", (-0.5016289261785696,-0.28552622876230616), NE * labelscalefactor);
dot(T_A,linewidth(3.pt));
label("$T_A$", (-0.48193364771317726,-2.284596992999654), NE * labelscalefactor);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */