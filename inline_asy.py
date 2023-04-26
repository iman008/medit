import subprocess
import re


def asy_compiler(asy_code):
    with open('temp.asy', 'w') as f:
        f.write(asy_code)

    subprocess.run(['asy', '-f', 'svg', '-o', 'temp.svg', 'temp.asy'])

    with open('temp.svg', 'rb') as f:
        image_data = f.read()
    subprocess.run(['rm', 'temp.svg'])
    return image_data

def replace_asymptote_with_svg(text):
    asy_pattern = re.compile(r'\[asy\](.*?)\[/asy\]', re.DOTALL)
    matches = asy_pattern.findall(text)

    for block in matches:
        asycode=block.strip()
        svgcode=asy_compiler(asycode)
        svg_tag = f'<br>{svgcode.decode()}<br>'
        text = text.replace(f'[asy]{block}[/asy]', svg_tag)

    return text




