import re
import codecs
from inline_asy import asy_compiler, replace_asymptote_with_svg
from flask import Flask, request, render_template_string, render_template


app = Flask(__name__)

@app.route('/')
def index():
    # Return the index HTML template
    return render_template('index.html')


def convert_to_html(text):
    html = f'<html><body>{text}</body></html>'
    return html

@app.route('/compile', methods=['POST'])
def compile():
    input_text = request.form['input']

    output_text = replace_asymptote_with_svg(input_text)

    html = convert_to_html(output_text)

    return html

if __name__ == '__main__':
    app.run(debug=True)