import cse5; size(300); defaultpen(linewidth(0.4)+fontsize(10));
real x=50, R=1.7, r=1.3;
pair L0=origin, L1=dir(x), L2=2*L1, L3=3*L1, L4=4*L1;
pair P0=bisectorpoint(L2,L4),P=L3+r*(P0-L3);
pair Q0=bisectorpoint(L0,L2),Q=L1+R*(Q0-L1);
path c1=CR(Q,R), c2=CR(P,r);
pair U=OP(c1,c2), V=IP(c1,c2);

draw(L0--L4); draw(c1^^c2^^Q--L1^^P--L3^^L2--V--L1--U, gray+0.4);
dot("$B$",L1,dir(150));
dot("$M$",L2,dir(150));
dot("$A$",L3,dir(150));
dot("$P$",P,dir(70));
dot("$Q$",Q,dir(70));
dot("$\mathcal{U}$",U,dir(55));
dot("$V$",V,dir(75));

MA("",U,V,L1,0.4,1,gray); MA("",U,V,L1,0.36,1,gray);
MA("",U,L1,L2,0.4,1,gray); MA("",U,L1,L2,0.36,1,gray);
MA("",L0,L1,Q,0.2,gray); MA("",P,L3,L4,0.2,gray);
real d=0.11;
dot(L1+(0,-0.11),linewidth(1.5));
dot(L3+(d*dir(10)),linewidth(1.5));