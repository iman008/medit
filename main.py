import re
import codecs
from inline_asy import asy_compiler
markdown = '''
# Example

Here's an Asymptote code block:

[asy]
 /* Geogebra to Asymptote conversion, documentation at artofproblemsolving.com/Wiki go to User:Azjps/geogebra */
import graph; size(4.488487423480265cm); 
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */ 
pen dotstyle = black; /* point style */ 
real xmin = -1.7719903605383729, xmax = 2.716497062941892, ymin = -1.5700850434727063, ymax = 0.6659279456082304;  /* image dimensions */
pen zzttqq = rgb(0.6,0.2,0.); 

draw((0.2950881433923038,0.467397565098752)--(-0.2953913078286413,-1.0394753201598927)--(1.3495157348582774,-1.00880106295361)--cycle, linewidth(2.) + zzttqq); 
 /* draw figures */
draw((0.2950881433923038,0.467397565098752)--(-0.2953913078286413,-1.0394753201598927), linewidth(2.) + zzttqq); 
draw((-0.2953913078286413,-1.0394753201598927)--(1.3495157348582774,-1.00880106295361), linewidth(2.) + zzttqq); 
draw((1.3495157348582774,-1.00880106295361)--(0.2950881433923038,0.467397565098752), linewidth(2.) + zzttqq); 
 /* dots and labels */
dot((0.2950881433923038,0.467397565098752),dotstyle); 
label("$B$", (0.30489532379815587,0.49582634398489533), NE * labelscalefactor); 
dot((-0.2953913078286413,-1.0394753201598927),dotstyle); 
label("$C$", (-0.28497313344405506,-1.0131394768672706), NE * labelscalefactor); 
dot((1.3495157348582774,-1.00880106295361),dotstyle); 
label("$D$", (1.3611713983946732,-0.9802165862304959), NE * labelscalefactor); 
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle); 
 /* end of picture */
[/asy]

And here's another one:


'''


asy_pattern = re.compile(r'\[asy\](.*?)\[/asy\]', re.DOTALL)
matches = asy_pattern.findall(markdown)

for x in matches:
    asycode=x.strip()
    svgcode=asy_compiler(asycode)
    print(svgcode)