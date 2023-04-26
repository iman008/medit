import re
import codecs
from inline_asy import asy_compiler, replace_asymptote_with_svg
from flask import Flask, request, render_template_string


app = Flask(__name__)

@app.route('/')
def index():
    # Return the index HTML template
    return render_template_string('''
        <html>
        <head>
          <meta charset="UTF-8">
          <title>Asymptote Editor</title>
        </head>
        <body>
          <h1>Asymptote Editor</h1>
          <table>
            <tr>
              <td>
                <h2>Input</h2>
                <textarea id="input" rows="10" style="width: 95%;"></textarea>
                <button onclick="compile()">Compile</button>
              </td>
              <td>
                <h2>Output</h2>
                <iframe id="output" width="640" height="480"></iframe>
              </td>
            </tr>
          </table>
          <script>
            function compile() {
              // Get the text from the input textarea
              var input_text = document.getElementById('input').value;

              // Call the server to process the text and return the output HTML
              var xhr = new XMLHttpRequest();
              xhr.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                  // Display the output HTML in the output iframe
                  document.getElementById('output').srcdoc = this.responseText;
                }
              };
              xhr.open('POST', '/compile', true);
              xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
              xhr.send('input=' + encodeURIComponent(input_text));
            }
          </script>
        </body>
        </html>
    ''')


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