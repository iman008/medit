import subprocess


def asy_compiler(asy_code):
    with open('temp.asy', 'w') as f:
        f.write(asy_code)

    subprocess.run(['asy', '-f', 'svg', 'temp.asy'], check=True)

    with open('temp.svg', 'r') as f:
        svg_code = f.read()

    return svg_code

