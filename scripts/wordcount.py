from pyparsing import WordEnd


import sys

file = sys.argv[1]

def wordcount(file):
    import json
    with open(file, encoding='utf-8') as json_file:
        data = json.load(json_file)
    char_count = 0
    for each in data['cells']:
        cell_type = each['cell_type']
        if cell_type == "markdown":
            content = each['source']
            for line in content:
                temp = line.replace("\n", "").replace(" ", "")  # remove all spaces and newlines from a string
                char_count = char_count + len(temp)
    print('Anzahl an Zeichen: ' + str(char_count) + ' (exkl. Leerzeichen)')

wordcount(file=file)
